// POSITIONAL ARGUMENTS
const sample_rate = process.argv[2] || 10;
const sample_secs = process.argv[3] || 1;
const wave_count = process.argv[4] || 1;
const amplitude = parseFloat( process.argv[5] || 0.25 );
const output_mode = process.argv[6] || 'binary';
// CREATE DATA
const COUNT_SAMPLES = sample_rate * sample_secs;
const SAMPLE_SIZE = 1;
let buff = Buffer.alloc(SAMPLE_SIZE);
let i_sample = 0;
//-------- ----------
// CHUNK BYTES
//-------- ----------
let chunk_bytes = 10;
let cb_checktime = 10000;
//-------- ----------
// LOOP
//-------- ----------
let lt = new Date();
const loop = () => {
    if(i_sample < COUNT_SAMPLES){
        setTimeout(loop, 0);
        let i_chuck = 0;
        while(i_chuck < chunk_bytes && i_sample < COUNT_SAMPLES){
            const a_sample = i_sample / COUNT_SAMPLES;
            const a_waves = a_sample * wave_count % 1;
            const n = Math.round( 127.5 - Math.sin( Math.PI * 2 * a_waves ) * (128 * amplitude) );
            buff.write( n.toString(16), 0, 'hex');
            let output = buff;
            if(output_mode === 'dec'){
                output = n.toString(10) + '\n';
            }
            const result = process.stdout.write(output);
            // process.stdout.write will return false
            if(!result){
                const t = new Date() - lt;
                if(t > cb_checktime){
                    chunk_bytes -= 1;
                    lt = new Date();
                    process.stderr.write('Over High Water Mark, need to lower chunk bytes.\n');
                    process.stderr.write('chunk_bytes: ' + chunk_bytes + '.\n');
                 }
            }
            i_sample += 1;
            i_chuck += 1;
        }
    }
};
loop();