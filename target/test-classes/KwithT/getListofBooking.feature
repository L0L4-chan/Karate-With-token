Feature: Get a list of booking booking

    Background:
    * call read('classpath:config.feature')
    * url dom + '/booking'

    Scenario: make a booking
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given method get
        Then status 200