# [LaundryTime](https://laundrytime.herokuapp.com/)
August 2017 Craft Academy Mid Course Project. You can use the deployed app [here](https://laundrytime.herokuapp.com/).

[![Coverage Status](https://coveralls.io/repos/github/CraftAcademy/laundry_time/badge.svg?branch=develop)](https://coveralls.io/github/CraftAcademy/laundry_time?branch=develop)

We created an app which allows users to sign up and book a laundry room. You create an account with an email and password. After logging in you will be allowed to book a time slot. You will also see your email, just to be sure who you are logged in as.

In the calendar you will see the next 30 time slots. Available times will be shown as green links, unavailable times will be shown as red text.

When you press "Book" you will see a success-flash, and your booked time will show up in a list for you bookings, sorted by date. Only active bookings will be listed.
You can only have two active bookings at a time. User can also unbook their slots.

## Getting Started

Under the repository name, click Clone or download.
Copy the clone URL for the repository.
Open Terminal.
Change the current working directory to the location where you want the cloned directory to be made.
git clone https://github.com/CraftAcademy/laundry_time.git

### Prerequisites

  * ruby 2.4.0
  * rails 5.0.6

### Installing

Ensure that the gem versions on your local machine are as specified in the Gemfile.
Run bundle install to install dependencies.

## Running the tests
We used Rspec for unit tests, and Cucumber for feature tests.
Run rake to see all the tests pass.

### Break down into end to end tests

We test the user, laundry_room and sign up with Rspec and Cucumber.

Cucumber example:
```
Feature: A user can log in to to the site
  As a user
  In order to be able to do laundry
  I would like to be able to log in to LaundryTime

  Background:
    Given There is a user with email "unicorn@test.com" and password "password" in our database
    And I navigate to the index page

  Scenario: User provides valid credentials
    When I click on "Sign in"
    Then I fill in "Email" with "unicorn@test.com"
    And I fill in "Password" with "password"
    When I click on "Log in"
    Then I should see the text "Signed in successfully."
    And I should see the text "Logged in as: unicorn@test.com"
```
Rspec example:
```
RSpec.describe User, type: :model do

  describe 'factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  describe 'DB table' do
    it {is_expected.to have_db_column :id}
    it {is_expected.to have_db_column :email}
    it {is_expected.to have_db_column :password}
  end
end
```

## Deployment

We automatically deploy this app with [Heroku](https://www.heroku.com/). You can find it [here](https://laundrytime.herokuapp.com/).

## Built With
* [Devise](https://github.com/plataformatec/devise)
* [Rails](https://github.com/rails/rails)
* [Act_as_bookable](https://github.com/tandusrl/acts_as_bookable)
* [Simple_calendar](https://github.com/excid3/simple_calendar)

## Authors
* [Olofvi](https://github.com/olofvi)
* [NurlanEmir](https://github.com/nurlanemir)
* [Magnus-thor](https://github.com/magnus-thor)
* [BasilMawejje](https://github.com/BasilMawejje)
* [Sajaas](https://github.com/Sajaas)

## License
MIT license

## Acknowledgments
Built with help from the coaches and some cool gems. Many thanks especially to:

* [Tochman](https://github.com/tochman)
* [Diraoulo](https://github.com/diraulo)
* [Faraznaeem](https://github.com/faraznaeem)
