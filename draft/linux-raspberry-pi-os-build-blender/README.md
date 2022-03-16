# linux-raspberry-pi-os-build-blender

The aim for this was to find out how to build blender from source code in raspberry pi os. Thus far I run into errors when trying to just call make from the command line for a 'generic distro' following the build instructrions on [wiki.blender.org](https://wiki.blender.org/wiki/Building_Blender/Linux/Generic_Distro).

## Pulling down the source code

I can get as far as pulling down the source code for a specific version of course

```
$ git clone -b v2.79b --depth 1 https://github.com/blender/blender
```

After that I should then just be able to just cd into the blender file and use make

```
$ cd blender
$ make update
$ make
```

However after that I get errors that seem to have to do with gcc and missing assets. It would seem that cloning down the source code will pull down a lot, but not everything.


