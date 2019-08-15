let spawn = require('child_process').spawn;

let processBackslash = process.argv[2] === '-E' ? false : true,
option1 = processBackslash ? '-e' : '-E';

let echo = spawn('echo', [option1, 'So this is a line \\n and another line \\n\\n'], {
    stdio: ['pipe', 'inherit', 'pipe']
});
