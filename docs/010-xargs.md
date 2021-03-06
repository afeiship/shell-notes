# xargs
- http://www.ruanyifeng.com/blog/2019/08/xargs-tutorial.html

## snapshot
<img width="500" src="https://www.wangbase.com/blogimg/asset/201908/bg2019080802.jpg"/>

## 管道命令的作用
> 是将左侧命令（cat /etc/passwd）的标准输出转换为标准输入，提供给右侧命令（grep root）作为参数。

```shell
cat /etc/passwd | grep root
```

## xargs 命令的作用
> xargs命令的作用，是将标准输入转为命令行参数。

```shell
echo '.' | xargs ls
```

## xargs命令的格式如下
```shell
xargs [-options] [command]
```
### 示例
```shell
echo "one two three" | xargs mkdir
# 上面的代码等同于

mkdir one two three
```


## xargs 的单独使用
xargs后面的命令默认是echo。
```shell
$ xargs
# 等同于
$ xargs echo
```


## Waiting User input:
输入xargs按下回车以后，命令行就会等待用户输入，作为标准输入。
你可以输入任意内容，然后按下Ctrl d，表示输入结束，这时echo命令就会把前面的输入打印出来。

### step
1. 输入 xargs , 回车
2. 输入 hello 回车
3. 键盘上的 ctrl + d
4. 屏上输出： hello

```shell
$ xargs
hello (Ctrl + d)
hello
```


## -d 参数与分隔符
```shell
# 上面的命令指定制表符\t作为分隔符，所以a\tb\tc就转换成了三个命令行参数。echo命令的-e参数表示解释转义字符。
echo "one two three" | xargs mkdir
echo -e "a\tb\tc" | xargs -d "\t" echo
```

## -p 询问下一步是否执行
> 使用xargs命令以后，由于存在转换参数过程，有时需要确认一下到底执行的是什么命令。

```shell
# 这里可以输入: y/n
$ echo 'one two three' | xargs -p touch
touch one two three ?
```
## -t 直接执行
> -t参数则是打印出最终要执行的命令，然后直接执行，不需要用户确认.
```shell
# 因为有些命令是天生带提醒的，所以会有这个参数：
$ echo 'one two three' | xargs -t rm
rm one two three
```


## -0 参数与 find 命令
> 由于xargs默认将空格作为分隔符，所以不太适合处理文件名，因为文件名可能包含空格。

find命令有一个特别的参数`-print0` ，指定输出的文件列表以null分隔。然后，`xargs命令的-0参数表示用null` 当作分隔符。

```shell
$ find /path -type f -print0 | xargs -0 rm
```

## -L 参数
> 如果标准输入包含多行，-L参数指定多少行作为一个命令行参数。
```shell
$ xargs find -name
"*.txt"   
"*.md"
# find: paths must precede expression: `*.md'
```


```shell
echo -e "a\nb\nc" | xargs -L 1 echo
a
b
c

```
## -n 参数

## -I 参数
> 如果xargs要将命令行参数传给多个命令，可以使用-I参数。

-I指定每一项命令行参数的替代字符串。

```shell
$ cat foo.txt
one
two
three

$ cat foo.txt | xargs -I file sh -c 'echo file; mkdir file'
one 
two
three

$ ls 
one two three
```

上面代码中，foo.txt是一个三行的文本文件。我们希望对每一项命令行参数，执行两个命令（echo和mkdir），使用-I file表示file是命令行参数的替代字符串。执行命令时，具体的参数会替代掉echo file; mkdir file里面的两个file。


## --max-procs 参数
> xargs默认只用一个进程执行命令。如果命令要执行多次，必须等上一次执行完，才能执行下一次。
~~~
--max-procs参数指定同时用多少个进程并行执行命令。--max-procs 2表示同时最多使用两个进程，--max-procs 0表示不限制进程数。
~~~

```shell
$ docker ps -q | xargs -n 1 --max-procs 0 docker kill
```
上面命令表示，同时关闭尽可能多的 Docker 容器，这样运行速度会快很多。


## resources
- http://www.ruanyifeng.com/blog/2019/08/xargs-tutorial.html

