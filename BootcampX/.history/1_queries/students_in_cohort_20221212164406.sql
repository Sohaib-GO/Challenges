-- Get the names of all of the students from a single cohort

SELECT id, name
FROM students
WHERE cohort_id = 2
ORDER BY name;

