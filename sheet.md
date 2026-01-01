
start of every bash script > #!/usr/bin/env bash

`
$0   # script name
$#   # number of arguments
$*   # all arguments on one line (space-separated)
$@   # all args as SEPARATE strings
`

Example :
`
$*   # hello world test
$@   # "hello world" "test"
`

NOTE: 
When looping over arguments, always use "$@".

INPUT >
`
read # input argument
-p   # prints the prompt
-s   # silent (no echo)
-r   # prevents backslash escaping
-t   # timeout for 5 sec
name=${name:-Unknown} # If input empty
`

Examples: 
`
read -rp "Enter arg" -t 5 arg
read first last # > 1 2 3 :> "1" "2 3"
`

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
`
if [[ condition ]]; then
`


FILES AND DIRECTORY
``
-f file     # regular file
-d dir      # directory
-e path     # exists
-r file     # readable
-w file     # writable
-x file     # executable
-s file     # exists and not empty
``

STRING COMPARISION
`
[[ "$a" == "$b" ]]     # equal
[[ "$a" != "$b" ]]     # not equal
[[ -z "$a" ]]          # empty
[[ -n "$a" ]]          # not empty
`

`
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
`

`flock`: File-locking utility to ensure only one instance of a script or critical section runs at a time.
