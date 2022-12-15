const { Pool } = require("pg");

const pool = new Pool({
  user: "sohaibal",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});
const cohortName = process.argv[2]

pool
  .query(
    // use parameterized queries
    `
    SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
    FROM assistance_requests
    JOIN teachers ON teachers.id = teacher_id
    JOIN students ON students.id = student_id
    JOIN cohorts ON cohorts.id = cohort_id
    WHERE cohorts.name = $1
    ORDER BY teacher;
    `, [cohortName] 
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(`${user.cohort}: ${user.teacher}`);
    }


  });


