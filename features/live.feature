@javascript
Feature: Testing live site

  Scenario: Ask a question and see it pop up
    Given I am in browser "a"
    And I clear the table
    And I log in as user "a"
    And I go to the test table
    Then I should see "Ask"

    When I am in browser "b"
    And I go to the live site
    And I log in as user "b"
    And I go to the test table
    And wait 5 seconds
    When I click "Ask a Question"
    Then I should see "BEGIN"
    When I fill out b's question
    Then I should see b's question on the left

    When I am in browser "a"
    Then I should see b's question on the left
