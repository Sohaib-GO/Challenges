CREATE TABLE Teachers  (
  id INTEGER PRIMARY KEY ,
  name TEXT NOT NULL,
start_date TEXT ,
end_date TEXT,
is_active INTEGER NOT NULL,
);

CREATE TABLE AssistanceRequests  (
  id INTEGER PRIMARY KEY ,
assisgnment_id INTEGER NOT NULL,
teacher_id INTEGER NOT NULL,
date TEXT NOT NULL,
created_at TEXT ,
  
);