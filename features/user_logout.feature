Feature: As a user
  In order to keep my information secure
  I should be able to log out of my account

  Background:
    Given There is a user with email "unicorn@test" and password "password" in our database
    And I am logged in as that user

  Scenario: user can log out
    Given I am on the laundry room page
    Given I click on "Sign out"
    Then I should see the text "You have logged out successfully."
    And I should be on the index page