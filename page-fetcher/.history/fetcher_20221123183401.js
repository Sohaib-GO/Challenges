const request = require('request');
const fs = require('fs');


const URL = process.argv[2];
const PATH = process.argv[3];



request(URL, (error, response, body) => {
  fs.writeFile(PATH, body, (err) => {
    if (err) {
      console.log(err);
    }
     // if file already exists, let user know
    if (response.statusCode === 200) {
      
    else {
      console.log(`Downloaded and saved ${body.length} bytes to ./index.html`);
    }
  });

});
