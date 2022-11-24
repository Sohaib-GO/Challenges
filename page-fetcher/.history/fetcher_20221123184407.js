const request = require("request");
const fs = require("fs");
const { rawListeners } = require("process");

const URL = process.argv[2];
const PATH = process.argv[3];

request(URL, (error, response, body) => {

  if (error) {
    console.log("Error:", error);
    return;
  }
  else if (fs.existsSync(PATH)) {
    console.log("Error: File already exists");
    return;
  }

  
});
    
