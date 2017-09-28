Given(/^I am on the laundry room page$/) do
  visit '/laundry_room'
end

Given(/^I am logged in as a user with email "([^"]*)"$/) do |email|
  user = User.find_by email: email
  login_as(user)
end

Then(/^I should be on the index page$/) do
  expect(page).to have_current_path(root_path)
end