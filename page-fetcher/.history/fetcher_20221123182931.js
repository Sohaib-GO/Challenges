const request = require('request');
const fs = require('fs');


const URL = process.argv[2];
const PATH = process.argv[3];



  fs.writeFile(PATH, URL, (err) => {
    if (err) {
      console.log(err);
    } else {
      console.log(`Downloaded and saved ${U.length} bytes to ./index.html`);
    }
  });




