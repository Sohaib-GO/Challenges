-- List each assignment with the total number of assistance requests with it.
-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.
SELECT
  assignments.id,
  assignments.day,
  assignments.chapter,
  assignments.name,
  count(assistance_requests.id) as total_assistances
FROM
  assignments
  JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY
  assignments.id
ORDER BY
