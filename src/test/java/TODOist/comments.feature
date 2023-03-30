Feature: TODOist API Assignment

  Background:
    * url baseURL

  Scenario: Get all comments
    Given path '/comments'
    And params task_id=6236109280
    Given header Authorization = 'Bearer '+tokenID
    When method GET
    Then status 200
    * print response

  Scenario: Create a new comment
    Given path '/comments'
    * def requestBody = read('classpath:data/createComment.json')
    And request requestBody
    * print requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 200
    * print response

  Scenario: Get a comment
    Given path '/comments'
    Given header Authorization = 'Bearer '+tokenID
    When method GET
    Then status 200
    * print response

  Scenario: Update a comment
    Given path '/comments'
    * def requestBody = read('classpath:data/updateComment.json')
    And request requestBody
    Given header Authorization = 'Bearer '+tokenID
    * configure  headers = {Content-Type:'application/json; charset=utf-8'}
    When method POST
    Then status 204
    * print response

  Scenario: Delete a comment
    Given path '/comments'
    Given header Authorization = 'Bearer '+tokenID
    When method DELETE
    Then status 204
