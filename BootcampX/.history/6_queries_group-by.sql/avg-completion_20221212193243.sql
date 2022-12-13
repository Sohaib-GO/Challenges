-- Get currently enrolled students' average assignment completion time
-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled



SELECT students.name, AVG(assignment_submissions.end_date - assignment_submissions.start_date) AS average_completion_time
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_completion_time DESC;
