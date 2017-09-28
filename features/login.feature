Feature: As a user
  In order to be able to do laundry
  I would like to be able to log in to LaundryTime

  Background:
    Given There is a user with email "unicorn@test" and password "password" in our database

  Scenario: User provides valid credentials
    Given I navigate to the index page
    And I click on "Log In"
    And I fill in "Email" with "unicorn@test.com"
    And I fill in "Password" with "password"
    And I click on "Sign up"
    And I should see the text "Welcome! You have logged in successfully."

  Scenario: User provides wrong email
    Given I click on "Log in"
    And I fill in "Email" with "Unicorn@test.com"
    And I fill in "Password" with "password"
    And I click on "Sign up"
    And I should see the text "You made a mistake"

  Scenario: User provides wrong password
    Given I click on "Log in"
    And I fill in "Email" with "unicorn@test.com"
    And I fill in "Password" with "PassWord"
    And I click on "Sign up"
    And I should see the text "You made a mistake"
    

