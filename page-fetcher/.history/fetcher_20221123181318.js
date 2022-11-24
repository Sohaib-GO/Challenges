const request = require('request');
const fs = require('fs');


const arg = process.argv[2];



const content = arg;

try {
  fs.writeFileSync('./index.html', content);
  // file written successfully
} catch (err) {
  console.error(err);
}
