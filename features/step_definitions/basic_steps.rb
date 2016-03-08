Given(/^that I am at the application main pages$/) do
    visit root_path
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_on arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  page.has_content? arg1
end

Given(/^that I am at the create user page$/) do
  visit new_profile_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button arg1
end

Then(/^I should be at the main page$/) do
  current_path == root_path
end