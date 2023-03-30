Feature: TODOist API Assignment

  Background:
    * url baseURL

  Scenario: Get all sections
    Given path '/sections'
    And params project_id=2299955893
    Given header Authorization = 'Bearer '+tokenID
    And   header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    * print response

  Scenario: Create a new section
    Given path '/sections'
    * def requestBody = read('classpath:data/createSection.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 200
    * print response

  Scenario: Get a single section
    Given path '/sections/103115587'
    Given header Authorization = 'Bearer '+tokenID
    And   header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    * print response

  Scenario: Update a section
    Given path '/sections/103115587'
    * def requestBody = read('classpath:data/updateSection.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 204
    * print response

  Scenario: Delete a section
    Given path '/sections/103115587'
    Given header Authorization = 'Bearer '+tokenID
    And   header Content-Type = 'application/json; charset=utf-8'
    When method DELETE
    Then status 204

