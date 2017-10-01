Feature: user should be able to unbook time in laundry room
  As a user
  In order to cancel my laundry time
  I would like to be able to unbook a laundry time

  Background:
    Given time is frozen at 2017-09-01
    And there is a laundry room
    And there is a user logged in

  Scenario: User can unbook a laundry time
    Given user visits the booking page
    And I click on calendar link "01 Sep 08:00"
    And I click on "Unbook"
    Then I should see the text "You have successfully canceled your booking."
    Then I click on calendar link "01 Sep 08:00"
    And I should see the text "You have a booking 01 Sep 08:00. Smell the rainbows!"
