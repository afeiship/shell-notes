# date
> 常用的日期获取。

~~~
echo $(date +%Y%m%d)
~~~

```shell
#!/bin/bash          
OF=/var/my-backup-$(date +%Y%m%d).tgz
tar -cZf $OF /home/me/
```

## resources
- https://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script
- https://blog.csdn.net/shanliangliuxing/article/details/16821175
