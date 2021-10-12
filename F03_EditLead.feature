Feature: Edit the existing Lead

Background: 
Given Open the chromebrowser
And Load the application Url as 'http://leaftaps.com/opentaps/control/main'

Scenario: Edit the lead with some information
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
When Click the 'Edit' link
Then 'Edit Lead' page should be displayed
Given Enter the Company name as 'Test Leaf Solutions'
When Click the Update button
Then 'view Lead' page should be displayed



