# linux-ffmpeg


## Getting started with frames

If I have a colletion of frames in the form of png files that follow a pattern like frame-0000.png to frame-9999.png and I want to make a video file from them at 30 frames per second I can do somehting like this:

```
$ ffmpeg -framerate 30 -i frame-%04d.png video.mp4
```

### The order of options matters

* the order of options matters if I place the -framerate 30 after the -i option I will get a 24 sec video file rather than a 20 sec video file.

### Files made with just this set of options will not work in all media players

The resulting file ceated with this set of options will work when I open it in chrome, and some other programes like OpenShot, but it will not work in VLC.

## Resources

Great anwser on the isshue of videos not playing back on VLC and other media players
https://superuser.com/a/705070

The ffmpeg man page that looks to be the same as what I am using
https://ffmpeg.org/ffmpeg.html

on filters such as scale
https://ffmpeg.org/ffmpeg-filters.html#scale-1

Wikipdia on MPEG-4
https://en.wikipedia.org/wiki/MPEG-4
