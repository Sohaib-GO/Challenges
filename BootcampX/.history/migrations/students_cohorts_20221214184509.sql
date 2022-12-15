CREATE TABLE students_cohorts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  teacher_id INTEGER REFERENCES teachers(id) NOT NULL,
  student_id INTEGER REFERENCES students(id) NOT NULL
  
);
