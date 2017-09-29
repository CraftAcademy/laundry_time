Given(/^user visits the booking page$/) do
  visit laundry_rooms_path
end

Given(/^I see a list of available times$/) do
  expect(page).to have_content
end

Given(/^I see the text "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^there is a laundry room$/) do
  @laundry = FactoryGirl.create(:laundry_room)
end


Given(/^I click on "([^"]*)" for first "([^"]*)"$/) do |element, data|
  scope = find("tr[data-date='#{data}']")
  within scope do
    click_link_or_button element
  end
end


Given(/^laundry is booked at "([^"]*)"$/) do |date|
  slot = Time.zone.parse(date)
  slot_to_book = @laundry.schedule
                     .occurrences(1.week.from_now)
                     .detect { |occ| occ.beginning_of_hour.localtime == slot.localtime }
  @user.book! @laundry, time: slot_to_book, amount: 1
end