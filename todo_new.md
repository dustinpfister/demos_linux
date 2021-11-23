# demos_linux todo list

## Ram drives


### () linux-ramdrive
* start a new post where the goal is to create a linux ram drive
* it would seem that this can be done with the mount command
```
https://www.linuxbabe.com/command-line/create-ramdisk-linux
```





## Linux folders

Start and expand a collection of posts on the various folders that compose a linux system. This is folders like /bin, /sbin, ect that show up in the $PATH variable.
```
$ echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games
```
However this can also include posts on holders like /home, /boot, ect. As well as specific kinds of folders in these folders that show up in the root folder of a file system such as /home/user-name/.config, /usr/local/bin, /usr/local/lib, ect. The file names for the posts should then follow a pattern like
```
linux-folders-usr-local-lib
```
to refer to
```
/usr/local/lib
```
In a Linux system.


### () - linux-folders-usr
* start a draft folder on some scripts that have to do with the usr folder
```
https://tldp.org/LDP/Linux-Filesystem-Hierarchy/html/usr.html
```

### () - linux-folders-usr-bin

### () - linux-folders-usr-local-bin

### () - linux-folders-usr-local-lib

### ( done 11/15/2021 ) - linux-folders-bin

### () - linux-folders-sbin

### () - linux-folders-boot

### ( done 11/12/2021 ) - linux-folders-home

### () - linux-folders-etc

### () - linux-folders

### ( done 11/17/2021) - linux-folders-dev


## More posts on raspberry pi os

I like raspberry pi boards, everything about them is just plain awesome. I wrote a few posts on raspberry pi os in general rather than various things that might be more or less the same on most Linux systems. However it might be a good idea to continue to expand this kind of sub collection of posts on things that might just be central to raspberry pi os.

### x.1 - linux-raspberry-pi-os-upgrading
* write a post on upgrading raspberry pi os
* why to use sudo apt full-upgrade over sudo apt-get upgrade

Good link as to why

```
https://www.raspberrypi.org/forums/viewtopic.php?p=1567915#p1567915 
```

```
$ sudo apt update
$ sudo apt full-upgrade
```

### x.2 - linux-raspberry-pi-os-nodejs-setup
* write a post on how to set up nodejs with more than one binary for arm7.1

This blog outlined that there are arm7.1 binarys that can be used
```
https://azukidigital.com/blog/2019/electron-application-on-raspberry-pi/
```

The urls to care about at nodejs.org ( linux-arm7l.tar.gz for pi 4)
```
https://nodejs.org/dist/
https://nodejs.org/dist/v16.9.1/
```


### x.x - linux-raspberry-pi-os-raspi-config

### x.x - linux-raspberry-pi-os-create-new-user

### x.x - linux-raspberry-pi-os-lxdepi-lxsession-autostart

### x.x - linux-raspberry-pi-os-wifi

### x.x - linux-raspberry-pi-os-





## - More posts on some basic commands

There is writing even more on various basic commands that I have not wrote posts on just yet.

### ( done 11/19/2021 ) - linux-xxd
* (done) This is a command that is like cat, only it can dump hex to the console

### ( done 10/08/2021 ) - linux-test
* (done) start a draft folder on the linux-test command
* (done) the example in linux-ln is a good one

### ( done 10/01/2021 ) - linux-ln
* (done) start a linux-ln draft folder
* (done) have at least three sections
* (done) write the post

### ( done 07/05/2021 ) x.1 - linux-rm
* (done) s1 - have a basic demo with no options
* (done) s2 - have a rm -d demo
* (done) s3 - have a rm -rd demo

### ( done 07/06/2021 ) x.2 - linux-pwd
* (done) basic s1 example of pwd
* (done) s2 example can be using cd to change the pwd
* (done) s3 section on $pwd var

### ( done 07/07/2021 ) x.3 - linux-basename
* (done) s1 example using basename by itself
* (done) s2 example using echo, piping, xargs and basename
* (done) s3 example using find and piping

### ( done 07/08/2021 ) x.4 - linux-uname
* (done) s1 example on uname by itself
* (done) s2 example on uname -a
* (done) s3 example on other options

### ( done 07/09/2021 ) x.5 - linux-sleep
* (done) s1 example of sleep command
* (done) s2 example of using sleep command in a loop





## xx/xx/xx to xx/xx/xx - A few bash scripts using git

The plan here is to write a few bash scripts that have to do with using git as a way to create a collection of text files, and to also tract changes in word count as the collection of text grows or changes.

### () x.1 - linux-bash-script-example-git-posts-create-folder

### () x.2 - linux-bash-script-example-git-posts-write

### () x.3 - linux-bash-script-example-git-posts-wc





## xx/xx/xx to xx/xx/xx - More basic commands

### (  ) x.1 - linux-ln
* s1 example on a soft link

### (  ) x.1 - linux-xset
* basic s1 example of xset -q to just see current status
* s2 example on xset -s




## 06/28/21 to 07/02/21 - More posts on commands

The focus for this week will be to just write a few quick posts on some additional basic linux commands that I have not got around to just yet. This means looking into what I have not wrote a post about in the main bin folder thus far. If I have wrote a post on the linux echo command then I should also write posts on commands like linux cp, linux date, and so forth. However this might be the last week for these kinds of posts as I need to find out what the long term direction is with this collection of content.

### x.1 - ( done 06/28/21 ) linux-top
* (done) this command is a must when it comes to checkout out what the current status is with cpu load per process.

### x.2 - ( done 06/29/21 ) linux-cp
* (done) at least one if not more demos on the cp command

### x.3 - ( done 06/30/21 ) linux-mkdir
* (done) an s1 one basic example of mkdir
* (done) an s2 example of mkdir -p
* (done) an s3 example on mkdir -m

### x.4 - ( done 07/01/21 ) linux-date
* (done) have an s1 just a basic use case example
* (done) have an s2 example on the format options
* (done) have a -d option example

### x.5 - ( done 07/02/21 ) linux-awk
* (done) start out with just a basic s1 type example of awk
