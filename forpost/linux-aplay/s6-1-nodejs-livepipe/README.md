# s6-1-nodejs-livepipe

I wanted to start a script that generates sample data at the same rate at which aplay will consume it. This has proven to be a little bit involved as it would seem that I always end up setting the rate at which I generate data too high, or two low. I have worked out some crude code that seems to help shead some light on this but more work is needed to have somehting that I would write about in the post.

## Throttle sample rate

Some How it would be nice to check the current state of the buffer, and then Throttle the rate at which samples are being generated up and down as needed.