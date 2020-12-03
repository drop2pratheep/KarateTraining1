Feature: Karate Test Suite 10
  Using URL and path

  @Rest
  Scenario:  URL and path usage test case1
    Given url "http://reqres.in"
    And path "/api/users?page=2"
    When method Get
    Then status 200
    And match response.page == "##"

  Scenario:  URL and path usage test case2
    Given url "http://reqres.in"
    And path "/api/users"
    And  param page = 2
    When method Get
    Then status 200
    And match response.page == "##"

