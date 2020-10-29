// list the URIS for all markdown files in the current working path or given path
let exec = require('child_process').exec,
path = require('path');

let dir_root = process.argv[2] || process.cwd(),
dir_find = path.join(dir_root, '*.md');

// start find command
let find = exec('find ' + dir_find),
lines = false;
find.stdout.on('data', (data) => {
    let URI = data.toString().split('\n');
    URI = URI.map((uri)=>{
        return '\'' + uri + '\'';
    });
    if(URI[URI.length - 1] === '\'\''){
        URI.pop();
    }
    lines = true;
    process.stdout.write('[' + URI);
});
find.on('exit', (data) => {
    if(lines){
        process.stdout.write(']\n');
    }
});
