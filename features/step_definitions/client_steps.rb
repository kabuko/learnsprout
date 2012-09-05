# encoding: utf-8
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'learnsprout'

Before do
end

After do
end

# Miscellaneous

Given /^I should get a page of (\d+) items$/ do |count|
    @page.items.count.should == Integer(count)
end

Given /^(?:When )?I request the next page$/ do
    @page = @page.next
end

# Client

Given /^I have entered my api key as ([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})$/ do |api_key|
    @client = LearnSprout::Client.new(api_key)
end

Given /^(?:When )?I request orgs$/ do
    @orgs = @client.orgs
end

Given /^I should get a list of (\d+) orgs$/ do |count|
    @orgs.count.should == Integer(count)
end

Given /^I should get the organization with id ([a-f0-9]{24})$/ do |org_id|
    org = @orgs.first
    org.org_id.should == org_id
end

Given /^I should get an organization with id ([a-f0-9]{24})$/ do |org_id|
    @org.org_id.should == org_id
end

Given /^(?:When )?I request an org with id ([a-f0-9]{24})$/ do |org_id|
    @org = @client.org(org_id)
end

# Schools

Given /^(?:When )?I request schools for an organization with id ([a-f0-9]{24})$/ do |org_id|
    @page = @client.schools(org_id)
end

Given /^(?:When )?I request a school with id ([a-f0-9]{24}) for that org$/ do |school_id|
    @school = @org.school(school_id)
end

Given /^I should get a school with id ([a-f0-9]{24})$/ do |school_id|
    @school.school_id.should == school_id
end

Given /^(?:When )?I request schools for that org$/ do
    @page = @org.schools
end

Given /^(?:When )?I request a school with id ([a-f0-9]{24}) for an org with id ([a-f0-9]{24})$/ do |school_id, org_id|
    @school = @client.school(org_id, school_id)
end

# Students

Given /^(?:When )?I request students for an organization with id ([a-f0-9]{24})$/ do |org_id|
    @page = @client.students(org_id)
end

Given /^I should get a list of (\d+) students$/ do |count|
    @students.count.should == Integer(count)
end

Given /^(?:When )?I request students for that org$/ do
    @page = @org.students
end

Given /^I should get a student with id ([a-f0-9]{24})$/ do |student_id|
    @student.student_id.should == student_id
end

Given /^(?:When )?I request a student with id ([a-f0-9]{24}) for that school$/ do |student_id|
    @student = @school.student(student_id)
end

Given /^(?:When )?I request a student with id ([a-f0-9]{24}) for an org with id ([a-f0-9]{24})$/ do |student_id, org_id|
    @student = @client.student(org_id, student_id)
end

Given /^(?:When )?I request a student with id ([a-f0-9]{24}) for that org$/ do |student_id|
    @student = @org.student(student_id)
end

Given /^(?:When )?I request students for an org with id ([a-f0-9]{24}) and a school with id ([a-f0-9]{24})$/ do |org_id, school_id|
    @page = @client.students(org_id, :school_id => school_id)
end

Given /^(?:When )?I request students for that school$/ do
    @page = @school.students
end

# Sections

Given /^When I request sections for an organization with id ([a-f0-9]{24})$/ do |org_id|
    @page = @client.sections(org_id)
end

Given /^I should get a list of (\d+) sections$/ do |count|
    @sections.count.should == Integer(count)
end

Given /^(?:When )?I request sections for that org$/ do
    @page = @org.sections
end

Given /^(?:When )?I request sections for an org with id ([a-f0-9]{24}) and a school with id ([a-f0-9]{24})$/ do |org_id, school_id|
    @page = @client.sections(org_id, :school_id => school_id)
end

Given /^(?:When )?I request sections for that school$/ do
    @page = @school.sections
end

Given /^(?:When )?I request a section with id ([a-f0-9]{24}) for that school$/ do |section_id|
    @section = @school.section(section_id)
end

Given /^I should get a section with id ([a-f0-9]{24})$/ do |section_id|
    @section.section_id.should == section_id
end

Given /^(?:When )?I request a section with id ([a-f0-9]{24}) for an org with id ([a-f0-9]{24})$/ do |section_id, org_id|
    @section = @client.section(org_id, section_id)
end

Given /^(?:When )?I request a section with id ([a-f0-9]{24}) for that org$/ do |section_id|
    @section = @org.section(section_id)
end

Given /^(?:When )?I request the term for that section$/ do
    @term = @section.term
end

Given /^(?:When )?I request the students for that section$/ do
    @students = @section.students
end

Given /^(?:When )?I request the teacher for that section$/ do
    @teacher = @section.teacher
end

Given /^(?:When )?I request the school for that section$/ do
    @school = @section.school
end

Given /^(?:When )?I request the course for that section$/ do
    @course = @section.course
end

# Teachers

Given /^When I request teachers for an organization with id ([a-f0-9]{24})$/ do |org_id|
    @page = @client.teachers(org_id)
end

Given /^(?:When )?I request teachers for that org$/ do
    @page = @org.teachers
end

Given /^(?:When )?I request teachers for an org with id ([a-f0-9]{24}) and a school with id ([a-f0-9]{24})$/ do |org_id, school_id|
    @page = @client.teachers(org_id, :school_id => school_id)
end

Given /^(?:When )?I request teachers for that school$/ do
    @page = @school.teachers
end

Given /^(?:When )?I request a teacher with id ([a-f0-9]{24}) for that school$/ do |teacher_id|
    @teacher = @school.teacher(teacher_id)
end

Given /^I should get a teacher with id ([a-f0-9]{24})$/ do |teacher_id|
    @teacher.teacher_id.should == teacher_id
end

Given /^(?:When )?I request a teacher with id ([a-f0-9]{24}) for an org with id ([a-f0-9]{24})$/ do |teacher_id, org_id|
    @teacher = @client.teacher(org_id, teacher_id)
end

Given /^(?:When )?I request a teacher with id ([a-f0-9]{24}) for that org$/ do |teacher_id|
    @teacher = @org.teacher(teacher_id)
end

Given /^(?:When )?I request the school for that teacher$/ do
    @school = @teacher.school
end

# Terms

Given /^When I request terms for an organization with id ([a-f0-9]{24})$/ do |org_id|
    @page = @client.terms(org_id)
end

Given /^(?:When )?I request terms for that org$/ do
    @page = @org.terms
end

Given /^(?:When )?I request terms for an org with id ([a-f0-9]{24}) and a school with id ([a-f0-9]{24})$/ do |org_id, school_id|
    @page = @client.terms(org_id, :school_id => school_id)
end

Given /^(?:When )?I request terms for that school$/ do
    @page = @school.terms
end

Given /^(?:When )?I request a term with id ([a-f0-9]{24}) for that school$/ do |term_id|
    @term = @school.term(term_id)
end

Given /^I should get a term with id ([a-f0-9]{24})$/ do |term_id|
    @term.term_id.should == term_id
end

Given /^(?:When )?I request a term with id ([a-f0-9]{24}) for an org with id ([a-f0-9]{24})$/ do |term_id, org_id|
    @term = @client.term(org_id, term_id)
end

Given /^(?:When )?I request a term with id ([a-f0-9]{24}) for that org$/ do |term_id|
    @term = @org.term(term_id)
end

Given /^(?:When )?I request the current term for that school$/ do
    @term = @school.current_term
end

Given /^I should get the current term$/ do
    Date.today.should >= @term.start_date
    Date.today.should <= @term.end_date
end

Given /^(?:When )?I request the current term for an org with id ([a-f0-9]{24}) and a school with id ([a-f0-9]{24})$/ do |org_id, school_id|
    @term = @client.current_term(org_id, school_id)
end

Given /^(?:When )?I request the sections for that term$/ do
    @sections = @term.sections
end

# Courses

Given /^When I request courses for an organization with id ([a-f0-9]{24})$/ do |org_id|
    @page = @client.courses(org_id)
end

Given /^(?:When )?I request courses for that org$/ do
    @page = @org.courses
end

Given /^(?:When )?I request courses for an org with id ([a-f0-9]{24}) and a school with id ([a-f0-9]{24})$/ do |org_id, school_id|
    @page = @client.courses(org_id, :school_id => school_id)
end

Given /^(?:When )?I request courses for that school$/ do
    @page = @school.courses
end

Given /^(?:When )?I request a course with id ([a-f0-9]{24}) for that school$/ do |course_id|
    @course = @school.course(course_id)
end

Given /^I should get a course with id ([a-f0-9]{24})$/ do |course_id|
    @course.course_id.should == course_id
end

Given /^(?:When )?I request a course with id ([a-f0-9]{24}) for an org with id ([a-f0-9]{24})$/ do |course_id, org_id|
    @course = @client.course(org_id, course_id)
end

Given /^(?:When )?I request a course with id ([a-f0-9]{24}) for that org$/ do |course_id|
    @course = @org.course(course_id)
end

Given /^I request the school for that course$/ do
    @school = @course.school
end

