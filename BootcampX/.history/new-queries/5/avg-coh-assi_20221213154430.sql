-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

Select cohorts.name, avg(completed_at - started_at)
From cohorts
Join students
