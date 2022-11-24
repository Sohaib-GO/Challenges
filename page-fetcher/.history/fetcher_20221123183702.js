const request = require("request");
const fs = require("fs");
const { rawListeners } = require("process");

const URL = process.argv[2];
const PATH = process.argv[3];

request(URL, (error, response, body) => {
  fs.writeFile(PATH, body, (err) => {
    if (err) {
      console.log(err);
    }
if (fs.existsSync(PATH)) {
  const stats = fs.statSync(PATH);
  const fileSizeInBytes = stats.size;
  console.log(`Downloaded and saved ${fileSizeInBytes} bytes to ${PATH}`);
  
    else {
      console.log(`Downloaded and saved ${body.length} bytes to ./index.html`);
    }
  });
});

