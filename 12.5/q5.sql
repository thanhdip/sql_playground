/*
Created index on:
deptId in course table
and used crsCode index on Course

Rewrote the query to use no joins
*/
USE springboardopt;

-- -------------------------------------
SET @v1 = 1612521;
SET @v2 = 1145072;
SET @v3 = 1828467;
SET @v4 = 'MGT382';
SET @v5 = 'Amber Hill';
SET @v6 = 'MGT';
SET @v7 = 'EE';			  
SET @v8 = 'MAT';

-- 5. List the names of students who have taken a course from department v6 (deptId), but not v7.
With in_dept as (
SELECT crsCode
FROM
    Course
WHERE
    deptId = @v6),
    
out_dept as (
SELECT 
    crsCode
FROM
    Course
WHERE
    deptId = @v7
),

student_list as 
(
select studId
from transcript
where crsCode in 
(select * from in_dept)
and
crsCode not in 
(select * from out_dept)
)

select name
from student 
where id in (select studId as id from student_list)
