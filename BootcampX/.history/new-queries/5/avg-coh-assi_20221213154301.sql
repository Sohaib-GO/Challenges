-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

Select cohorts.name, avg(assignment_submissions.duration)
From cohorts
Join students
On cohorts.id = students.cohort_id
Join assignment_submissions
On students.id = assignment_submissions.student_id
Group by cohorts.name
Order by avg(assignment_submissions.duration) asc;
