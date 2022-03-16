# linux-raspberry-pi-os-build-blender

The aim for this was to find out how to build blender from source code in raspberry pi os. Thus far I run into errors when trying to just call make from the command line for a 'generic distro' following the build instructions on [wiki.blender.org](https://wiki.blender.org/wiki/Building_Blender/Linux/Generic_Distro).

## Pulling down the source code for 2.79b

I can get as far as pulling down the source code for a specific version of course.

```
$ git clone -b v2.79b --depth 1 https://github.com/blender/blender
```

After that I should then just be able to just cd into the blender file and use make

```
$ cd blender
$ make update
$ make
```

A make update does not seem to do anything though when it comes to updating submodules. So then when I try a make I get errors that seem to have to do with gcc and missing assets. It would seem that cloning down the source code will pull down a lot, but not everything, and I am dealing with problems that have to do with the compiler that I am using.

## Pulling down the latest source code

There is no way that I am going to get a late version of blender working on raspberry pi os, at least not without making this a life mission. Still for the hell of it I took a moment to give it a try anyway.

When I do a make update

```
$ make update
```

Something actually happed when it comes to pulling down data for the local and addons though which is a plus

## Errors when compiling

Even if things goe well when it comes to doing a make update I still run into problems when trying to compile, my guess is that this must have to do with using armhf rather than intel. The error logs of cousre are giving me some clues as to what the next step would be when it comes to making progress with this if I choose to sink more time into this. 

## pre compiled binaries

I would prefer to just find some recompiled binaries as portable stand alone bins in a folder, there are a lot of projects where I have success with that. However I am having a hard time finding that so far at least at the sources that I have checked online, which was a major diving reason as to why I look into building blender from source. I ran into problems running blender on a later version of raspberry pi os so I want to have a way to run more than one binaries, and with older tied yet true versions.

## This ending up being an epic failure

I notice that I was ruining into errors because a library was not installed called libjpeg, when I went to install this I was expecting it to just be a single little library and that is it. I end ending up making a major change to the raspberry pi os install and not I might need to re image.

