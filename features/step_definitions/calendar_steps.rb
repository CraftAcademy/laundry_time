Given(/^I click a link "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^show me the page$/) do
  save_and_open_page
end

Then(/^I should be on the calendar page$/) do
  '/calendar'
end

