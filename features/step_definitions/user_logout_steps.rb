Given(/^I am on the laundry room page$/) do
  visit '/laundry_room'
end

Then(/^I should be on the index page$/) do
  expect(page).to have_current_path(root_path)
end
