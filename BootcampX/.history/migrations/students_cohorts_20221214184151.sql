CREATE TABLE students_cohorts (
  id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(id),
  cohort_id INTEGER REFERENCES cohorts(id)
);
