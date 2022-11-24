const request = require('request');
const fs = require('fs');


const arg = process.argv[2];



const content = arg;

request(content, (error, response, body) => {
  fs.writeFile('./index.html', body, (err) => {
    if (err) {
      console.log(err);
    } else {
      console.log(`Downloaded and saved ${body.length} bytes to ./index.html`);
    }
  });

  
}
