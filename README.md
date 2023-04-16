# Welcome to Hello World repo!
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Where included myself written "Hello World!" on assembly language.

## Features
- Fast work even crap PC
- Can write "Hello World!" in terminal. Cool!
- Don't need any dependencies
- Support a lot of different OS
- Completly free and opensource

## Install
Just download hello_world binary file and run it via `./hello_world`.

## Build
Use nasm and ld for build your own hello world!
```
nasm -f elf32 -o hello_world.o hello_world.asm 
ld -m elf_i386 -o hello_world hello_world.o
```
## Credentials
Made by [Russanandres](https://github.com/Russanandres). 2023
