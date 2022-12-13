-- Get the total number of assignment submissions for each cohort.
-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.


SELECT cohorts.name AS cohort_name,
  COUNT(*) AS total_submissions
FROM cohorts
JOIN 