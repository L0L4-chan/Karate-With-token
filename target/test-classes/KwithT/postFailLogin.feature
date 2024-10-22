Feature: Fail login

    Background:
    * call read('classpath:config.feature')

    Scenario:Fail login
        Given url dom + '/auth'
        And request { username: 'user', password:'pass'}
        When method post
        Then status 200
        And response.reason == 'Bad credentials'