Feature: TODOist API Assignment

  Background:
    * url baseURL

  Scenario: Get all labels
    Given path '/labels'
    Given header Authorization = 'Bearer '+tokenID
    When method GET
    Then status 200
    * print response

  Scenario: Create a new label
    Given path '/labels'
    * def requestBody = read('classpath:data/createLabel.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 200
    * print response

  Scenario: Get a label
    Given path '/labels/2162468000'
    Given header Authorization = 'Bearer '+tokenID
    When method GET
    Then status 200
    * print response

  Scenario: Update a label
    Given path '/labels/2162468000'
    * def requestBody = read('classpath:data/updateLabel.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 204
    * print response

  Scenario: Delete a label
    Given path '/labels/2162468000'
    Given header Authorization = 'Bearer '+tokenID
    When method DELETE
    Then status 204
