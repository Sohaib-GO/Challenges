CREATE TABLE Teachers  (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
start_date DATE ,
end_date DATE,
);

CREATE TABLE AssistanceRequests  (
  id SERIAL PRIMARY KEY NOT NULL,
assisgnment_id INTEGER NOT NULL,
student_id INTEGER ,
teacher_id INTEGER ,
date TEXT NOT NULL,
created_at TIMESTAMP ,
started_at TIMESTAMP ,
completed_at TIMESTAMP ,
student_feedback TEXT ,
teacher_feedback TEXT ,

);