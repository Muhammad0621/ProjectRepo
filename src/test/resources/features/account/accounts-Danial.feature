#Author: SuuperDan
Feature: Test accounts page functionality
@acc
  Scenario: Click the Accounts Tab
    Given I open "chrome" browser
    And I visit the "qa" environment
    And I enter "test.user@gmail.com.test" username And I enter "Welcome2" password
    When I click the "Login" button
    Then I should click the "Accounts " link
    Then I should close the browser
@acc
  Scenario: Create & Save an Account & verify yes active dropdown value
    Given I open "chrome" browser
    And I visit the "qa" environment
    And I enter "test.user@gmail.com.test" username And I enter "Welcome2" password
    When I click the "Login" button
    Then I should click the "Accounts " link
    When I click the "new" button
    Then I should enter "SuuperDan" in the "Account Name" field
    Then I should verify the values in the "00N2E00000D7LOy" dropdown and select "Yes"
    When I click the "save" button
    Then I should see selected value in the "00N2E00000D7LOy_ileinner" field
    Then I should close the browser
@acc
  Scenario: Create & Save an Account & verify no active dropdown value
    Given I open "chrome" browser
    And I visit the "qa" environment
    And I enter "test.user@gmail.com.test" username And I enter "Welcome2" password
    When I click the "Login" button
    Then I should click the "Accounts " link
    When I click the "new" button
    Then I should enter "SuuperDan" in the "Account Name" field
    Then I should verify the values in the "00N2E00000D7LOy" dropdown and select "No"
    When I click the "save" button
    Then I should see selected value in the "00N2E00000D7LOy_ileinner" field
    Then I should close the browser
@acc
  Scenario: Create & Save an Account & verify --None-- active dropdown value
    Given I open "chrome" browser
    And I visit the "qa" environment
    And I enter "test.user@gmail.com.test" username And I enter "Welcome2" password
    When I click the "Login" button
    Then I should click the "Accounts " link
    When I click the "new" button
    Then I should enter "SuuperDan" in the "Account Name" field
    Then I should verify the values in the "00N2E00000D7LOy" dropdown and select ""
    When I click the "save" button
    Then I should see selected value in the "00N2E00000D7LOy_ileinner" field
    Then I should close the browser
