Feature: Fail delete booking

    Background:
    * call read('classpath:config.feature')
    * url dom + '/booking/998'

    Scenario: Fail to delete booking due to lack of authorization 
        Given method delete
        Then status 403
