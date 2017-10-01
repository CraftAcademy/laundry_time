Given(/^user visits the booking page$/) do
  visit laundry_rooms_path
end

Given(/^I see a list of available times$/) do
  expect(page).to have_content
end

Then(/^I see the text "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^there is a laundry room$/) do
  @laundry = FactoryGirl.create(:laundry_room)
end


Given(/^I click on calendar link "([^"]*)"$/) do |data|
  scope = find("div[data-date='#{data}']")
  within scope do
    link = Time.parse(data).strftime('%H:%M')
    find('a', text: link).click
  end
end


Given(/^laundry is booked at "([^"]*)"$/) do |date|
  slot = Time.zone.parse(date)
  slot_to_book = @laundry.schedule
                     .occurrences(1.week.from_now)
                     .detect { |occ| occ.beginning_of_hour.localtime == slot.localtime }
  @user.book! @laundry, time: slot_to_book, amount: 1
end

When(/^I try to access booking link for "([^"]*)"$/) do |date|
  date = Time.parse(date).to_formatted_s(:short)
  visit laundry_room_create_booking_path(@laundry, time: date)
end

Given("there is a booking from for {string}") do |date|
  slot = Time.zone.parse(date)
  slot_to_book = @laundry.schedule
                     .occurrences(1.week.from_now)
                     .detect { |occ| occ.beginning_of_hour.localtime == slot.localtime }
  @user.book! @laundry, time: slot_to_book, amount: 1
end

Then(/^I should not see the text "([^"]*)"$/) do |text|
  page.should have_no_content(text)
end