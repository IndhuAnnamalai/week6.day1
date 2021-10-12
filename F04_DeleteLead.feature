Feature: Delete an existing lead

Background: 
Given Open the chromebrowser
And Load the application Url as 'http://leaftaps.com/opentaps/control/main'

Scenario: Delete existing lead using some basic information
Given Enter the username as 'demosalesmanager'
And Enter the password as 'crmsfa'
When Click the login button
Then Homepage should be displayed
When Click the 'CRM' link
Then 'My Home' page should be displayed
When Click the 'Leads' link
Then 'Leads' page should be displayed
When Click the 'Find Leads' link
Then 'Find Leads' page should be displayed
Given Enter the First name as 'Indhu'
When Click the Find Leads button
Then 'Lead List' page should be displayed
When Click the first name link in the first name column 
Then 'view lead' page should be displayed
When Click the 'Delete' link
Then 'My Leads' page should be displayed