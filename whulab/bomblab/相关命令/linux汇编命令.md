#linux下生成汇编代码
1. 假设我们有 `mstore.c` 文件和 `main.c` 文件
2. 生成汇编代码，以下命令会在目录下生成一个`mstore.s`文件
```
linux> gcc -Og -S mstore.c
```
3. 生成二进制目标代码，以下命令会在目录下生成一个`mstore.o`文件
```
linux> gcc -Og -c mstore.c
```
4. 通过gdb显示二进制目标代码
```
linux> gdb mstore.o
(gdb) x/14xb mulstore
```
5. 反汇编
```
linux> objdump -d mstore.o
```
6.  从`main.c`和`mstore.c`生成可执行文件，以下命令会在目录下生成一个`prog`文件
```
linux> gcc -Og -o prog main.c mstore.c
```
7.  反汇编
```
linux> objdump -d prog
```