Feature: Duplicate an existing lead

Background:
Given Open the chromebrowser
And Load the application Url as 'http://leaftaps.com/opentaps/control/main'

Scenario Outline: Duplicate an existing lead
Given Enter the username as <username>
Given Enter the password as <password>
When Click the login button
Then Homepage should be displayed
When Click the 'CRM' link
Then 'My Home' page should be displayed
When Click the 'Leads' link
Then 'Leads' page should be displayed
When Click the 'Find Leads' link
Then 'Find Leads' page should be displayed
Given Enter the First name as <Firstname>
When Click the Find Leads button
Then 'Lead List' page should be displayed
When Click the first name link in the first name column 
Then 'view lead' page should be displayed
When Click the 'Duplicate Lead' link
Then 'Duplicate Lead' page should be displayed
When Click the Create Lead button
Then 'View Lead' page should be displayed

Examples:
|username|password|Firstname|
|'demosalesmanager'|'crmsfa'|'Indhu'|