SELECT first_name,
  last_name,
  email
FROM students
WHERE github IS NULL;
ORDER BY cohort_id
