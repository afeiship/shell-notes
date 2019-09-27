# list by time

## command
```shell
ls -t build* | head -1
```

## case
~~~
tss@VM-0-210-ubuntu:~/releases/article-render$ ll
total 4484
drwxrwxr-x 2 tss tss    4096 Sep 27 22:51 ./
drwxrwxr-x 3 tss tss    4096 Sep 27 17:57 ../
-rw-rw-r-- 1 tss tss 1526650 Sep 27 22:37 build-20190927223742.tar.gz
-rw-rw-r-- 1 tss tss 1526641 Sep 27 22:45 build-20190927224510.tar.gz
-rw-rw-r-- 1 tss tss 1526645 Sep 27 22:51 build-20190927225142.tar.gz


tss@VM-0-210-ubuntu:~/releases/article-render$ ls -t build* | head -1
build-20190927225142.tar.gz
~~~
