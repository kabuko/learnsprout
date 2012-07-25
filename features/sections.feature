Feature: Get Sections
    As a developer interested in educational organizations
    I want to be able to retrieve information about sections for an organization

    Scenario: List sections by org id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request sections for an organization with id 4fdaeaa92eea44952ab9e520
        * I should get a page of 50 items

    Scenario: List sections by org
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request sections for that org
        * I should get a page of 50 items

    Scenario: List sections by org id and school id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request sections for an org with id 4fdaeaa92eea44952ab9e520 and a school with id 4fdac86eaa411b22c9a3fd2e
        * I should get a page of 50 items

    Scenario: List sections by school
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * When I request sections for that school
        * I should get a page of 50 items

    Scenario: List next page of sections
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request sections for an org with id 4fdaeaa92eea44952ab9e520 and a school with id 4fdac86eaa411b22c9a3fd2e
        * When I request the next page
        * I should get a page of 30 items

    Scenario: Section by school and section id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a school with id 4fdac86eaa411b22c9a3fd2e for that org
        * When I request a section with id 4fdb1f6691e4e649b7000000 for that school
        * I should get a section with id 4fdb1f6691e4e649b7000000

    Scenario: Section by org id and section id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * When I request a section with id 4fdb1f6691e4e649b7000000 for an org with id 4fdaeaa92eea44952ab9e520
        * I should get a section with id 4fdb1f6691e4e649b7000000

    Scenario: Section by org and section id
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * When I request a section with id 4fdb1f6691e4e649b7000000 for that org
        * I should get a section with id 4fdb1f6691e4e649b7000000

    Scenario: Term for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a section with id 4fdb1f6691e4e649b7000000 for that org
        * When I request the term for that section
        * I should get a term with id 4fdb21cb91e4e64a0600000b

    Scenario: Teacher for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a section with id 4fdb1f6691e4e649b7000000 for that org
        * When I request the teacher for that section
        * I should get a teacher with id 4fdb1ffaaa411b22c9a49e10

    Scenario: School for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a section with id 4fdb1f6691e4e649b7000000 for that org
        * When I request the school for that section
        * I should get a school with id 4fdac86faa411b22c9a3fd2f

    Scenario: Course for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a section with id 4fdb1f6691e4e649b7000000 for that org
        * When I request the course for that section
        * I should get a course with id 4fdac84faa411b22c9a3fd1b

    Scenario: Students for section
        * I have entered my api key as fcb8534c-e4ee-4e02-8b22-9328db1dac18
        * I request an org with id 4fdaeaa92eea44952ab9e520
        * I request a section with id 4fdb1f6691e4e649b7000000 for that org
        * When I request the students for that section
        * I should get a list of 21 students
