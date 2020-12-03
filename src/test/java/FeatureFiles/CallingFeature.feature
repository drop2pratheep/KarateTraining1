Feature: Calling Feature


  Scenario: Calling Test case
    * def result = call read("CalledFeature.feature")
    * print result
    * match result.responseType == "json"
    * match result.responseHeaders.Transfer-Encoding[0] == "chunked"
    * match result.response.data[0].name == 'cerulean'

  Scenario: dummy
    Given url " "
    When Post
    Then def payload = response

    Given url " "
    And request payload
    When Post
