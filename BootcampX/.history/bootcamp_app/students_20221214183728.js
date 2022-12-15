const { Pool } = require('pg');

const pool = new Pool({
  user: '',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
