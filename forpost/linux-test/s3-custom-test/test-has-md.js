#!/bin/node
var fs = require('fs');

fs.readdir(process.argv[2] || './', function(e, files){
    if(e){
        process.exit(1);
    }else{
        console.log(files);
        process.exit(0);
    }
});