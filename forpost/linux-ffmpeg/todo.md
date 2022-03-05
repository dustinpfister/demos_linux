# linux-ffmpeg todo list

## () - example on bash alises

## () - create a collection of frames from a video file
* have an example where a collection of frames is being created form a video file
```
https://stackoverflow.com/questions/10957412/fastest-way-to-extract-frames-using-ffmpeg
```

## () - example on the -codec aka -c option
* see about using the -c option to use a codec other than the default h264
in VLC tools > Codec Information I see this:
```
Codec: H264 - MPEG-4 AVC (part 10) (avc1)
```
I should be able to use other codecs with the mp4 container type

## ( done 03/05/2022 ) - example on piping, redirection, with ls, awk, and pipe value for -i option
* (done) have an example that has to do with concatanating videos
* (done) see about quickly creating a videos.txt file with ls\*.mp4 and awk
* (done ) This works by using ls and piping that to awk to then create a videos.txt file with redirection
* (done) The videos.txt file can then be used with ffmpeg as the -i option

## ( done 03/04/2022 ) - looks like there is a noise filter try it out
* (done) update gitignore so that no frames get sent to remote
* (done) use the -vf option with the noise filter

## ( done 03/04/2022 ) - Uisng ffmpeg to crop images
* (done) use the -vf option to crope images

## ( done 03/04/2022 ) - Using ffmpeg to scale images
* (done) I will want an example that uses ffmpeg to scale images using -vf option

## ( done 03/04/2022 ) - see about the pix_fmt option
* (done) Have an example on the -pix_fmt option

## ( done 03/04/2022 ) - list codecs and pix_fmts example
* (done) have a script that will just display what the options are when it comes to -codecs
* (done) also display -pix_fmts

## ( done 03/04/2022 ) start a s1-frames-basic example
* (done) Start a frames-basic example that is just using the -framerate and -i options
* (done) I will want a frames folder for this example