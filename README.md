# learning-assembly
Doing random things in x86 assembly

## xor_cipher
basic xor cipher decrpyting a string in x86. Compile with 
> nasm -f elf xor_cipher.asm

> ld -m elf_i386 -s -o xor_cipher xor_cipher.o
