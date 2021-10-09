#!/bin/node
var fs = require('fs');

var getMDFiles = function(files){
    return files.filter(function(fileName){
        var m = fileName.match(/.md$/);
        if(m){
            return true
        }
        return false;
    });
};

var getMDCount = function(files){
    return getMDFiles(files).length;
};

fs.readdir(process.argv[2] || './', function(e, files){
    if(e){
        process.exit(2);
    }else{
        if(getMDCount(files) > 0){
            process.exit(0);
        }else{
            process.exit(1);
        }
    }
});