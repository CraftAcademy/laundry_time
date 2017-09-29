Feature: A user can log in to to the site
  As a user
  In order to be able to do laundry
  I would like to be able to log in to LaundryTime

  Background:
    Given There is a user with email "unicorn@test.com" and password "password" in our database
    And I navigate to the index page

  Scenario: User provides valid credentials
    Given I click on "Sign in"
    Then I fill in "Email" with "unicorn@test.com"
    And I fill in "Password" with "password"
    When I click on "Log in"
    Then I should see the text "Signed in successfully."

  Scenario: User provides wrong email
    Given I click on "Sign in"
    Then I fill in "Email" with "EmbarrassedUnicorn@test.com"
    And I fill in "Password" with "password"
    When I click on "Log in"
    Then I should see the text "Invalid Email or password."

  Scenario: User provides wrong password
    Given I click on "Sign in"
    Then I fill in "Email" with "unicorn@test.com"
    And I fill in "Password" with "PassWord"
    When I click on "Log in"
    Then I should see the text "Invalid Email or password."


