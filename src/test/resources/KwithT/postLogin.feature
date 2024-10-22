Feature: Login

    Background:
    * call read('classpath:config.feature')

    Scenario:Login
        Given url dom + '/auth'
        And request { username: 'admin', password:'password123'}
        When method post
        Then status 200
        And response.token != null
            * def responseBody = response   
            * print responseBody    
            * def token = response.token    
            * print token 