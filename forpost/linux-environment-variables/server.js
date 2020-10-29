#!/bin/node
let http = require('http'),
fs = require('fs'),
path = require('path'),

// use the $PORT enviornment variable if it is there
port = process.env.PORT || process.argv[3] || 8888;

let server = http.createServer((req, res) => {
    res.write('foo');
    res.end();
});

// start server
server.listen(port, function () {
    console.log('server up on port: ' + port);
});
