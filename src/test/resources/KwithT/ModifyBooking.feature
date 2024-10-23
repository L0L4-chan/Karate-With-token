Feature: Modify booking

    Background:
    * call read('classpath:config.feature')
    * call read('classpath:data.feature')
    * url dom + '/booking/'+bookingID +'?token0'+ token

    Scenario: Modify name on booking 
        * header Accept = '*/*'
        * header Accept-Encoding = 'gzip, deflate, br'
        * header Connection = 'keep-alive' 
        * header Authorization = auth
        Given request modifyUser
        When method put
        Then status 200
        And response.firstname == modifyUser.firstname
