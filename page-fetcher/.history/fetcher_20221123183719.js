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
  rl.q
}

    else {
      console.log(`Downloaded and saved ${body.length} bytes to ./index.html`);
    }
  });
});

