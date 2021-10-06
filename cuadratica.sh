#!/bin/bash
nasm -f elf cuadratica.s -o cuadratica.o
gcc -m32 cuadratica.o cuadratica.c -o cuadratica
./cuadratica
