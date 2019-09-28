When(/^I am on the landing page$/) do
  visit(root_path)
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
  visit(root_path)
end

When("I click {string} link") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |element, content|
  fill_in(element, :with => content)
end

When("I click {string} button") do |string|
  click_button(string)
end

Then("I should be on {string} page") do |string|
  expect(page).to have_content string
end

Given("following model exist") do |table|
  table.hashes.each do |model_hash|
    FactoryBot.create(:model, model_hash)
  end
end

Given("following article exist") do |table|
  table.hashes.each do |article_hash|
    FactoryBot.create(:article, article_hash)
  end
end