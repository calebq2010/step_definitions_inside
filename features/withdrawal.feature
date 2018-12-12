Feature: Cash Withdrawal

  Scenario: Successful withdrawal from an account in credit
    Given I have validated my pin of "1234"
    Then my account has been credited with $100
    When I withdrawal $20
    Then $20 should be dispensed
    And the balance of my account should be $80
