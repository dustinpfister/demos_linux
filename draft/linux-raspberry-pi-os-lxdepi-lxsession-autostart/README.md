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
