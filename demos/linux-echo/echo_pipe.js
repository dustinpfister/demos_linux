// do something with data that is being
// piped in from the standard input from a 
// command like linux echo
process.stdin.on('data', (data) => {
    console.log(data.toString('hex'));
});

// $ echo "hello" | node echo_pipe
// 68656c6c6f0a
