// sure I could use echo in nodejs via spawn
let spawn = require('child_process').spawn;

// to do so I will want to use the stdio
// option of spawn to set 'inherit' rather 
// than the default 'pipe' value for the
// standard output
let echo = spawn('echo', ['Hello world, spawn style using linux echo.'], {
    stdio: ['pipe', 'inherit', 'pipe']
});

// but there is also the sdout property of the process global
let os = require('os');
process.stdout.write('Hello World, process stdout style.' + os.EOL);

// or just simply console.log
console.log('Hello world, console log style');



