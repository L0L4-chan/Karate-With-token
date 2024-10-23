Feature: Ping to url

  Background:
    * call read('classpath:config.feature')

  Scenario: Send ping check that the url is up
  * def endPath = '/ping'

    Given url dom + endPath
    When method get
    Then status 201
