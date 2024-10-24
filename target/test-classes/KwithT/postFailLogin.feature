Feature: Fail login

    Background:
    * def data = read('classpath:Data/booking.json')

    Scenario:Fail login due to wrong user or password
        Given url dom + '/auth'
        And request data.failUser
        When method post
        Then status 200
        And response.reason == 'Bad credentials'