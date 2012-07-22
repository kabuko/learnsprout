Feature: Get Orgs
    As a developer interested in educational organizations
    I want to be able to retrieve information about all organizations I have access to

    Scenario: List all orgs
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request orgs
        * I should get the organization with id 4fdaeaa92eea44952ab9e520

    Scenario: Org by ID
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request an org with id 4fdaeaa92eea44952ab9e520
        * I should get an organization with id 4fdaeaa92eea44952ab9e520
