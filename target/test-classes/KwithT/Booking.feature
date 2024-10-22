Feature: Create a booking

    Background:
    * call read('classpath:config.feature')
    * url dom + '/booking'

    Scenario: make a booking
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request {firstname: 'Jim',lastname: 'Brown',totalprice: 111, depositpaid: true, bookingdates:{ checkin: '2018-01-01', checkout: '2019-01-01'},additionalneeds: 'Breakfast'}
        When method post
        Then status 200