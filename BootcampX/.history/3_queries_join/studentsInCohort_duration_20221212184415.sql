-- Get the total amount of time that all students from a specific cohort have spent on all assignments.


SELECT sum(assignment_submissions.duration) as total_duration

FROM assignment_submissions
JOIN students ON cohort.name = 'FEB12'
WHERE cohort.name = 'FEB12';