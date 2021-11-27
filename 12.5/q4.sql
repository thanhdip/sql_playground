/*
Created indexes for:
name on professor table
profId on teaching table
crsCode on transcript table
semester on transcript table
id on student

After that, rewrote the query to utilize the indexes. No joins.
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

-- 4. List the names of students who have taken a course taught by professor v5 (name).
with crs_sem as 
(SELECT 
    crsCode, semester
FROM
    teaching
WHERE
    profId IN (SELECT 
            id AS proId
        FROM
            professor
        WHERE
            name = @v5))
,
student_list as
(
SELECT 
    studId
FROM
    transcript
where crsCode in (select crsCode from crs_sem)
and semester in (select semester from crs_sem))

Select name
from student
where id in (select studId as id from student_list)