-- 1. Concatenate Course Name and Semester:
SELECT course_name || ' - ' || semester 
FROM courses;


-- 2. Find Courses with Labs on Fridays:

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';

--3. Upcoming Assignments:

SELECT *
FROM assignments
WHERE due_date > date('now');

--4.Count Assignments by Status:

SELECT status, COUNT(*) AS total_assignments
FROM assignments
GROUP BY status;
 
 --5.Longest Course Name:

SELECT course_name
FROM courses
ORDER BY length(course_name) DESC
LIMIT 1;
 
--6.Uppercase Course Names:

SELECT upper(course_name) AS course_name_upper
FROM courses;

--7.Assignments Due in September:

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

--8.Assignments with Missing Due Dates:

SELECT *
FROM assignments
WHERE due_date IS NULL;

--Optional Tasks:
-- 1.Total assignments per course
SELECT c.course_id, COUNT(a.id) AS total_assignments
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
GROUP BY c.course_id;


-- 2.Courses without assignments
SELECT c.*
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
WHERE a.id IS NULL;
