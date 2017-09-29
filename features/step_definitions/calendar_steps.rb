Then(/^I should be on the calendar page$/) do
  expect(page.current_path).to eq calendar_index_path
end

