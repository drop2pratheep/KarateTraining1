Feature: Karate Test Suite 1
  Demo of using variables in scenario

  Scenario: Karate Test case 1
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c=", c
    And karate.log("Test Ended")

  Scenario: Karate Test case 2
    Given def a = 10
    * def b = 20
    When def c = a * b
    Then assert c == 200
    * print "c=", c
    * karate.log("Test Ended")

  Scenario: Karate Test case 3
    * def a = 20
    * def b = 20
    * def c = a / b
    * assert c == 1
    * print "c=", c
    * karate.log("Test Ended")
