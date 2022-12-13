-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

-- Select the name of the student, their average completion time, and the average suggested completion time.
-- Order by average completion time from smallest to largest.
-- Only get currently enrolled students.
-- This will require data from students, assignment_submissions, and assignments.

SELECT name.students AS name, AVG(assignment_submissions.time_to_complete) AS average_completion_time, AVG(assignments.estimated_time_to_complete) AS average_estimated_time_to_complete
