Feature: Get a list of booking 

    Background:
    
     * url dom + '/booking/'

    Scenario: Get a list of all the booking on the DB
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given method get
        Then status 200