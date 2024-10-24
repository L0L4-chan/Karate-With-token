Feature: Modify booking

    Background:
    * def data = read('classpath:Data/booking.json')
    * url dom + '/booking/' + bookingID +'?token0'+ token

    Scenario: Modify name on booking 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        * header Authorization = auth
        Given request data.modifyUser
        When method put
        Then status 200
        And response.firstname == data.modifyUser.firstname
