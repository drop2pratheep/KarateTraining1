Feature: Called Test Suite
  Called Feature

  @Rest
  Scenario:  URL and path usage test case1
    Given url "http://reqres.in"
    And path "/api/users?page=2"
    When method Get
    Then status 200
    And match response.page == "##"