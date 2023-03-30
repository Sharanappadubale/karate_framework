Feature: TODOist API Assignment

Background:
  * url baseURL

  Scenario: Get all projects
    Given path '/projects'
    Given header Authorization = 'Bearer '+tokenID
    And   header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    * print response

  Scenario: Create a new project
    Given path '/projects'
    * def requestBody = read('classpath:data/createProject.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 200
    * print response

  Scenario: Get a projects
    Given path '/projects/2299955899'
    Given header Authorization = 'Bearer '+tokenID
    And   header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    * print response

  Scenario: Update a project
    Given path '/projects/2299955899'
    * def requestBody = read('classpath:data/updateProject.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 204
    * print response

  Scenario: Delete a projects
    Given path '/projects/2299955899'
    Given header Authorization = 'Bearer '+tokenID
    And   header Content-Type = 'application/json; charset=utf-8'
    When method DELETE
    Then status 204

  Scenario:Get all collaborators
    Given path '/projects/2299955899/collaborators'
    Given header Authorization = 'Bearer '+tokenID
    And   header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    * print response