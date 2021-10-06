#!/bin/bash
nasm -f elf escalar.s -o escalar.o
gcc -m32 escalar.o escalar.c -o escalar
./escalar
