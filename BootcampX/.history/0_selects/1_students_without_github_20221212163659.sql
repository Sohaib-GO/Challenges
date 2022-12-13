SELECT first_name,
  last_name,
  email
FROM students
WHERE github_username IS NULL;