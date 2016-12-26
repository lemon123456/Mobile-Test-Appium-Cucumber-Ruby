Feature: Login test
  As a System Admin, I added a reception on PC side
  I want to search and view a reception on Mobile side
  So that I can check out the reception details on Mobile side


  Scenario: Login with correct username and password
    Given I log in MyPACD with Username "xwx414537" and Password "XXJxxj@123456"
    Then I should go into the main page and title is "MyPACD"

    When I click on module "接待"
    Then I should go into the "沙盘" page


#沙盘 - Overview
#接待 - Reception
#工具包 - Reference

