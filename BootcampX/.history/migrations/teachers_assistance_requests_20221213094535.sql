CREATE TABLE Teachers  (
  id SERIAL PRIMARY KEY NOT  ,
  name TEXT NOT NULL,
start_date TEXT ,
end_date TEXT,
is_active INTEGER NOT NULL,
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