Feature: TODOist API Assignment

  Background:
    * url baseURL

  Scenario: Get active tasks
    Given path '/tasks'
    Given header Authorization = 'Bearer '+tokenID
    When method GET
    Then status 200
    * print response

  Scenario: Create a new task
    Given path '/tasks'
    * def requestBody = read('classpath:data/createTask.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 200
    * print response

  Scenario: Get an active task
    Given path '/tasks/6236109280'
    Given header Authorization = 'Bearer '+tokenID
    When method GET
    Then status 200
    * print response

  Scenario: Update a task
    Given path '/tasks/6236109280'
    * def requestBody = read('classpath:data/updateTask.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 204
    * print response

  Scenario: Close a task
    Given path '/tasks/6236109280/close'
    Given header Authorization = 'Bearer '+tokenID
    When method POST
    Then status 204
    * print response

  Scenario: Reopen a task
    Given path '/tasks/6236109280/reopen'
    Given header Authorization = 'Bearer '+tokenID
    When method POST
    Then status 204
    * print response

  Scenario: Delete a task
    Given path '/tasks/6236109280'
    Given header Authorization = 'Bearer '+tokenID
    When method DELETE
    Then status 204


