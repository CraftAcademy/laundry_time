Feature: user should be able to book time in laundry room
  As a user
  In order to get my washing done
  I would like to be able to book a laundry time

  Background:

    Given there is a laundry room
    And there is a user logged in
    And user visits the booking page

  Scenario: user can book a laundry time
    Given I see the text "Book a LaundryTime"
    Then show me the page
    And I see the text "08.00"
    And I click on "Book"
    Then I should see the text "Booked"