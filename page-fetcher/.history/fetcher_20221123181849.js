const request = require('request');
const fs = require('fs');


const URL = process.argv[2];
const PATH = process.argv[3];



const content = arg;

request(URL, (error, response, body) => {

  fs.writeFile
  console.log('error:', error); // Print the error if one occurred
  console.log('statusCode:', response && response.statusCode); // Print the response status code if a response was received
  console.log('body:', body); // Print the HTML for the Google homepage.
  