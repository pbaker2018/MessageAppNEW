# Message App

## What does it do?
This allows a user to type a message, press 'submit' and then see the message displayed on the homepage, along with a timestamp.

Additionally, the user can:
- submit numerous messages
- view all submitted messages on the homepage, newest at the top
- only see the first 20 characters of each message on the homepage
- click on a message to view the whole message
- edit/update the selected message
- delete the selected message.

All messages are stored in a database


## Youtube link to screen recording
The following link shows my MessageApp in action
```
https://youtu.be/XFgy929iCsU
```

## Link to my app hosted on Heroku
Here, you can use the app yourself to post messages!

Try it, but please keep your posts clean! ;)
```
https://thawing-ocean-12763.herokuapp.com/
```


## How to use it

To install:
```
$ git clone https://github.com/pbaker2018/MessageAppNEW
$ cd MessageAppNEW
$ bundle install
$ rackup
```

To load the database:

- Connect to psql
- Create the database using the psql command 'CREATE DATABASE messaging_development;'
- Connect to the database using the psql command \c message_app;
- Run the query we have saved in the file 01_create_messages_table.sql

Then head to the assigned port (default: 9292) to start sending messages!

## User instructions
Type your message into the large text-box field and your name in the 'name' field, then hit 'submit'. Your message will appear along with the timestamp on that same page! Then click on any of the buttons or links to navigate your way around the app.


## ORM
ActiveRecord


## DSL
Sinatra


## Testing
RSPEC and Capybara.
All tests pass with 100% coverage
