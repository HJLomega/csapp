# AttackLab

看不到图片挂代理

## 基本知识

Attack lab考察的是对缓冲区溢出攻击的理解,x86_64结构以及gdb调试

解压之后可以看到五个文件

- README.txt 工具的用途介绍
- cookie.txt 你的密钥,这个值将会在实验过程中被用到.注意cookie的值会每个人有所不同
- ctarget 123关攻击的对象,代码注入攻击
- rtarget 45关攻击的对象,返回值攻击
- farm.c 小工具农场,我们会在45关中利用这里的汇编字节码
- hex2raw 十六进制转字符串,由于部分字节数据是无法通过键盘输入的(比如0x00),这个工具可以将文件中的十六进制数据转为字符串然后输入

> 相关gdb调试命令和x86_64参数传递等基础知识请参阅BombLab的内容,不再赘述

## 实验背景

本次实验需要攻击的两个程序分别是ctarget和rtarget,它们都从标准输入中读取字符串,你可以单独运行 `./ctarget` 然后输入一些字符按下回车

ctarget调用函数test,test函数C代码实现如下

```c
void test() {
    int val;
    val = getbuf();
    printf("No exploit. Getbuf returned 0x%x\n", val);
}
```

其中 `getbuf` 函数为获取输入的函数,其代码实现如下

```c
unsigned getbuf() {
    char buf[BUFFER_SIZE];
    Gets(buf);
    return 1;
}
```

函数Gets()和gets()无法确定它们的目标缓冲区是否足够大来存储所读取的字符串.它们只是复制字节序列，可能会超出在目的地分配的存储空间的边界,这就是缓冲区溢出攻击的原理.

ctarget与rtarget几乎完全相同,会第四关介绍他们的区别.前三关运行并攻击ctarget,后两关运行并攻击rtarget

## 实验内容

本次实验五关是需要根据实验的文档来依次解决的,开始之前请仔细阅读文档和网站上的资料

### HEX2RAW使用方法

`hex2raw` 程序用于将十六进制数据转化为字符串,由于部分字符无法通过键盘输入,所以本次实验需要使用此工具帮助转换字符

如果想要输入字符串 "012345", 你可以新建一个文件 `input.txt` 并写入

```txt
30 31 32 33 34 35
```

保存之后使用hex2raw进行转换(输入的为该字符对应的16进制ascii值)

```bash
./hex2raw < input.txt
# 012345
```

注意,字节之间使用空白符或者换行分隔都可以,结果完全相同

```txt
30 31 32 33
34 35
```

也推荐使用换行而不是写在一整行,十六进制输入不区分大小写,但请注意不要使用`0A`,该字节会被认为是换行符(\n)

将该文件的字节转化为字符并输入到程序中可以使用

```bash
./hex2raw < input.txt | ./ctarget
```

如果想要在gdb中调试该字符串,可以先将字符串保存,然后使用 `-i` 参数接收文件

```bash
./hex2raw < input.txt > raw.txt
```

> 其中 `<` `>` 的作用为[重定向](https://www.runoob.com/linux/linux-shell-io-redirections.html)
>
> 这里使用了管道符 `|` 将左侧进程的输出传递给右侧,作为右侧的输入

转换后的字符串将会保存在raw.txt中,接着就可以传入输入了

```bash
./ctarget -i raw.txt
```

当然,如果需要在gdb中调试

```bash
(gdb)r -i raw.txt
```

**一些重要的提示:**

1. 当前机器环境是小端存储,即低字节在低地址.栈底在高地址栈顶在低地址,请注意你的输入顺序
2. 执行指令的顺序是rip不断增加,从低地址到高地址,请注意你的输入顺序
3. 该机器为64位,多余字节注意填充

### Level1

函数getbuf返回后会回到test中继续执行,在ctarget中有一个函数 `touch1` 有着如下C实现

```c
void touch1() {
    vlevel = 1; /* Part of validation protocol */
    printf("Touch1!: You called touch1()\n");
    validate(1);
    exit(0);
}
```

你的任务是当getbuf函数返回时使ctarget执行touch1而不是返回到test函数

> 请注意，字符串可能损坏堆栈中与此阶段无关的部分，但这不会造成问题，因为 touch1会导致程序直接退出

- 本关只需用到ctarget,你可以使用gdb来调试它,查看相关信息和缓冲区大小
- 本题的思路是记录touch1的起始地址,使用缓冲区溢出覆盖原getbuf的返回值使得返回到touch1函数

### Level2

第二关的任务是返回到`touch2`,并且传入的参数 `val==cookie`的值

```c
void touch2(unsigned val){
    vlevel = 2; /* Part of validation protocol */
    if (val == cookie) {
        printf("Touch2!: You called touch2(0x%.8x)\n", val);
        validate(2);
    } else {
        printf("Misfire: You called touch2(0x%.8x)\n", val);
        fail(2);
    }
    exit(0);
}
```

如果想传入参数,即给rdi赋值那肯定是无法通过简单的栈溢出来做到,需要汇编的帮助

你可以编写一段汇编代码保存为 `2.s`

```x86asm
mov $1,%edi
ret
```

使用gcc工具编译

```bash
gcc -c 2.s
```

你会得到一个 `2.o` 的二进制文件

利用 objdump 工具反汇编,并把结果保存在 `2.d` 文件

```bash
objdump -d 2.o > 2.d
```

接着你可以查看 `vim 2.d`,里面就是这段汇编对应的字节码,你可以将其作为输入注入到程序中

### Level3

第三关需要调用 `touch3`,同时参数是一个字符串的地址,这个字符串是cookie

```c
void touch3(char *sval){
    vlevel = 3; /* Part of validation protocol */
    if (hexmatch(cookie, sval)) {
        printf("Touch3!: You called touch3(\"%s\")\n", sval);
        validate(3);
    } else {
        printf("Misfire: You called touch3(\"%s\")\n", sval);
        fail(3);
    }
    exit(0);
}
```

```c
/* Compare string to hex represention of unsigned value */
int hexmatch(unsigned val, char *sval){
  char cbuf[110];
  /* Make position of check string unpredictable */
  char *s = cbuf + random() % 100;
  sprintf(s, "%.8x", val);
  return strncmp(sval, s, 9) == 0;
}
```

- 你的攻击字符串中要包含你的cookie的字符串表示。这个字符串由8个十六进制数字组成（顺序是从最高位到最低位），开头没有“0x”
- 注意，C中的字符串表示是一个字节序列，最后跟一个值为0的字节。“man ascii”能够找到你需要的字符的字节表示。
- 你的注入代码应该将寄存器%rdi设置为攻击字符串的地址。
- 调用hexmatch和strncmp函数时，会将数据压入栈中，覆盖getbuf使用的缓冲区的内存，你需要很小心的决定应该把你的cookie字符串表示放在哪里.

### Level4

从本关开始使用 `rtarget` 程序

前三关使用的是代码注入的方式,但现在这种方式已经不行了,因为加入了两种技术

- 栈地址随机初始化,这使得每一次运行程序得到的栈地址都不相同,所以不能像之前一样准确的定位到某一个地址开始执行代码
- 栈空间不可执行,这使得即使注入了攻击代码,当rip跳转到栈中试图执行代码时也会出现段错误导致失败

但是所谓道高一尺魔高一丈,我们可以利用返回值来进行攻击(ROP)

返回值攻击是利用了程序中已知的字节码,大多是由一两条指令跟着一个ret,举一个例子,假设有如下函数

```c
void setval_210(unsigned *p) {
    *p = 3347663060U;
}
```

看起来这个函数不知所云,其汇编代码如下

```txt
0000000000400f15 <setval_210>:
  400f15: c7 07 d4 48 89 c7         movl $0xc78948d4,(%rdi)
  400f1b: c3                        retq
```

但是如果我们对照汇编字节码指令的表格,就可以发现第一行后三个字节码 `48 89 c7` 相当于指令 `mov %rax,rdi`

![20221110232817](https://raw.githubusercontent.com/learner-lu/picbed/master/20221110232817.png)

那么这就给我们提供了一种思路,通常来说一个正常函数得到的汇编指令不会在最后几行是比如 `popq %rdi` `mov %rax,%rdi` 然后ret返回

正常从 `0x400f15` 调用此函数没什么意义,但是如果从 `0x400f18` 开始调用,那么这段汇编相当于

```txt
0000000000400f18 <>:
  400f18: 48 89 c7         movl %rax,%rdi
  400f1b: c3               retq
```

那么我们就可以利用这种漏洞来进行攻击

文件 `farm.c` 就提供了这样一组函数"农场",它们看起来不知所云,但是汇编的字节码充满着可以攻击的手段.我们的任务就是利用这些返回值来攻击

查找汇编对应的字节码可以使用如下指令将整个程序反汇编保存到 `asm.txt` 中,然后在vim中查询

```bash
objdump -d rtarget > asm.txt
```

vim 中在标准模式中输入 `/abc` 来查询 abc 出现的位置 ,n下一个,N上一个

> 这里说的标准模式即按下 `esc` 之后的状态
>
> vim中查询默认没有高亮,不是很方便查找,我建议在标准模式中输入 `set hlsearch` 启用高亮

- 只能用两个gadget来实现该次攻击
- 如果一个gadget使用了popq指令，那么它会从栈中弹出数据。这样一来，你的攻击代码能既包含gadget的地址也包含数据。
- nop(0x90)为空指令

### Level5

阶段五要求你对RTARGET程序进行ROP攻击，用指向你的cookie字符串的指针，使程序调用touch3函数

这一关，允许你使用函数start_farm和end_farm之间的所有gadget。除了第四阶段允许的那些指令，还允许使用movl指令,以及2字节指令，它们可以作为有功能的nop，不改变任何寄存器或内存的值，例如，andb %al, %al，这些指令对寄存器的低位字节做操作，但是不改变它们的值

![20221110232817](https://raw.githubusercontent.com/learner-lu/picbed/master/20221110232817.png)

![20221120223829](https://raw.githubusercontent.com/learner-lu/picbed/master/20221120223829.png)

![20221120223838](https://raw.githubusercontent.com/learner-lu/picbed/master/20221120223838.png)

![20221120223846](https://raw.githubusercontent.com/learner-lu/picbed/master/20221120223846.png)

- 官方答案需要8个gadgets
- nop(0x90)为空指令,诸如`andb %al, %al`等几乎无效的双字节指令也可以被认为是nop
- 请有效利用farm.c中提供的如下一个函数

  ```c
  long add_xy(long x, long y)
  {
      return x+y;
  }
  ```

## 实验报告

1. 解释每一关的解题思路
2. 使用画图工具将栈中的情况绘制出来

   画图工具可以使用 PPT,语雀,画图等

   栈中的情况包括

   - 内存的地址
   - 内存中的值
   - 执行/调用顺序
   - 该值的含义?调用的函数?执行的指令?
