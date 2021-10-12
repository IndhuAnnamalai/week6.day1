Feature: Merge two existing leads

Background:
Given Open the chromebrowser
And Load the application Url as 'http://leaftaps.com/opentaps/control/main'

Scenario Outline: Merge two leads
Given Enter the username as <username>
Given Enter the password as <password>
When Click the login button
Then Homepage should be displayed
When Click the 'CRM' link
Then 'My Home' page should be displayed
When Click the 'Leads' link
Then 'Leads' page should be displayed
When Click the 'Merge Leads' link
Then 'Merge Leads' page should be displayed
When Click the Icon in the From lead text box
Then 'Find Leads' page should be displayed
When Enter the first name field as <Fromlead>
Then Click the Find Leads button
When Click the first name link in the first name column 
Then 'Merge lead' page should be displayed
When Click the Icon in the To lead text box
Then 'Find Leads' page should be displayed
When Enter the first name field as <Tolead>
Then Click the Find Leads button
When Click the first name link in the first name column 
Then 'Merge lead' page should be displayed
When Click the Merge button
Then 'View Leads' page should be displayed

Examples:
|username|password|Fromlead|Tolead|
|'demosalesmanager'|'crmsfa'|'Indhu'|'Padma'|