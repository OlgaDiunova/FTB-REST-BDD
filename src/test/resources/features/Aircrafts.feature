Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=12
    Then aircraft data to be manufacturer='Su' and model='Su-24' and number of seats=494

  Scenario: Get specific aircraft data by its ID when number of seats is null
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=3138
    Then returned aircraft data to be manufacturer='string7676' and model='string8787' and null number of seats


  Scenario: Create an aircraft with null number of seats
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='test100' and model='test101' and null number of seats
    Then returned aircraft data to be manufacturer='test100' and model='test101' and null number of seats
    When client gets details of just created Aircraft
    Then aircraft data to be manufacturer='test100' and model='test101' and null number of seats
