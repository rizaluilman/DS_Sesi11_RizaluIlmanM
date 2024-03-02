@digital-skola @login
Feature: Swag Labs - Login
  Background: User already on login page
    Given User on the login page

  @positive
  Scenario Outline: As a "standard_user", I want to log in successfully
    When User login with "standard_user" credential
    Then User successfully login and redirect to home page

  Scenario Outline: As a "problem_user", I want to log in successfully
    When User login with "problem_user" credential
    Then User successfully login and redirect to home page

  Scenario Outline: As a "performance_glitch_user", I want to log in successfully
    When User login with "performance_glitch_user" credential
    Then User successfully login and redirect to home page

  Scenario Outline: As a "error_user", I want to log in successfully
    When User login with "error_user" credential
    Then User successfully login and redirect to home page

  Scenario Outline: As a "visual_user", I want to log in successfully
    When User login with "visual_user" credential
    Then User successfully login and redirect to home page