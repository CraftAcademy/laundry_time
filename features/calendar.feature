Feature: User can go to landing page
  As a user
  In order to book laundry time
  I would to see a calendar

  Scenario:
    Given I navigate to the index page
    And I click a link "Calendar"
    Then I should be on the calendar page
