Feature: user should be able to book time in laundry room
  As a user
  In order to get my washing done
  I would like to be able to book a laundry time

  Background:
    Given time is frozen at 2017-09-01
    And there is a laundry room
    And there is a user logged in
    And user visits the booking page

  Scenario: User can book a laundry time
      #Given I see the text "Book a LaundryTime"
    Given I click on "Book" for first slot
    Then show me the page
    #And I click on "Book" for
    #Then I should see the text "Booked"