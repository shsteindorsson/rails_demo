When(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^the following articles exists$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

Given("I visit the {string} page") do |string|
  visit root_path
end

When("I click {string} link") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in(string, :with => string2)
end

When("I click {string} button") do |string|
  click_button(string)
end

Then("I should be on {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
