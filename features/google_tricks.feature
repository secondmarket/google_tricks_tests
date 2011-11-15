Feature: Google should perform tricks for my amusement

  As a surfer of the internet,
  I demand my browser perform amusing tricks

  Scenario: Search for the answer to life the universe and everything
    When I search google for "answer to life the universe and everything"
    Then google should answer it with "43"

  Scenario: Search for anagram
    When I search google for "anagram"
    Then google should suggest "Did you mean: nag a ram"

