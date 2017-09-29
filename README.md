Laundry Time

August 2017 Craft Academy Mid Course Project

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

### Break down into end to end tests(?)

Explain what these tests test and why

They test creating the user model and sign up with both Rspec and Cucumber

Cucumber example:
```
Scenario:
  Given I navigate to the index page
  And I click a link "Calendar"
  Then I should be on the calendar page
```
Rspec example:
```
describe 'DB table' do
  it {is_expected.to have_db_column :id}
  it {is_expected.to have_db_column :email}
  it {is_expected.to have_db_column :password}
end
```

### And coding style tests(?)

Explain what these tests test and why

```
Give an example
```

## Deployment

We automatically deploy this app with [Heroku](https://www.heroku.com/).

## Built With
* [Devise](https://github.com/plataformatec/devise)
* [Rails](https://github.com/rails/rails)
* [Act_as_bookable](https://github.com/tandusrl/acts_as_bookable)
* [Simple_calendar](https://github.com/excid3/simple_calendar)

## Contributing

## Authors
* [Olofvi](https://github.com/olofvi)
* [Nurlanemir](https://github.com/nurlanemir)
* [Magnus-thor](https://github.com/magnus-thor)
* [BasilMawejje](https://github.com/BasilMawejje)
* [Sajaas](https://github.com/Sajaas)

## License
MIT license

## Acknowledgments
Built with help from the coaches and some cool gems. Thanks a lot!
Coaches:
* [Tochman](https://github.com/tochman)
* [Diraoulo](https://github.com/diraulo)
* [Faraznaeem](https://github.com/faraznaeem)
