Feature: This is my first Feature
  This is feature created to test something

  Scenario: First Karate test case
    Free text comments

    Background: This is setup block
      Given This is given precondition step-1
      And This is given precondition step-2

    #@tagname
    Given This is given precondition step-1
    And This is given precondition step-2

    When This is given Action step-1
    And This is given Action step-2

    Then This is Validation step-1
    And This is Validation step-2
