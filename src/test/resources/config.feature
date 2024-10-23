Feature: Configuration for tests
  Scenario: Define base URL
    * def dom = 'https://restful-booker.herokuapp.com'
    * def token = null 
    * def auth = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    * call read('classpath:data.feature')