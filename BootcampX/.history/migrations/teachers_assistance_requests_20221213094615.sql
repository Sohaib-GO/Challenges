CREATE TABLE Teachers  (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
start_date DATE ,
end_date TEXT,
is_active BOOLEAN NOT NULL DEFAULT TRUE,
);

CREATE TABLE AssistanceRequests  (
  id INTEGER PRIMARY KEY ,
assisgnment_id INTEGER NOT NULL,
student_id INTEGER NOT NULL,
teacher_id INTEGER NOT NULL,
date TEXT NOT NULL,
created_at TEXT ,
started_at TEXT ,
completed_at TEXT ,
student_feedback TEXT ,
teacher_feedback TEXT ,

);