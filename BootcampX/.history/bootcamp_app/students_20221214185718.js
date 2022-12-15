const { Pool } = require("pg");

const pool = new Pool({
  user: "sohaibal",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

pool
  .query(
    `
SELECT id, name, cohort_id
FROM students
JOIN cohorts ON cohorts.id = cohort_id
LIMIT 5;
`
  )
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(
        `${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`
      );
    });
  });

  // a user can pass in a cohort name as a command line argument and the second argument will be the limit of the number of results to return

  