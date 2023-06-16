# s6-1-nodejs-livepipe

I wanted to start a script that generates sample data at the same rate at which aplay will consume it. This has proven to be a little bit involved as it would seem that I always end up setting the rate at which I generate data too high, or two low. I have worked out some crude code that seems to help shead some light on this but more work is needed to have somehting that I would write about in the post.

## Throttle sample rate

Some How it would be nice to check the current state of the buffer, and then Throttle the rate at which samples are being generated up and down as needed.

## backpressuring and drain event

Looks like I am dealing with a problem that has to do with backpresshering and the drain event. It would seem that the drain event will fire when the buffer is empty which in my case is no good. I need for writing to contine before the buffer is fully drained, also it would seem that is not the case as when writing starts up again it will stop again right alway.

https://nodejs.org/en/docs/guides/backpressuring-in-streams

## How to check current status of the buffer?

Some how there must be a way to check the current status of the buffer, and use that as a way to adjust things rather than delaing with the drain event that just seems to not be working at all