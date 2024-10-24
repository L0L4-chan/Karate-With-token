Feature: Delete booking

    Background:
    * url dom + '/booking/' + bookingID

    Scenario: Delete booking 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        * header Authorization = auth
        Given method delete
        Then status 201
