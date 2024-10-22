Feature: Modify booking

    Background:
    * call read('classpath:config.feature')
    * url dom + '/booking/1?token0'+ token

    Scenario: Modify name on booking 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        * header Authorization = auth
        Given request {firstname: 'Jaes',lastname: 'Brown',totalprice: 111, depositpaid: true, bookingdates:{ checkin: '2018-01-01', checkout: '2019-01-01'},additionalneeds: 'Breakfast'}
        When method put
        Then status 200
        And response.firstname == 'Jaes'
