Feature: Manage users
  In order to mange users
  As an administrator
  I want to create and manage users

  Scenario: Adding a new user
    Given I am logged in as an Administrator
    When I go to the list of users
    And I follow "New user"
    And I fill in "Username" with "Jon Doe"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "12345678"
    And I fill in "Email" with "jondoe@invalid.invalid"
    And I press "Save"
    Then I should see "Successfully created new user."
    And I should see "Jon Doe"

  Scenario: logging in
    Given I have a user called "Jon Doe" with email "jondoe@invalid.invalid" and password "12345678"
    When I go to the login page
    And I fill in "Email" with "jondoe@invalid.invalid"
    And I fill in "Password" with "12345678"
    And I press "Log in"
    Then I should see "Jon Doe"
    And I should see "You have successfully logged in"

  Scenario: Editing user
    Given I am logged in
    When I follow "My profile"
    And I fill in "Username" with "Jon Doe jr."
    And I press "Save"
    Then I should see "User updated successfully"
    And my username should be "Jon Doe Jr."