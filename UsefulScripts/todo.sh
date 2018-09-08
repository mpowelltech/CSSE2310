#!/bin/bash

# mp's todo checklist
# Run ./todo.sh to find your unfinished business!
# It basically just greps all the .c, .h, and makefile files in the current
#    the directory it's in for the phrase "todo" and formats the output nicely.
#    (as per the frankly disturbing amount of regex used)


echo -e "\e[1;33m=========== Assignment 3 : TODO ================\e[0m"

grep -in --color=always todo *.c *.h makefile | 
sed -E 's/\x1b\[K:\x1b\[m\x1b\[K +/:\x1b\[m\x1b\[K/g' | 
sed 's/\x1b\[m\x1b\[K\x1b\[36m\x1b\[K:\x1b\[m\x1b\[K/\x1b\[m\x1b\[K\x1b\[36m:\x1b\[m\x1b\[K/g' | 
sed 's/\x1b\[m\x1b\[K\x1b\[36m:\x1b\[m\x1b\[K\([^\x1b\[m\x1b\[K\x1b\[32m\x1b\[K]\)/\x1b\[m\x1b\[K\x1b\[36m:\x1b\[m\x1b\[K\t\1/g'
  
echo -e "\e[1;33m================================================"
echo -e "\e[0m"
