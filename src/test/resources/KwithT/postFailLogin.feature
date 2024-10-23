Feature: Fail login

    Background:
    * call read('classpath:config.feature')
    * call read('classpath:data.feature')

    Scenario:Fail login due to wrong user or password
        Given url dom + '/auth'
        And request failUser
        When method post
        Then status 200
        And response.reason == 'Bad credentials'