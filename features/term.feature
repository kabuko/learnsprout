Feature: Get Terms
    As a developer interested in educational organizations
    I want to be able to retrieve information about terms for an organization

    Scenario: List terms by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request terms for an organization with id 4fdaeaa92eea44952ab9e520
        * I should get a list of 20 terms

    Scenario: List terms by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request terms for that org
        * I should get a list of 20 terms

    Scenario: List terms by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request terms for an org with id 4fdaeaa92eea44952ab9e520 and a school with id 4fdac86eaa411b22c9a3fd2e
        * I should get a list of 1 terms

    Scenario: List terms by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * When I request terms for that school
        * I should get a list of 1 terms

    Scenario: Term by school and term id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * When I request a term with id 4fdb21cb91e4e64a06000008 for that school
        * I should get a term with id 4fdb21cb91e4e64a06000008

    Scenario: Term by org id and term id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a term with id 4fdb21cb91e4e64a06000008 for an org with id 4fdaeaa92eea44952ab9e520
        * I should get a term with id 4fdb21cb91e4e64a06000008

    Scenario: Term by org and term id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request a term with id 4fdb21cb91e4e64a06000008 for that org
        * I should get a term with id 4fdb21cb91e4e64a06000008

    Scenario: Current term by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * When I request the current term for that school
        * I should get the current term

    Scenario: Current term by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request the current term for an org with id 4fdaeaa92eea44952ab9e520 and a school with id 4fdac86eaa411b22c9a3fd2e
        * I should get the current term
