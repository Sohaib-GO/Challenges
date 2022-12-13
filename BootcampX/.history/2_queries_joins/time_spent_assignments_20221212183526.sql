-- Get the total amount of time that a student has spent on all assignments.

SELECT SUM(duration)
FROM assignment_submissions
WHERE name = 
