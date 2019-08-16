let spawn = require('child_process').spawn;

let ps = spawn('ps', ['-e','--no-headers', '-o', 'comm,pid']);

let text = '';
ps.stdout.on('data', (data) => {
    text += data.toString();
});

ps.stdout.on('end', (data) => {
    let commands = text.split(require('os').EOL);
    commands = commands.filter((comm)=>{
        return comm.match(/^n/)
    }).map((comm)=>{
        
        return comm.replace(/ +/, ':|:').split(':|:')
        
    })
    console.log(commands);
    // [ [ 'netns', '30' ], [ 'nfsiod', '47' ], [ 'node', '10018' ] ]
});
