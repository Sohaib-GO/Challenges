const { Pool } = require("pg");

const pool = new Pool({
  user: "sohaibal",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

