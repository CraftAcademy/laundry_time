@time
Feature: user should be able to book time in laundry room
  As a user
  In order to get my washing done
  I would like to be able to book a laundry time

  Background:
    Given time is frozen at 2017-09-01
    And there is a laundry room
    And there is a user logged in

  Scenario: User can book a laundry time
    Given user visits the booking page
    And I click on "Book" for first "01 Sep 08:00"
    Then I should see the text "You have a booking 01 Sep 08:00. Great stuff"

  Scenario: User tries to book a booked slot
    Given laundry is booked at "01 Sep 08:00"
    And user visits the booking page
    Given I click on "Book" for first "01 Sep 08:00"
    Then I should see the text "The laundry room is fully booked"
