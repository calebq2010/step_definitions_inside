Feature: Cash Withdrawal

  Scenario: Successful withdrawal from an account in credit
    Given I have validated my pin of "1234"
    Then I have deposited $100 in my account
    When I withdrawal $20
    Then $20 should be dispensed
