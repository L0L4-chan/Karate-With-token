Feature: Get booking information

    Background:

    * url dom + '/booking/' + bookingID

    Scenario: Get the booking reservation info through the booking ID
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given method get
        Then status 200
        And response.lastname = 'Smith'