Feature: List articles on landing page
  As a publisher, 
  In order to limit access to articles,
  I would like registered users to log in

  Background: 
  Given the following articles exist
    | title                 | content                           |
    | Learn Rails 5         | Build awesome rails applications  |
  And the following users exists
    | user  | email         | password |
    | dude  | dude@mail.com | password |
  And I visit the landing page

  Scenario: Logging in and viewing a list of articles
    When I fill in "Email" with "dude@mail.com"
    And I fill in "Password" with "password"
    Then I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"