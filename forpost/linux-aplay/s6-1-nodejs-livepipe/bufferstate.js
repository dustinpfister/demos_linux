// write a single sample to the given buffer
const writeSample = (buff, i_sample = 0, count_sample = 8000, wave_count = 1, amplitude = 0.3) => {
    const a_sample = i_sample / count_sample;
    const a_waves = a_sample * wave_count % 1;
    const n = Math.round( 127.5 - Math.sin( Math.PI * 2 * a_waves ) * (128 * amplitude) );
    buff.write( n.toString(16), 0, 'hex');
    return buff;
};
//-------- ----------
// LOOP
//-------- ----------
const buff = Buffer.alloc(1);
let i_sample = 0;
const count_sample = 8000;
let to_high = false;

const loop = () => {

    const t = setTimeout(loop, to_high ? 2000: 800);
    while( i_sample < count_sample ){
        writeSample(buff, i_sample, count_sample, 10, 0.25);
        to_high = !process.stdout.write(buff);
        i_sample += 1;
    }

console.warn(to_high);

    i_sample %= count_sample;
};
// drain event
process.stdout.on('drain', () => {
    process.stderr.write('We should be good now.\n');
    //to_high = false;
});

loop();