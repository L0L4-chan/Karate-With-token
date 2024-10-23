Feature: Login

    Background:
    * call read('classpath:config.feature')
    * call read('classpath:data.feature')
    Scenario:Correct login
        Given url dom + '/auth'
        And request correctUser
        When method post
        Then status 200
        And response.token != null
            * def responseBody = response   
            * print responseBody    
            * def token = response.token    
            * print token 