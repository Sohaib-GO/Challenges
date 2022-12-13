-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.

Select cohorts.name, sum(completed_at - started_at) as total_duration
From cohorts
Join students
