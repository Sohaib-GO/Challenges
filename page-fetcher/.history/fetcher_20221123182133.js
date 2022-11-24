const request = require('request');
const fs = require('fs');


const URL = process.argv[2];
const PATH = process.argv[3];



request(URL, (error, response, body) => {
  fs.writeFile(PATH, , (err) => {
    if (err) {
      console.log(err);
    } else {
      console.log(`Downloaded and saved ${body.length} bytes to ./index.html`);
    }
  });

});
