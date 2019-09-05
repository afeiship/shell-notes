# rsync

## commands
```shell
# 正常同步
rsync -vzrtopg --progress ./assets/rsync-src/ ./assets/rsync-dest/

# --delete ，有需要删除的就删除
rsync -vzrtopg --progress --delete ./assets/rsync-src/ ./assets/rsync-dest/
```

## resources
- https://www.cnblogs.com/regit/p/8074221.html
