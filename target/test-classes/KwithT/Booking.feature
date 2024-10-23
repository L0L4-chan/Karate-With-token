Feature: Create a booking

    Background:
    * call read('classpath:config.feature')
    * call read('classpath:data.feature')
    * url dom + '/booking'

    Scenario: Make a booking with full information
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        * print bookingFullInfo
        Given request bookingFullInfo
        When method post
        Then status 200