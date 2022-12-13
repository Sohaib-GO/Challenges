-- Perform the same query as before, but include the number of assistances as well.

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests.id) as numOfAssi
FROM teachers
