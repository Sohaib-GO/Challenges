const request = require('request');
const fs = require('fs');


const arg = process.argv[2];



const content = arg;

try {
  fs.writeFileSync('/Users/joe/test.txt', content);
  // file written successfully
} catch (err) {
  console.error(err);
}
