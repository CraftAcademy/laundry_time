Then(/^I should be on the calendar page$/) do
  expect(page.current_path).to eq calendar_index_path
end

Then("I should see available time slots") do
  pending # Write code here that turns the phrase above into concrete actions
end