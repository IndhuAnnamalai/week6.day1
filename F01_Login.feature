Feature: Leaftaps Login functionality

Background: 
Given Open the chromebrowser
Given Load the application Url as 'http://leaftaps.com/opentaps/control/main'

Scenario Outline: Test with positive credential
Given Enter the username as <username>
Given Enter the password as <password>
When Click the login button

Then Homepage should be displayed

Examples:
|username|password|
|'demosalesmanager'|'crmsfa'|
|'demoCSR'|'crmsfa'|

@regression
Scenario: Test with negative credential

Given Enter the username as 'demo'
Given Enter the password as 'crmsfa'
When Click the login button

Then Error message should be displayed