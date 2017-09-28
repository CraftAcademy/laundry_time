Given(/^There is a user with email "([^"]*)" and password "([^"]*)" in our database$/) do |email, password|
  User.create(email: email, password: password)
end

