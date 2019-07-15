# shell function

```shell
#!/bin/bash
 
# write a function
fresh(){
   # t stores $1 argument passed to fresh()
   t=$1
   echo "fresh(): \$0 is $0"
   echo "fresh(): \$1 is $1"
   echo "fresh(): \$t is $t"
   echo "fresh(): total args passed to me $#"
   echo "fresh(): all args (\$@) passed to me -\"$@\""
   echo "fresh(): all args (\$*) passed to me -\"$*\""
}
```


## resources
- https://bash.cyberciti.biz/guide/Pass_arguments_into_a_function
