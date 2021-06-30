
mkdir -p "foo"
ls -ld foo
# drwxr-xr-x 2 pi pi 4096 Jun 30 09:53 foo

chmod 777 foo
ls -ld foo
# drwxrwxrwx 2 pi pi 4096 Jun 30 09:53 foo

mkdir -p -m 777 "bar"
ls -ld bar