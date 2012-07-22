Feature: Get Students
    As a developer interested in educational organizations
    I want to be able to retrieve information about students for an organization

    Scenario: List students by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request students for an organization with id 4fdaeaa92eea44952ab9e520
        * I should get a list of 50 students

    Scenario: List students by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request students for that org
        * I should get a list of 50 students

    Scenario: List students by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request students for an org with id 4fdaeaa92eea44952ab9e520 and a school with id 4fdac86eaa411b22c9a3fd2e
        * I should get a list of 50 students

    Scenario: List students by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * When I request students for that school
        * I should get a list of 50 students

    Scenario: Student by org id and student id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a student with id 4fdaca11aa411b22c9a3fd35 for an org with id 4fdaeaa92eea44952ab9e520
        * I should get a student with id 4fdaca11aa411b22c9a3fd35

    Scenario: Student by org and student id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request a student with id 4fdaca11aa411b22c9a3fd35 for that org
        * I should get a student with id 4fdaca11aa411b22c9a3fd35

    Scenario: Student by school and student id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * When I request a student with id 4fdaca11aa411b22c9a3fd35 for that school
        * I should get a student with id 4fdaca11aa411b22c9a3fd35
