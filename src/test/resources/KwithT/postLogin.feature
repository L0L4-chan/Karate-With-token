Feature: Login

    Background:
    * def data = read('classpath:Data/user.json')
    Scenario:Correct login
        Given url dom + '/auth'
        And request data.correctUser
        When method post
        Then status 200
        And response.token != null
            * def responseBody = response   
            * print responseBody    
            * def token = response.token    
            * print token 