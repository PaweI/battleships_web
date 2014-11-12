Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I am pressing New Game
    Then I should see "What's your name"

  Scenario: Creating player
    Given I am om New Game page
    And filling name
    Then I should see 'We have 1 player'

