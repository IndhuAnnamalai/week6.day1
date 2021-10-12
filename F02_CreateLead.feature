Feature: CreateLead functionality

Background: 
Given Open the chromebrowser
Given Load the application Url as 'http://leaftaps.com/opentaps/control/main'

@regression
Scenario: To create lead with mandatory information
Given Enter the username as 'Demosalesmanager'
Given Enter the password as 'crmsfa'
When Click the login button
Then Homepage should be displayed
When Click the 'CRM' link
Then 'My Home' page should be displayed
When Click the 'Leads' link
Then 'Leads' page should be displayed
When Click the 'Create Lead' link
Then 'Create lead' page should be displayed
Given Enter the company name as 'Test Leaf'
And Enter the first name as 'Indhu'
And Enter the last name as 'A'
When Click the Create Lead button
Then New lead should be created