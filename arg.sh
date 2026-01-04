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

# read -rp "enter number 1 to 4:" num
# case "$num" in 
#   1) echo "one" ;;
#   2) echo "two" ;;
#   3) echo "three" ;;
#   4) echo "four" ;;
#   *) echo "0" ;;
# esac

# case "${1:-}" in
#   *.txt) 
#     echo "Text File"
#     ;;
#   *.sh) 
#     echo "Shell script"
#     ;;
# *)
#   echo "Invalid Input"
#   ;;
# esac

#loop
# for i in a b c; do
#   echo "$i"
# done

#argument after script call
# for i in "$@"; do
#   echo "$i"
# done

#all files ends with .txt
# for i in *.txt; do
#   echo ": $i "
# done

# C style
# for ((i=0; i<7; i++ )) do 
#   echo ": $i"
# done

# range
# for i in {1..30}; do
#   echo "$i"
# done

# read file
# while IFS= read -r line; do
#   echo "$line"
# done < simple.txt

# for i in "$@";  do 
#   echo "for argument: $i"
#   if [[ -f "$i" ]]; then 
#     echo "file"
#   elif [[ -d "$i" ]]; then
#     echo "dir"
#   else
#     echo "invalid"
#   fi
# done


# checkType() {
#   [[ -f "$1" ]] && return 0
#   [[ -d "$1" ]] && return 1
#   return 2
# }
# OR
# checkType() {
#   file="$1"
#   [[ -f "$file" ]] && return 0
#   [[ -d "$file" ]] && return 1
#   return 2
# }
# for i in "$@"; do 
#   checkType "$i"
#   echo "$?"
# done
















