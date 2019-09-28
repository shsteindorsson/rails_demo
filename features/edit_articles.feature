Feature: Edit articles
  As a publisher
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given I visit the "landing" page
    And I click "New Article" link
    And I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Save Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"
    And I click "Back" link

  Scenario: Successfully create an article [Happy Path]
    Then I should see "Learning Rails 5"
    And I click "Edit" link
    Then I should see "Edit article"