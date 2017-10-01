Feature: User can go to landing page
  As a user
  In order to book laundry time
  I would like to see a calendar

  Background:
    Given There is a user with email "unicorn@test.com" and password "password" in our database
    And I am logged in as that user
    And I navigate to the index page

  Scenario: User can navigate to calendar page
    Given there is a user logged in
    And I click on "Calendar"
    Then I should be on the calendar page
