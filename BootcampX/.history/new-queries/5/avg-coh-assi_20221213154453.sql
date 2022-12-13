-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

Select cohorts.name, avg(completed_at - started_at) as avg_time
From cohorts
Join students
On cohorts.id = students.cohort_id
Join assistance_requests
On students.id = assistance_requests.student_id
Group by cohorts.name
Order by avg(completed_at - started_at);
