Feature: Karate Test Suite 2
  This feature file consists of scenarios demonstrating JSON contents

  Scenario: Json Test case 1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tox`ol.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Json Test case 2
    Given def json =
    """
  {
  "id" : "101",
  "tool": { "name":"Karate", "version":"0.9.6"}
  }
    """
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}