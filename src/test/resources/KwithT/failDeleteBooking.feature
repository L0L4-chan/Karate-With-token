Feature: Fail delete booking

    Background:
    
    * url dom + '/booking/' + bookingID

    Scenario: Fail to delete booking due to lack of authorization 
        Given method delete
        Then status 403
