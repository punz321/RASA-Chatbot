from typing import Any, Text, Dict, List
from rasa_sdk import Action, Tracker
from rasa_sdk.executor import CollectingDispatcher
import mysql.connector
from mysql.connector import Error
import os
from dotenv import load_dotenv

load_dotenv()  # Load environment variables

class ActionHelloWorld(Action):

    def name(self) -> Text:
        return "action_hello_world"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:
        dispatcher.utter_message(text="Hello World!")
        return []

class ActionQueryOrders(Action):

    def name(self) -> Text:
        return "action_query_orders"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        date = next(tracker.get_latest_entity_values("date"), None)
        if not date:
            dispatcher.utter_message(text="I did not understand the date. Please try again.")
            return []

        try:
            
            connection = mysql.connector.connect(
                host=os.getenv('HOST'),
                database=os.getenv('NAME'),
                user=os.getenv('USER'),
                password=os.getenv('PASSWORD')
            )

            if connection.is_connected():
                cursor = connection.cursor()

                if len(date) == 4 and date.isdigit():  # Year
                    query = "SELECT COUNT(*) FROM mytable WHERE YEAR(OrderDate) = %s"
                    params = (date,)
                elif len(date) == 7 and date[4] == '-' and date[:4].isdigit() and date[5:].isdigit():  # Year-Month
                    year, month = date.split('-')
                    query = "SELECT COUNT(*) FROM mytable WHERE YEAR(OrderDate) = %s AND MONTH(OrderDate) = %s"
                    params = (year, month)
                else:  # Full date
                    query = "SELECT COUNT(*) FROM mytable WHERE OrderDate = %s"
                    params = (date,)

                cursor.execute(query, params)
                result = cursor.fetchone()

                if result:
                    count = result[0]
                    dispatcher.utter_message(text=f"There were {count} orders on {date}.")
                else:
                    dispatcher.utter_message(text=f"No orders found for {date}.")

                cursor.close()
                connection.close()

        except Error as e:
            dispatcher.utter_message(text=f"Error connecting to MySQL database: {e}")

        return []

class ActionListCountriesByProfit(Action):

    def name(self) -> Text:
        return "action_list_countries_by_profit"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        try:
            connection = mysql.connector.connect(
                host=os.getenv('HOST'),
                database=os.getenv('NAME'),
                user=os.getenv('USER'),
                password=os.getenv('PASSWORD')
            )

            if connection.is_connected():
                cursor = connection.cursor()
                query = """
                SELECT DISTINCT Country FROM mytable ORDER BY TotalProfit DESC
                """
                cursor.execute(query)
                results = cursor.fetchall()
                
                if results:
                    countries = [row[0] for row in results]
                    countries_by_profit = ', '.join(countries)
                    dispatcher.utter_message(text=f"Here are the countries sorted by profit:\n{countries_by_profit}")
                else:
                    dispatcher.utter_message(text="No countries found.")

                cursor.close()
                connection.close()

        except Error as e:
            dispatcher.utter_message(text=f"Error connecting to MySQL database: {e}")

        return []
class ActionAskTotalRevenueCountry(Action):

    def name(self) -> Text:
        return "action_ask_total_revenue_country"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        # Debug: Print all events to understand what is being received
        for event in tracker.events:
            print(event)

        country = next(tracker.get_latest_entity_values("country"), None)

        # Debug: Print the extracted country
        print(f"Extracted country: {country}")

        if not country:
            dispatcher.utter_message(text="I did not understand the country. Please try again.")
            return []

        try:
            connection = mysql.connector.connect(
                host=os.getenv('HOST'),
                database=os.getenv('NAME'),
                user=os.getenv('USER'),
                password=os.getenv('PASSWORD')
            )

            if connection.is_connected():
                cursor = connection.cursor()
                query = "SELECT SUM(TotalRevenue) FROM mytable WHERE Country = %s"
                cursor.execute(query, (country,))
                result = cursor.fetchone()

                if result:
                    total_revenue = result[0]
                    dispatcher.utter_message(text=f"The total revenue for {country} is {total_revenue}")
                else:
                    dispatcher.utter_message(text=f"No revenue data found for {country}")

                cursor.close()
                connection.close()

        except Error as e:
            dispatcher.utter_message(text=f"Error connecting to MySQL database: {e}")

        return []


class ActionAskMostPopularItem(Action):

    def name(self) -> Text:
        return "action_ask_most_popular_item"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        try:
            connection = mysql.connector.connect(
                host=os.getenv('HOST'),
                database=os.getenv('NAME'),
                user=os.getenv('USER'),
                password=os.getenv('PASSWORD')
            )

            if connection.is_connected():
                cursor = connection.cursor()
                query = "SELECT ItemType FROM mytable GROUP BY ItemType ORDER BY SUM(UnitsSold) DESC LIMIT 1"
                cursor.execute(query)
                result = cursor.fetchone()

                if result:
                    item_type = result[0]
                    dispatcher.utter_message(text=f"The most popular item type is {item_type}")
                else:
                    dispatcher.utter_message(text="No item type data found.")

                cursor.close()
                connection.close()

        except Error as e:
            dispatcher.utter_message(text=f"Error connecting to MySQL database: {e}")

        return []

class ActionAskTotalUnitsSoldRegion(Action):

    def name(self) -> Text:
        return "action_ask_total_units_sold_region"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        region = next(tracker.get_latest_entity_values("region"), None)

        if not region:
            dispatcher.utter_message(text="""I did not understand the region. Please try again with the following regions:
                                    Sub-Saharan Africa
                                    Middle East and North Africa
                                    Central America and the Caribbean
                                    Australia and Oceania
                                    Europe
                                    Asia.""")
            return []

        try:
            connection = mysql.connector.connect(
                host=os.getenv('HOST'),
                database=os.getenv('NAME'),
                user=os.getenv('USER'),
                password=os.getenv('PASSWORD')
            )

            if connection.is_connected():
                cursor = connection.cursor()
                query = """
                SELECT SUM(UnitsSold) FROM mytable WHERE Region = %s
                """
                cursor.execute(query, (region,))
                result = cursor.fetchone()

                if result:
                    total_units_sold = result[0]
                    dispatcher.utter_message(text=f"The total number of units sold in {region} is {total_units_sold}")
                else:
                    dispatcher.utter_message(text=f"No units sold data found for {region}")

                cursor.close()
                connection.close()

        except Error as e:
            dispatcher.utter_message(text=f"Error connecting to MySQL database: {e}")

        return []

class ActionAskHighestProfitOrder(Action):

    def name(self) -> Text:
        return "action_ask_highest_profit_order"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        try:
            connection = mysql.connector.connect(
                host=os.getenv('HOST'),
                database=os.getenv('NAME'),
                user=os.getenv('USER'),
                password=os.getenv('PASSWORD')
            )

            if connection.is_connected():
                cursor = connection.cursor()
                query = """
                SELECT ItemType, TotalProfit FROM mytable ORDER BY TotalProfit DESC LIMIT 1
                """
                cursor.execute(query)
                result = cursor.fetchone()

                if result:
                    order_details = result
                    dispatcher.utter_message(text=f"The order with the highest profit is {order_details}")
                else:
                    dispatcher.utter_message(text="No orders found.")

                cursor.close()
                connection.close()

        except Error as e:
            dispatcher.utter_message(text=f"Error connecting to MySQL database: {e}")

        return []

class ActionAskLowestCostOrder(Action):

    def name(self) -> Text:
        return "action_ask_lowest_cost_order"

    def run(self, dispatcher: CollectingDispatcher,
            tracker: Tracker,
            domain: Dict[Text, Any]) -> List[Dict[Text, Any]]:

        try:
            connection = mysql.connector.connect(
                host=os.getenv('HOST'),
                database=os.getenv('NAME'),
                user=os.getenv('USER'),
                password=os.getenv('PASSWORD')
            )

            if connection.is_connected():
                cursor = connection.cursor()
                query = """
                SELECT ItemType, OrderId, TotalCost FROM mytable ORDER BY TotalCost ASC LIMIT 1
                """
                cursor.execute(query)
                result = cursor.fetchone()

                if result:
                    order_details = result
                    dispatcher.utter_message(text=f"The order with the lowest cost is {order_details}")
                else:
                    dispatcher.utter_message(text="No orders found.")

                cursor.close()
                connection.close()

        except Error as e:
            dispatcher.utter_message(text=f"Error connecting to MySQL database: {e}")

        return []

