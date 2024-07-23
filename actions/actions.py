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
