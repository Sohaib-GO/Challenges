
// Description" Implement an alarm clock / timer which will beep after a specified amount of time has passed. The user can specify an unlimited number of alarms using command line arguments

const arg = process.argv.slice(2);
for (let time of arg) {
  if (time < 0) {
    break;
  } else if (time > 1) {
    setTimeout(() => {
      // Beep sound
      process.stdout.write("\x07");
      console.log(`timer ${time} is done`);
    }, time * 1000);
  }
}
