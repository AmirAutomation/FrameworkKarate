@Regresion
Feature: API Login

  Background:
    * url "https://reqres.in"

      #Los endpoint que estoy probando
    * path "/api/login"

    * def loginFailed = { "email": "automation@test", "password": "leader" }

  # Puedo crear variables locales para cada scenario o en el bacground para todos los casos

  @LoginSucessful
  Scenario: Login Sucessful

    Given request {"email": "eve.holt@reqres.in","password": "cityslicka" }
    When method post
    Then status 200

  @LoginFailed
  Scenario: Login Failed
    Given request loginFailed
    When method post
    Then status 400
    And match $.error == 'user not found'