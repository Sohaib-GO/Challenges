-- Get the total amount of time that all students from a specific cohort have spent on all assignments.


SELECT SUM(assignment_submissions.duration) as total_duration

FROM assignment_submissions
