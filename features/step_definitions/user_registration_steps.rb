Given(/^the following users exists$/) do |table|
  table.hashes.each do |table|
    User.create!(table)
  end
end

Given(/^I click on "([^"]*)"$/) do |button|
  click_link_or_button button
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |item, content|
  fill_in item, with: content
end
