# OOP_DB

## Run Locally

Clone the project

```bash
  git clone git@github.com:mifig/OOP_DB_Challenge.git
```

Go to the project directory

```bash
  cd OOP_DB_Challenge/challenge
```

Open on vs-code

```bash
  code .
```

Run the program
```bash
  ruby lib/app.rb 
```

Create DB

```bash
  rake db:create
```

## Overview
This document provides instructions for a programming exercise. It outlines the steps required to complete the exercise and build an application with specific functionalities. Follow the instructions below to complete the exercise successfully.

## Exercise Steps
### Database Setup
Create a migration file to set up the "Games" table in the database.\
The "Games" table should have three columns: name, genre, and address.

### Initial Data
Populate the database with five game records using the Faker library.

### Application Actions
The application should support the following actions:\
  Show all games: Display a list of all games in the database.\
  Show a game: Show details of a specific game.\
  Add a new game: Allow users to add a new game to the database.\
  Update a game: Enable users to update the information of an existing game.\
  Destroy a game: Allow users to delete a game from the database.\
  Finish program: Terminate the program execution.

### Action 1: Show all games
Add the necessary action to your config/router.rb file.\
Implement the index function in your controller.\
Create a view function to display all games to the user.

### Action 2: Show a game
Follow the same logic as before: router -> controller -> view. 🔄

### Action 3: Add a new game
Repeat the pattern: router -> controller -> view. 🔃

### Action 4: Update a game
Same pattern: router -> controller -> view. 🔁

### Action 5: Destroy a game
You already know how to do it. 🤓👩🏻‍💻

### New Feature: Mark a game as played
Modify the database by adding a new column named played to the "Games" table.\
Set the default value of the played column to false.\
Once again, follow the router -> controller -> view pattern.
