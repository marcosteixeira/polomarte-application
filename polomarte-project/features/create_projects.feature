Feature: Projects registration
  In order to control the projects
  As a visitor
  I want to be able to manage the projects registration

  Scenario: Creating a new valid project
    Given I visit the project new page
    Then I should have 0 projects
    When I fill project_name field with "Foobar"
    And click on the "Salvar projeto" button
    Then I should have 1 projects
    And I should see "Project was successfully created."


  Scenario: Creating a new project without a name
    Given I visit the project new page
    When I fill project_name field with ""
    And click on the "Salvar projeto" button
    Then I should have 0 projects
    And I should see "Nome não pode ficar vazio"

  Scenario: Editing a existent project
    Given I have projects named School Project
    And I should have 1 projects
    And I visit the School Project edit page
    When I fill project_name field with "Edited School Project"
    And click on the "Salvar projeto" button
    Then I should have 1 projects
    And I should see "Project was successfully updated."
    And I should see "Edited School Project"


