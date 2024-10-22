Feature: Fail delete booking

    Background:
    * call read('classpath:config.feature')
    * url dom + '/booking/998'

    Scenario: Delete booking 
        Given method delete
        Then status 403
