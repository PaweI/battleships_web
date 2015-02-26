Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I am pressing New Game$/) do
  click_link 'New Game'
end

Then(/^I should see "(.*?)"$/) do |ask|
  expect(page).to have_content(ask)
end

Given(/^I am om New Game page$/) do
  visit('/')
  click_link 'New Game'
end

Given(/^filling name$/) do
  fill_in('e.g.Pavel', with: 'Pavel')
  click_on 'start'
end

Then(/^I should see 'We have (\d+) player'$/) do |_arg1|
  expect(page).to have_content('We have 1 player')
end
