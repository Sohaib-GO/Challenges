
-- Write a query that returns the total number of students from any number of cohorts combined.

 SELECT COUNT (id) AS total_students
  FROM students
  WHERE cohort_id = 1
  OR cohort_id = 2
  OR cohort_id = 3

