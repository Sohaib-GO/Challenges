-- Get all cohorts with 18 or more students
-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohort.name,
  COUNT(*) AS total_students
  