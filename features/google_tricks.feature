Feature: Google should perform tricks for my amusement

  As a surfer of the internet,
  I demand my browser perform amusing tricks

  Scenario: Search for anagram
    When I search google for "answer to life the universe and everything"
    Then google should answer it with "42"

  Scenario: Search for anagram
    When I search google for "anagram"
    Then google should suggest "Did you mean: nag a ram"

  Scenario: Do a barrel roll
    When I search google for "do a barrel roll"
    Then My browser should spin about

