const request = require('request');
const fs = require('fs');


const URL = process.argv[2];
const PATH = process.argv[3];



const content = arg;

request(URL, (error, response, body) => {
  