Given(/^user visits the booking page$/) do
  visit '/laundry_rooms'
end

Given(/^I see a list of available times$/) do
  expect(page).to have_content
end

Given(/^I see the text "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^there is a laundry room$/) do
  FactoryGirl.create(:laundry_room)
end

