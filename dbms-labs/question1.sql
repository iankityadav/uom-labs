-- Create Tables using create statement
-- Insert rows to individual tables using insert statement
-- Alter table section add new field section and update the records
-- Delete brown’s grade report
-- Drop the table section
-- Student
--Name Regno Class Major 
create table student(
    name varchar,
    regno numeric,
    class numeric,
    major varchar
);
select *
from student;
--Smith 17 1 CS 
--Brown 8 2 CS
insert into student
values ('Smith', 17, 1, 'CS'),
    ('Brown', 8, 2, 'CS');
--CourseName CourseNumber CreditHours Department 
--Intro to computer science CS1310 4 CS 
--Data Structure CS3320 4 CS 
--Discrete Mathematics MATH2410 3 MATH 
--Database CS3380 3 CS 
create table course (
    "CourseName" varchar,
    "CourseNumber" varchar,
    "CreditHours" numeric,
    "Department" varchar
);
select *
from course;
insert into course
values ('Intro to computer science', 'CS1310', 4, 'CS'),
    ('Data Structure', 'CS3320', 4, 'CS'),
    ('Discrete Mathematics', 'MATH2410', 3, 'MATH'),
    ('Database', 'CS3380', 3, 'CS');
--SectionIndentifier CourseNumber Year Instructor 
--85 MATH2410 98 King 
--92 CS1310 98 Andreson 
--102 CS3320 99 Knuth 
--112 MATH2410 99 Chang 
--119 CS1310 99 Andreson 
--135 CS3380 99 Stone 
create table section(
    "SectionIndentifier" numeric,
    "CourseNumber" varchar,
    "Year" numeric,
    "Instructor" varchar
);
select *
from section;
insert into "section"
values ('85', 'MATH2410', '98', 'King'),
    ('92', 'CS1310', '98', 'Andreson'),
    ('102', 'CS3320', '99', 'Knuth'),
    ('112', 'MATH2410', '99', 'Chang'),
    ('119', 'CS1310', '99', 'Andreson'),
    ('135', 'CS3380', '99', 'Stone');
--Table: Grade_report 
--Regno Section_identifier Grade 
--17 112 B 
--17 119 C 
--8 85 A 
--8 92 A 
--8 102 B 
--8 135 A 
create table grade_report (
    "Regno" numeric,
    "Section_identifier" varchar,
    "Grade" char
);
select *
from grade_report;
insert into grade_report
values ('17', '112', 'B'),
    ('17', '119', 'C'),
    ('8', '85', 'A'),
    ('8', '92', 'A'),
    ('8', '102', 'B'),
    ('8', '135', 'A');
alter table "section"
add "section" varchar;
delete from grade_report
where "Regno" = (
        select regno
        from student
        where "name" = 'Brown'
    );
select *
from grade_report gr;
drop table "section";