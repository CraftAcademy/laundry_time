@time
Feature: User can see their laundry time
  As a user
  In order to clean my laundry
  I wold like to be able to see when I have booked time

  Background:
    Given time is frozen at 2017-09-01
    And there is a laundry room
    And there is a user logged in

  Scenario: User sees his laundry time
    Given user visits the booking page
    Then I click on "Book" for first "01 Sep 08:00"
    And I see the text "01/09/2017 08:00"