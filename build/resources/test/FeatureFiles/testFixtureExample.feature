Feature: Test Fixture test suite
  Demo using background after scenario, after feature

  Background: Before scenario
    * print "Before scenario"
    * configure afterScenario =
    """
    function (){
    karate.log("from after scenario");
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature");
    }
    """

    Scenario: Test case1
      * print "from test case1"

    Scenario: Test case2
      * print "from test case2"
