-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

-- Select the name of the student, their average completion time, and the average suggested completion time.
-- Order by average completion time from smallest to largest.
-- Only get currently enrolled students.
-- This will require data from students, assignment_submissions, and assignments.

SELECT s.name, AVG(asub.time_to_complete) AS avg_time_to_complete, AVG(a.estimated_time_to_complete) AS avg_estimated_time_to_complete
FROM students
    JOIN assignment_submissions AS asub
        ON students.id = asub.student_id
    JOIN assignments AS a
        ON asub.assignment_id = a.id
WHERE students.enrolled = true
GROUP BY s.name
HAVING avg_time_to_complete < avg_estimated_time_to_complete
ORDER BY avg_time_to_complete ASC;
