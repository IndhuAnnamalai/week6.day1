Feature: CreateLead functionality

Background: 
Given Open the chromebrowser
Given Load the application Url as 'http://leaftaps.com/opentaps/control/main'

@regression
Scenario Outline: To create lead with mandatory information
Given Enter the username as <username>
Given Enter the password as <password>
When Click the login button
Then Homepage should be displayed
When Click the 'CRM' link
Then 'My Home' page should be displayed
When Click the 'Leads' link
Then 'Leads' page should be displayed
When Click the 'Create Lead' link
Then 'Create lead' page should be displayed
Given Enter the company name as <compname>
And Enter the first name as <firstname>
And Enter the last name as <lastname>
When Click the Create Lead button
Then New lead should be created

Examples:
|username|password|compname|firstname|lastname|
|'Demosalesmanager'|'crmsfa'|'Test Leaf'|'Indhu'|'A'|