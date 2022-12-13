-- Get all cohorts with 18 or more students
-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.
SELECT cohorts.name,
  COUNT(*) AS total_students
FROM students
  INNER JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(*) >= 18
ORDER BY total_students;