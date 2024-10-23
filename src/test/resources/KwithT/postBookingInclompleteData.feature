Feature: Create a booking without all information 

    Background:
    * call read('classpath:config.feature')
    * url dom + '/booking'

    Scenario: Make a booking without name
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request {lastname: 'Brown',totalprice: 111, depositpaid: true, bookingdates:{ checkin: '2018-01-01', checkout: '2019-01-01'},additionalneeds: 'Breakfast'}
        When method post
        Then status 200


     Scenario: Make a booking without lastname
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request {firstname: 'Jim',totalprice: 111, depositpaid: true, bookingdates:{ checkin: '2018-01-01', checkout: '2019-01-01'},additionalneeds: 'Breakfast'}
        When method post
        Then status 200
    
     Scenario: Make a booking without dates
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        Given request {firstname: 'Jim',lastname: 'Brown',totalprice: 111, depositpaid: true, additionalneeds: 'Breakfast'}
        When method post
        Then status 200