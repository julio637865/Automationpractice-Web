Feature: Login

    Scenario: Valid login
        Given the user to access the login page
        When he fills in valid login and password
        | email_login    | julioc.9765@gmail.com |
        | password_login | @Ju95821488           |
        Then he is able to log in to the platform

    Scenario: Login with invalid email and password
        Given the user to access the login page
        When he fills in invalid email and password
        | email_login    | julioteste@gmail.com. |
        | password_login | @Ju958214888as8       |
        Then he cannot login

    Scenario: login with invalid password
        Given the user to access the login page
        When he fills in invalid password
        | email_login    | julioc.9755@gmail.com |
        | password_login | @Ju95821488..         |
        Then he cannot login

    Scenario: login with invalid email
        Given the user to access the login page
        When he fills an invalid email
        | email_login    | julio42@gmail.com. |
        | password_login | @Ju95821488        |
        Then he cannot login