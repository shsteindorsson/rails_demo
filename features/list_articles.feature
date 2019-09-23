Feature: List articles on landing page
  As a visitor, 
  when I visit the application's landing page,
  I would like to see a list of articles

  Background: 
  Given the following articles exists
    | title                 | content                           |
    | A breaking news item  | Some breaking action              |
    | Learn Rails 5         | Build awesome rails applications  |

  Scenario: Viewing list of articles on the application's landing page
    When I am on the landing page
    Then I should see "A breaking news item"
    And I should see "Some breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"

As a publisher
In order to add relevant content to my news service
I would like to be able to create articles
Here is a starting feature file for the create functionality.

Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given I visit the "landing" page
    When I click "New Article" link

  Scenario: Successfully create an article [Happy Path]
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Publisher doesn't enter a title for the article [Sad Path]
    When I fill in "Content" with "Excited about learning a new framework"
    And I click "Create Article" button
    Then I should see "Title can't be blank"

  Scenario: Publisher doesn't enter a content for the article [Sad Path]
    When I fill in "Title" with "Learning Rails 5"
    And I click "Create Article" button
    Then I should see "Content can't be blank"