# RASA-Chatbot
A RASA chatbot that's trained on an SQL data and answers user's queries in conversational format 

Follow the below steps for the proper working of the chatbot:
- pip install rasa

- run rasa

👆this is to run the rasa server on the local host
Note: If you have multiple terminals open for the same directory, you might face errors in running the server 
```
rasa train
```
👆this will train the model on the updated configurations

```
run rasa actions
```

👆this will run the actions server on a port. 
Note: Make sure the port of actions server isn't conflicting with any other task

If there's already a server running, make sure to terminate it first or just run

```
rasa shell
```
Run your chatbot in the Command Prompt

