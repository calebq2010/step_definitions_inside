Feature: Cash Withdrawal

  Scenario: Successful withdrawal from an account in credit
    Given I have deposited $100 in my Account
    When I request $20
    Then $20 should be deposited
