@Regresion
Feature: Register

  Background:
    * url "https://reqres.in"
      #Los endpoint que estoy probando
    * path "/api/register"

  Scenario: Register Successful
    Given request {"email": "eve.holt@reqres.in", "password": "pistol"}
    When method post
    Then status 200

  Scenario: Register Failed
    Given request {"email": "faeil@reqres.in", "password": "pistol"}
    When method post
    Then status 400

