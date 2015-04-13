@javascript
Feature: Testing live site

  Scenario: Asking and answering and making sure they are all answered
    Given all users are logged in and at the test table
    When all users ask a question
    Then all questions should appear in the unanswered column
    When all users answer all questions
    Then all questions should appear in the answered column
