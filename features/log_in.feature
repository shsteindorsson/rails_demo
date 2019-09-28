Feature: List articles on landing page
  As a publisher, 
  In order to limit access to articles,
  I would like registered users to log in

  Background: 
  Given following model exist
    | email         | password |
    | dude@mail.com | password |
  And following article exist
    | title                 | content                           |
    | Learn Rails 5         | Build awesome rails applications  |
  And I am on the landing page

  Scenario: Logging in and viewing a list of articles
    When I click "Show" link 
    And I fill in "Email" with "dude@mail.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Then I should see "Signed in successfully."
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"