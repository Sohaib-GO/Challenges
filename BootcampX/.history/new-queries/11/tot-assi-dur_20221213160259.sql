-- Get each day with the total number of assignments and the total duration of the assignments.

-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.

 SELECT day, count(day) as num_assignments, sum(completed_at-started_at) as total_duration