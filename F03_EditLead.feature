Feature: Edit the existing Lead

Background: 
Given Open the chromebrowser
And Load the application Url as 'http://leaftaps.com/opentaps/control/main'

Scenario Outline: Edit the lead with some information
Given Enter the username as <username>
And Enter the password as <password>
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
When Click the 'Edit' link
Then 'Edit Lead' page should be displayed
Given Enter the Company name as <Compname>
When Click the Update button
Then 'view Lead' page should be displayed

Examples: 
|username|password|Firstname|Compname|
|'demosalesmanager'|'crmsfa'|'Indhu'|'Test Leaf Solutions'|

