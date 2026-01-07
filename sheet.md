
start of every bash script > #!/usr/bin/env bash


`$0`   # script name. 
`$#`   # number of arguments. 
`$*`   # all arguments on one line (space-separated). 
`$@`   # all args as SEPARATE strings. 

Example :
  
`$*`   # hello world test
`$@`   # "hello world" "test"
  
`[[ cond1 && cond2 ]]` # AND  
`[[ cond1 || cond2 ]]` # OR   
`! condition`          # NOT   

NOTE:  
When looping over arguments, always use `"$@"`.

INPUT:  
`read` # input argument  
`-p`   # prints the prompt  
`-s`   # silent (no echo)  
`-r`   # prevents backslash escaping  
`-t`   # timeout  
`name=${name:-Unknown}` # If input empty   

Examples:  
`read` -rp "Enter arg" -t 5 arg  
`read` first last # > 1 2 3 :> "1" "2 3"   

FILES AND DIRECTORY  
`-f` `file`     # regular file  
`-d` `dir`      # directory  
`-e` `path`     # exists  
`-r` `file`     # readable  
`-w` `file`     # writable  
`-x` `file`     # executable  
`-s` `file`     # exists and not empty  

STRING COMPARISION  
  
 `[[ "$a" == "$b" ]]`     # equal  
 `[[ "$a" != "$b" ]]`     # not equal  
 `[[ -z "$a" ]]`          # empty  
 `[[ -n "$a" ]]`          # not empty  
  
  
CONDTIONAL STATEMENT: 
```
if condition1; then
  commands
elif condition2; then
  commands
else
  commands
fi
```
    
SAFER  
```
if [[ condition ]]; then  
```
  
SWITCH Statement
```
case "$var" in
  pattern1)
    commands
    ;;
  pattern2)
    commands
    ;;
  *)
    commands   # default
    ;;
esac
```

LOOPS
  
for
```
for variable  in condition; do 
  commands
done
```
  
while
```
while condition; do
  commands
done
```
  
until
```
until condition; do
  commands
done
```
---
Function
```
function_name() {
    condition
}

# OR

function function_name() {
    condition
}

# calling function
function_name "$argument"
```

`getopts`  parses flags only, in any order, not positional args
example: `-f -v ...` or `-fvh` not `file`
`f:vh`: 
  
`f:` This option requires an argument.
  
`v` or `h`: This option does not require an argument.

```
while getopts "options" opt; do
  case "$opt" in
    ...)
  esac
done
```

`echo`: Simple output command automatic newline easy debugging inconsistent behavior limited formatting.
  
`printf`: Portable predictable formatting command precise control no automatic newline script safe.
  
`flock`: File-locking utility to ensure only one instance of a script or critical section runs at a time.
  
