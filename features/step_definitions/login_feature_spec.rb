Given(/^There is a user with email "([^"]*)" and password "([^"]*)" in our database$/) do |email, password|
  FactoryGirl.create(:user, email: email, password: password)
end
