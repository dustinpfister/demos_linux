
const sample_rate = process.argv[2] || 8000;
const sample_secs = process.argv[3] || 10;
const wave_count = process.argv[4] || 1;
const amplitude = parseFloat( process.argv[5] || 0.8 );
const output_mode = process.argv[6] || 'binary';


const COUNT_SAMPLES = sample_rate * sample_secs;
const SAMPLE_SIZE = 1;

let buff = Buffer.alloc(SAMPLE_SIZE);
let i_sample = 0;
while(i_sample < COUNT_SAMPLES){
    // figure current sample value
    const a_sample = i_sample / COUNT_SAMPLES;
    const a_waves = a_sample * wave_count % 1;
    const n = Math.round( 127.5 - Math.sin( Math.PI * 2 * a_waves ) * (128 * amplitude) );
    // write to buffer, and then to standard output if 'binary' output
    if(output_mode === 'binary'){
        buff.write( n.toString(16), 0, 'hex');
        process.stdout.write( buff );
    }
    // also have a plain 'dec' output for debugging as I write more of these
    if(output_mode === 'dec'){
        process.stdout.write( n.toString(10) + '\n' );
    }
    i_sample += 1;
}