Feature: User can go to landing page
  As a user
  In order to book laundry time
  I would like to see a calendar

  Scenario: User can navigate to calendar page
    Given I navigate to the index page
    And I click on "Calendar"
    Then I should be on the calendar page
