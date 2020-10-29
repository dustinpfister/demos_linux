let spawn = require('child_process').spawn;

let ps = spawn('ps', ['-e']);

ps.stdout.on('data', (data) => {
    
    console.log(data.toString());
    
});
