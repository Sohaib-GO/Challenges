-- Perform the same query as before, but include the number of assistances as well.

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests.id) as numOfAssi
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
