Given(/^There is a user with email "([^"]*)" and password "([^"]*)" in our database$/) do |email, password|
  user = User.create(email: email, password: password)
end

Then(/^I am on the index page$/) do
  # redirect 'landing#index'
  expect(page).to have_current_path(root_path)
end