Feature: Create a booking without all information 

    Background:
    * call read('classpath:config.feature')
    * call read('classpath:data.feature')
    * url dom + '/booking'

    Scenario: Make a booking without name
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request bookingNoName
        When method post
        Then status 500


     Scenario: Make a booking without lastname
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request bookingNoLast
        When method post
        Then status 500
    
     Scenario: Make a booking without dates
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request bookingNoDates
        When method post
        Then status 500