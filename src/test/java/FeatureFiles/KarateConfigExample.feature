Feature: karate config suite file
  Reading global variable from karate config js file

  Scenario: karate config test case1
    Given url baseUrl
    And path listUsers
    When method Get
    Then status 200