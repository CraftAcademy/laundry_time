Feature: As a user
  In order to keep my information secure
  I should be able to log out of my account

  Background:
    Given There is a user with email "unicorn@test" and password "password" in our database
    And I navigate to the index page
    And I click on "Log In"
    And I fill in "Email" with "unicorn@test.com"
    And I fill in "Password" with "password"
    And I click on "Sign up"
    And I should see the text "Welcome! You have logged in successfully."

  Scenario: user can log out
    Given I am on the laundry room page
    Given I click on "Sign out"
    Then I should see the text "You have logged out successfully."
    And I should be on the index page