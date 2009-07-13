Feature: Manage nodes
  In order to manage Xen nodes
  As an administrator
  I want to create and manage Xen nodes
  
  Scenario: Register new nodes
    Given I am on the new nodes page
    And I fill in "IP address" with "192.168.2.2"
    And I press "Create"
    Then I should see "192.168.2.2 successfully attached."

  Scenario: Delete node
    Given I am logged in as an administrator
    And I have a node called "192.168.2.2"
    And I am on the list of nodes
    When I follow "Delete"
    Then I should see "192.168.2.2 successfully deattached."
    And I should see "No nodes found"

  Scenario: Edit node
    Given I am logged in as an administrator
    And I have a node called "192.168.2.2"
    And I am on the list of nodes
    And I follow "192.168.2.2"
    And I fill in "Location" with "Copenhagen"
    And I press "Update"
    Then I should see "192.168.2.2 successfully updated."