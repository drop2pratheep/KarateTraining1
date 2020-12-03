Feature: Karate Test Suite 12
  Demo of using Javascript functions with in scenario

  Scenario: Javascript Test case 1
    * def fn1 = function(){ return 1; }

    * def fn2 =
    """
    function(id)
    {
    karate.log(id);
    }
    """
    * print fn1()
    * fn2("ID#007")

