Feature: Karate Test Suite 13
   Calling static and non static variables

  Scenario: Static variable TC
    * def constants = Java.type('misc.automationconstants')
    * print constants.devurl
    * print constants.getdevurl()

  Scenario: Non-Static variable test case
    * def env1 =
    """
    function()
    {
    var temp = Java.type('misc.automationconstants');
    var constants = new temp();
    return constants.qaURL;
    }
    """
    * def qaurl = call env1
    * print qaurl
    * print env1()





