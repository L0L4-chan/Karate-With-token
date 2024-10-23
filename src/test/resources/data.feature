Feature: Data for tests

Scenario: Define Json objects needed for the tests
  * def bookingID = (Math.floor(Math.random() * 100) + 1)
  * def failUser = { username: 'user', password: 'pass' }
  * def correctUser = { username: 'admin', password: 'password123' }
  * def bookingFullInfo = { firstname: 'Jim', lastname: 'Brown', totalprice: 111, depositpaid: true, bookingdates: { checkin: '2018-01-01', checkout: '2019-01-01' }, additionalneeds: 'Breakfast' }
  * def bookingNoName = { lastname: 'Brown', totalprice: 111, depositpaid: true, bookingdates: { checkin: '2018-01-01', checkout: '2019-01-01' }, additionalneeds: 'Breakfast' }
  * def bookingNoLast = { firstname: 'Jim', totalprice: 111, depositpaid: true, bookingdates: { checkin: '2018-01-01', checkout: '2019-01-01' }, additionalneeds: 'Breakfast' }
  * def bookingNoDates = { firstname: 'Jim', lastname: 'Brown', totalprice: 111, depositpaid: true, additionalneeds: 'Breakfast' }
  * def modifyUser = { firstname: 'Jaes', lastname: 'Brown', totalprice: 111, depositpaid: true, bookingdates: { checkin: '2018-01-01', checkout: '2019-01-01' }, additionalneeds: 'Breakfast' }


