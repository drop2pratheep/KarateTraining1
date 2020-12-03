Feature: Karate Test Suite 9
  Rest API End to End Testing

  @Rest
  Scenario: Create fetch Update Delete Employee Test
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Pratheep","salary":"123000","age":"29"}
       When method Post
    Then status 200
    * def id = response.data.id
    * match response.data.name == "Pratheep"
    * print id
    
    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method Get
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And request {"name":"Pratheep","salary":"123000","age":"30"}
    When method Put
    Then Status 200

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    When method Delete
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method Get
    Then status 200