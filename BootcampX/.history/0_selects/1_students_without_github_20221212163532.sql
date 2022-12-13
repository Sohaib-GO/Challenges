-- We need a list of all of the students that haven't added their Github username to their account yet, so that we can tell them to add it.

SELECT
  first_name,
  last_name,
  email
FROM
  students
WHERE
  github_username IS NULL;

  