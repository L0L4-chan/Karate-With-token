Feature: Create a booking

    Background:
    * def data = read('classpath:Data/booking.json')
    * url dom + '/booking'

    Scenario: Make a booking with full information
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive'  

        Given request data.bookingFullInfo
        When method post
        Then status 200