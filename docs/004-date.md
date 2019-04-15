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
