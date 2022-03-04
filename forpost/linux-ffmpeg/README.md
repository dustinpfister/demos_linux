# linux-ffmpeg

A great little program to work with when it comes to video in Linux would be ffmpeg. This command line tool can be used to create a video file from a collection of frame images, as well as other files and resources to create a final video. It can be used with other programs like openShot, or in some cases even as a replacement for it when it comes to making use of all the various features. In fact many of these video editing programs are just front ends for ffmpeg.

### Getting started with making a video from frame images

If I have a collection of frames in the form of png files that follow a pattern like frame-0000.png to frame-9999.png and I want to make a video file from them at 30 frames per second I can do something like this:

```
$ ffmpeg -framerate 30 -i frame-%04d.png -pix_fmt yuv420p video.mp4
```

THE ORDER OF OPTIONS IS IMPORTANT, for example if I set the framerate option after the input option for the frame images this will result in the default framerate of 25 being used when will result in a longer video. Also the pix fmt option should be used in oder to get the exported video to work with various media players like VLC, Windows Media Player, and so forth.

### The order of options matters

* the order of options matters if I place the -framerate 30 after the -i option I will get a 24 sec video file rather than a 20 sec video file.

### Files made with just this set of options will not work in all media players

The resulting file cerated with this set of options will work when I open it in chrome, and some other programs like OpenShot, but it will not work in VLC.

## Resources

Great answer on the issue of videos not playing back on VLC and other media players
https://superuser.com/a/705070

The ffmpeg man page that looks to be the same as what I am using
https://ffmpeg.org/ffmpeg.html

on filters such as scale
https://ffmpeg.org/ffmpeg-filters.html#scale-1

Wikipedia on MPEG-4
https://en.wikipedia.org/wiki/MPEG-4
