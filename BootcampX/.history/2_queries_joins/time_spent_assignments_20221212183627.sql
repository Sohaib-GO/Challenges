-- Get the total amount of time that a student has spent on all assignments.

SELECT SUM(assignment_submissions.duration) as total_duration

FROM assignment_submissions
WHERE name = "Ibrahim Schimmel"
