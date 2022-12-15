const { Client } = require('pg');

const client = new Client({
  user: 'sohaibal',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

