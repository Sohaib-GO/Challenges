-- Get all of the students that don't have an email or phone number.

SELECT id,
  name
FROM students
WHERE email IS NULL
OR phone IS NULL
