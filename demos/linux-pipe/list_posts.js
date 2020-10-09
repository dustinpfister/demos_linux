// list the URIS for all markdown files in the current working path or given path
let exec = require('child_process').exec;

let find = exec('find *.js');

find.stdout.on('data', (data) => {
  process.stdout.write(data.toString() + '\n');
});
