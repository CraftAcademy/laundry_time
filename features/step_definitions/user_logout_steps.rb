Given(/^I am on the laundry room page$/) do
  visit '/laundry_room'
end


And(/^I am logged in as a user with email "([^"]*)" and password "([^"]*)"$/) do |email, password|
  user = User.create(email: email, password: password)
  login_as(user)
end

Then(/^I should be on the index page$/) do
  expect(page).to have_current_path(root_path)
end