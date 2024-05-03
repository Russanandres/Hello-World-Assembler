# Welcome to my x86_64 Hello World repo!
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Where included myself written "Hello World!" on assembly language.

## Features
- Fast work even crap i386-compatible PC
- Can write "Hello World!" in terminal. Cool!
- Don't need any dependencies (except for building)
- Support a lot of different OS
- Completly free and opensource

## Install
In first, clone repo by `git clone https://github.com/Russanandres/Hello-World-Assembler`  
And then:
```
cd Hello-World-Assembler
chmod +x ./hello_world
./hello_world
```
Or just download `hello_world` binary file from here and run it via previous code.  

## Build
You can build it automaticly with makefile.sh, just do:  
```
chmod +x ./makefile.sh
./makefile.sh
```
Or use nasm and ld for build hello world yourself!
```
nasm -f elf32 -o hello_world.o hello_world.asm 
ld -m elf_i386 -o hello_world hello_world.o
```

## Makefile settings
Makefile.sh have a few little running arguments:
-  `-o` OR `--output $filename` - saves file to different name or directory
-  `-i` OR `--input $filename` - tries to build from different asm source code
-  `-c` OR `--cleanup` - removes temporary files while building gone  
  
## Credentials
Made by [Russanandres](https://github.com/Russanandres). 2023-2024
