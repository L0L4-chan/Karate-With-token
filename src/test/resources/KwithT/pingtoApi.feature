Feature: Ping to url

 
  
  Scenario: Send ping check that the url is up
  * def endPath = '/ping'

    Given url dom + endPath
    When method get
    Then status 201
