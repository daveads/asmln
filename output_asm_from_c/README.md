# asm output from c/c++ compiler

```
write the c/c++ code

gcc -c -S filename.c

shows object code and asm file.s
```

#  C code together with the assembly it was converted to

```
gcc -c -g -Wa,-a,-ad  filename.c > filename.txt
```

Links

https://jvns.ca/blog/2014/09/06/how-to-read-an-executable/
https://linuxhint.com/understanding_elf_file_format/
https://en.wikipedia.org/wiki/Executable_and_Linkable_Format

*-
