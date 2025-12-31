#!/usr/bin/env bash



# echo "Name: $0"
# echo "COUNTING: $#"
# echo "\$* $*"
# echo "\$@ $@"
# for arg in "$@"; do 
#   echo "argument: $arg"
# done
#
#
# #>>>
# read -rp "Enter Name: " -t 5 name
# # name=${name:-unknown}
# read -rp "enter Age: " age
# echo "Name: '$name'. Age: '$age'"


#>>>
# if [ "$#" -ne 1 ]; then 
#   echo "Usage: $0 <path>"
#   exit 2
# fi
#
# path="$1"
#
# if [ -f "$path" ]; then 
#   echo "FILE"
#   exit 0
# elif [ -d "$path" ]; then
#   echo "DIR"
#   exit 0
# else 
#   echo "NOR PATH NOR DIR"
#   exit 0
# fi

read -rp "enter number 1 to 4:" num
case "$num" in 
  1)
    echo "one"
    ;;
  2)
    echo "two"
    ;;
  3)
    echo "three"
    ;;
  4)
    echo "four"
    ;;
  *)
    echo "0"
    ;;
esac

