# ssh-tunnel


```shell
ssh -N -p 22 -C username@server -L 127.0.0.1:8081:127.0.0.1:8079

# -p 22
# 这里是指定用户名

# -C(Compress)

# -N

# local: 
127.0.0.1:8081

# remote:
127.0.0.1:8079
```
