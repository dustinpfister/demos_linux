# linux-folders-dev

## - Basics

### Everything is a file in linux

```
https://tldp.org/LDP/Linux-Filesystem-Hierarchy/html/dev.html
```




## Pseudo-devices

There are a number of device files that do not corespond with a physical device thus they are often refered to as a 'Pseudo device'

### /dev/null

```
https://linuxhint.com/what_is_dev_null/
```

### /dev/zero

Just like with /dev/null this will accept and discard anything that is written to it. However when reading from /dev/null the result is not an end of file response but null charicters.

```
https://unix.stackexchange.com/questions/63238/purpose-of-dev-zero
```

### /dev/full





## The dev/input folder

The input folder contains some files for reading from input devices such as the mouse

```
https://thehackerdiary.wordpress.com/2017/04/21/exploring-devinput-1/
```

### The mouse

```
xxd -p /dev/input/mouse0
```

