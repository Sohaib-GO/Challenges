-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.


SELECT cohorts.name, avg(completed_at - started_at) as avg_time
From cohorts
Join students
On cohorts.id = students.cohort_id
Join assistance_requests
On students.id = assistance_requests.student_id
Group by cohorts.name
Order by avg_time desc;