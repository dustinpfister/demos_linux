# linux-bash-script-example-raspberry-pi-os todo list

## () - part7 - swap space
* have a part reserved for adjusting things with swap file
* update any values in /etc/dphys-swapfile
* update post linux-raspberry-pi-os-swap-file to link to the post on this

## () - part6 - panel
* custom launch panel for each setup
* set custom time format as %b-%d-%y %I:%M %p with a tooltip of %A %B %d

## () - part5 - install software
* have install lists for each setup type
    * work: nodejs npm blender gimp
    * play: retroarch
* do a sudo apt install [list]

## () - part4 - .gitconfig and .git-credentials
* (done) start a loopback.sh script to look for these files
* MAKE SURE THAT .gitconfig AND .git-credentials ARE IN GITIGNORE!
* only bother doing anything for this part for 'work' and 'exper' setups
* check for .gitconfig in root folder and if there copy it to the home folder
* check for .git-credentials in root folder and if there copy it to the home folder

## () - part3 - bash aliases
* create an .bash_aliases file base on setup type

## ( done 03/25/2022 ) - part2 - bashrc file
* (done) check if there is a .bashrc_backup and if not make a copy of the bashec file that is there
* (done) create a new .bashrc file
* (done) custom ps1 var for simple ( PS1='\u@\W: \$ '; )

## ( done 03/18/2022 ) - start main setup script, and part 1-bg.sh
* (done) start main setup script
* (done) start 1-bg.sh file that will copy over a background image and set that