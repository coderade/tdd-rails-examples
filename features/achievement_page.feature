Feature: Achievement Page

  In order to read other achievements
  As a guest user
  I want to see public achievement

  Scenario: guest user sees public achievement
    Given I am a guest user
    And there is a public achievement
    When I go to the achievement's page
    Then I must to see achievement's content