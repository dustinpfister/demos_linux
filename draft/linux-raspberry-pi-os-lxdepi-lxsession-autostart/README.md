#  Raspberry PI OS lxsession autostart files

This folder is on examples of autostart files that can be used to define what should start up when an lxsession starts. LXDE-pi is a fork of the LXDE window manager that is used as the default deskop enviorment for Raspberry PI OS, and lxsession is one of several basic tools used with the LXDE-pi desktop.

## where to put the files

An autostart file can be placed at: 

```
    ~/.config/lxsession/LXDE-pi/autostart 
```
that will over ride the default system wide autostart at:

```
    /etc/xdg/lxsession/LXDE-pi/autostart
```

## The basic content of the file

The contents of the file should at least have:

```
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
```

to have at least the lxpanel at the bottom of the screen, and the trashcan on the desktop.

## The autostart file IS NOT a bash script

The autostart file is not a bash script. However each line is a command to run when LXDE-pi starts, and every line that starts with an at \@ symbol will restart the command if it will crash. In adition a # can be used to comment.

So so something like this can be used to start scripts
```
@lxpanel --profile LXDE-pi
@pcmanfm --desktop --profile LXDE-pi
 
# scripts to start
./my-bash-script.sh
bash ./my-bash-script-that-is-not-executable
node ~/some-javascript-in-the-home-folder.js
```

```
https://wiki.lxde.org/en/LXSession#Autostarted_applications_using_lxsession
```