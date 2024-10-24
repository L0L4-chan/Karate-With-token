## Karate Tutorial Project
This document outlines the process followed to work with Karate.

## Table of Contents
1. [Installation](#Installation)
2. [Tests] (#Tests)
3. [Usage](#Usage)


## Installation
For this project, you'll need to install the following plugins in Visual Studio Code (VSCode):

Karate (basic Karate support)
Karate Syntax (syntax highlighting for Karate)
Karate Snippets (code snippets for Karate)
Karate Formatter (automatic formatting for Karate scripts)

## Tests
This project uses a mock API: https://restful-booker.herokuapp.com, which allows us to make reservations. The full API documentation is available here.

The following tests are included in the project:

Check that the website is up (pingToApi)
Attempt to log in with incorrect user data (postFailLogin)
Successfully log in (postLogin)
Retrieve a list of all bookings in the system (getListOfBooking)
Retrieve a booking by its ID (getBooking)
Create a booking with all fields filled (booking)
Create bookings with incomplete fields (postBookingIncompleteData)
Modify booking information (modifyBooking)
Fail to delete a booking due to lack of authorization (failDeleteBooking)
Delete a booking with proper authorization (deleteBooking)

## Usage
The data for the test execution is stored in the data.feature file, which can be modified if needed.

To run the tests, ensure you have Maven installed. Open a terminal in the project's root folder and run the following commands:

- mvn install
- mvn test


You can access the reports in the karate-report folder.