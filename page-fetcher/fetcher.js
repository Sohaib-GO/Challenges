const request = require("request");
const fs = require("fs");
const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

const URL = process.argv[2];
const PATH = process.argv[3];

request(URL, (error, response, body) => {
  if (error) {
    console.log("Error:", error);
    return;
  } else if (PATH === undefined || URL === undefined) {
    console.log("Error: Please enter a valid URL or path");
    return;
  } else if (fs.existsSync(PATH)) {
    rl.question(
      "File already exists. Do you want to overwrite it? (y/n) ",
      (answer) => {
        if (answer === "y") {
          fs.writeFile(PATH, body, () => {
            console.log(`Downloaded and saved ${body.length} bytes to ${PATH}`);
          });
        } else {
          console.log("Download cancelled");
        }

        rl.close();
      }
    );
  } else {
    fs.writeFile(PATH, body, (err) => {
      if (err) {
        console.log("Error:", err);
        return;
      } else  {
        console.log(`Downloaded and saved ${body.length} bytes to ${PATH}`);
        rl.close();
      }
    });
  }
});
