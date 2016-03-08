Feature: Adding users to the database
  As a HR manager
  In order to be able to retrieve profiles and resumes in the future
  I want to be able to add new profiles to the application

Scenario: Opening the Create New User page
  Given that I am at the application main pages
  When I click "Add new profile"
  Then I should see "Add new profile"
  
Scenario: Submitting new user data
  Given that I am at the create user page
  When I fill in "profile_name" with "Pepito" 
  And I fill in "profile_surname" with "Pérez López"
  And I click the "Submit" button
  Then I should be at the main page
  And I should see "Pérez López, Pepito"