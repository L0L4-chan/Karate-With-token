Feature: Ping to url

  Background:
    * call read('classpath:config.feature')

  Scenario: Send ping call
  * def endPath = '/ping'

    Given url dom + endPath
    When method get
    Then status 201
