Given(/^I navigate to the index page$/) do
  visit root_path
end

Then(/^I should see the text "([^"]*)"$/) do |content|
  expect(page).to have_content content
end