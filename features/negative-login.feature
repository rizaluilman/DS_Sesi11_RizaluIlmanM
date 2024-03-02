@digital-skola @login
Feature: Swag Labs - Login
  Background: User already on login page
    Given User on the login page

  @negative
  Scenario Outline: As a "locked_out_user", User cannot log in into the home page and see message error
    When User login with "locked_out_user" credential
    Then User not successful login and see error "Epic sadface: Sorry, this user has been locked out." 

  Scenario Outline: As a "another_user", User cannot log in into the home page and see message error
    When User login with "another_user" credential
    Then User not successful login and see error "Epic sadface: Username and password do not match any user in this service"
  
  Scenario Outline: As a "" blank user, User cannot log in into the home page and see message error
    When User login with "" credential
    Then User not successful login and see error "Epic sadface: Username is required"

  Scenario Outline: As a "standard_user" but the password is blank, User cannot log in into the home page and see message error
    When User login with "standard_user" credential and blank password
    Then User not successful login and see error "Epic sadface: Password is required"