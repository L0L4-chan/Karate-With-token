Feature: Test Data Load

Background:
  * call read('classpath:data.feature')

Scenario: Verify data
  * print bookingFullInfo
  * match bookingFullInfo.firstname == 'Jim'
