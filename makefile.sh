#!/bin/bash
#
# Makefile made by Russanandres in 3-5-24
#

in="hello_world.asm"
out="hello_world"
while [ "$1" != "" ]; do
 case $1 in
	-o | --output ) out=$2;shift;;
	-i | --input ) in=$2;shift;;
	-c | --cleanup ) clean=1;;
 esac
 shift
done


NC='\033[0m'
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
# Bold
BRed='\033[1;31m'
BGreen='\033[1;32m'
BBlue='\033[1;34m'


nasm 2&>> /dev/null;if [ $? != 1 ]; then echo -e "${BRed}[ERROR]${NC} You haven't nasm installed. Please satisfy dependency!"; fi
ld 2&>> /dev/null;if [ $? != 1 ]; then echo -e "${BRed}[ERROR]${NC} You haven't ld installed. Please satisfy dependency!"; fi

if [ -f $in ]; then
 for i in "hello_world" "hello_world.o"; do
  if [ -f $i ]; then
   echo -e "${Blue}[ INF ]${NC} Deleting pre-compilated $i"
   rm ./$i
  fi
  if [ -f $i ]; then
   echo -e "${BRed}[ERROR]${NC} Pre-compilated $i still exist. Please remove it yourself!"
   exit 1
  fi
 done
 echo -e "${Blue}[ INF ]${NC} Compilating object file by nasm"
 nasm -f elf32 -o hello_world.o $in
 echo -e "${Blue}[ INF ]${NC} Compilating elf by ld for i386"
 ld -m elf_i386 -o $out hello_world.o
else
 echo "${BRed}[ERROR]${NC} Check your files, $in seems to not exist!"
 exit 1
fi


if [ ! -f $clean ]; then rm hello_world.o; fi
if [ -f $out ]; then
 echo -e "${BGreen}[ OK! ]${NC} Successfully compilled hello_world"
else
 echo "${BRed}[ERROR]${NC} Some errors appeared while compilating. Check log."
 exit 1
fi

exit 0
