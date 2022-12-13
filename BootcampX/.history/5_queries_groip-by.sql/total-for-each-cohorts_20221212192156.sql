-- Get the total number of assignment submissions for each cohort.
-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.


SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
