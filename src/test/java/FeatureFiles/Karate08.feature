Feature: Karate Test Suite 8
  Testing Rest API with Json output

  @Rest
  Scenario: Rest API Testing
    Given url "http://dummy.restapiexample.com/api/v1/employees"
       When method Get
    Then status 200
    And match response.status == "success"
    #* print response
    * match responseType == "json"
    * assert responseTime <= 2000
    * match response.status == "#string"
    * match response.data == "#array"
    * print response.data[0].employee_name
    * match response.data[0].employee_name contains "Tiger Nixon"


