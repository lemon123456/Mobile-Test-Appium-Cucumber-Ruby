Feature: Login test

  Scenario: Login with correct username and password
    Given I am a System Admin
    When I login MyPACD with "xwx414537" and "XXJxxj@123456"
    Then I should see a module named "接待"

