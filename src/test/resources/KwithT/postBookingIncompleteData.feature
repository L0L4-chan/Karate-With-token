Feature: Create a booking without all information 

    Background:
    * def data = read('classpath:Data/booking.json')
    * url dom + '/booking'

    Scenario: Make a booking without name
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request data.bookingNoName
        When method post
        Then status 500


     Scenario: Make a booking without lastname
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request data.bookingNoLast
        When method post
        Then status 500
    
     Scenario: Make a booking without dates
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request data.bookingNoDates
        When method post
        Then status 500