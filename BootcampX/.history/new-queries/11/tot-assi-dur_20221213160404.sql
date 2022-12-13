-- Get each day with the total number of assignments and the total duration of the assignments.

-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.

 SELECT assignments.day, count(assignments.id) as total_assignments, sum(duration) as total_duration
  FROM assignments
  GROUP BY assignments.day
  ORDER BY assignments.day;
  