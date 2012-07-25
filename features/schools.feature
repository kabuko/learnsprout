Feature: Get Schools
    As a developer interested in educational organizations
    I want to be able to retrieve information about schools for an organization

    Scenario: List schools by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request schools for an organization with id 4fdaeaa92eea44952ab9e520
        * I should get a page of 7 items

    Scenario: List schools by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request schools for that org
        * I should get a page of 7 items

    Scenario: School by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a school with id 4fdac86eaa411b22c9a3fd2e for an org with id 4fdaeaa92eea44952ab9e520
        * I should get a school with id 4fdac86eaa411b22c9a3fd2e

    Scenario: School by org and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * I should get a school with id 4fdac86eaa411b22c9a3fd2e
