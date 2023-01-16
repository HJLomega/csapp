# Bomb Lab 实验手册

实验平台: https://cslabcg.whu.edu.cn/

## 基本知识

### x86-64架构调用函数时参数传递使用的寄存器和栈地址

|%rdi|%rsi|%rdx|%rcx|%r8|%r9|(%rsp)|(%rsp+8)|(%rsp+...)|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|

return -> %rax

### x86-64寄存器

![QQ图片20221015171443](https://raw.githubusercontent.com/learner-lu/picbed/master/QQ%E5%9B%BE%E7%89%8720221015171443.jpg)

### 操作数指示符

![as123gsz](https://raw.githubusercontent.com/learner-lu/picbed/master/as123gsz.jpg)

### 常用汇编

- mov S,D : 把S的值传给D,具体的S见 操作数指示符
- lea A,B : 计算A表达式的值传给B
- cmp A,B : 对 B-A 的值进行判断, gl(有符号) ab(无符号)
- test A,B : A&B
- je : 等于0跳转
- jne : 不等于0跳转
  
## GDB

### 调试使用到的指令

> 注 : 括号表示完成指令名中可以被省略的部分

|命令|用途|
|:--:|:--:|
|gdb bomb|使用gdb调试可执行文件bomb|
|disas(semble) phase_1|反汇编函数phase_1|
|disas 0x402400|反汇编地址0x402400附近的函数|
|x/s 0x400544|以字符串的形式输出,字符串在内存中的首地址为0x400544|
|x/d 0x400544|以整数的形式输出,整数在内存中的首地址为0x400544|
|x/x 0x400544|以16进制的形式输出|
|x/a 0x400544|以指针的形式|
|b(reak) *0x400da4|在0x400da4地址处打断点|
|b phase_5|在phase_5函数入口地址打断点|
|b 74|在源代码74行打断点|
|r(un)|运行可执行文件|
|r input.txt|运行可执行文件,传入一个参数,参数名是input.txt|
|c(ontinue)|从断点处继续运行|
|k(ill)|停止调试当前运行的程序|
|q(uit)|退出调试|
|i(nfo) r(egister)|打印所有整数寄存器及其内容|
|i r rax|打印rax寄存器及其内容|
|i b|打印所有断点|
|d(elete) 1|删除断点1|

> [gdb 调试利器](https://linuxtools-rst.readthedocs.io/zh_CN/latest/tool/gdb.html)
>
> [gdb文档](https://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)

## 实验报告样例

> 从网页中的操作系统中复制文字的方式: 选中复制 -> 剪切板 -> 复制粘贴

### phase_1

```txt
0x0000000000400ef0 <+0>:	sub    $0x8,%rsp
0x0000000000400ef4 <+4>:	mov    $0x402500,%esi                  #将0x402500赋给esi
0x0000000000400ef9 <+9>:	callq  0x4012ee <strings_not_equal>    #判断edi esi指针指向的字符串
0x0000000000400efe <+14>:	test   %eax,%eax                       #期望返回0, 即字符串相同
0x0000000000400f00 <+16>:	je     0x400f07 <phase_1+23>
0x0000000000400f02 <+18>:	callq  0x401599 <explode_bomb>
0x0000000000400f07 <+23>:	add    $0x8,%rsp
0x0000000000400f0b <+27>:	retq
```

edi指向用户输入的字符串的首地址, `strings_not_equal` 函数的作用是判断两个字符串是否不相同,不相同返回1,相同返回0

> 如果有耐心阅读可以稍微解释一下strings_not_equal的汇编细节,也可以省略

0x402500指向的字符串通过 `x/s 0x402500` 查看是 `"Why make trillions when we could make... billions?"`

所以第一关的答案是

```txt
Why make trillions when we could make... billions?
```

### phase_2

先看第一部分

```txt
0x0000000000400f0c <+0>:	push   %rbp
0x0000000000400f0d <+1>:	push   %rbx
0x0000000000400f0e <+2>:	sub    $0x28,%rsp                   #分配栈帧
0x0000000000400f12 <+6>:	mov    %rsp,%rsi                    #rsi = rsp
0x0000000000400f15 <+9>:	callq  0x4015cf <read_six_numbers>  #...
```

查看 `read_six_numbers` 函数反汇编

```txt
0x00000000004015cf <+0>:	sub    $0x18,%rsp
0x00000000004015d3 <+4>:	mov    %rsi,%rdx                      #rdx = rsi = rsp
0x00000000004015d6 <+7>:	lea    0x4(%rsi),%rcx                 #rcx = rsi+4 = rsp+4
0x00000000004015da <+11>:	lea    0x14(%rsi),%rax                #rax = rsi+0x14
0x00000000004015de <+15>:	mov    %rax,0x8(%rsp)                 #(rsp+8) = rax = rsp+0x14
0x00000000004015e3 <+20>:	lea    0x10(%rsi),%rax                #rax = rsi+0x10 = rsp+0x10
0x00000000004015e7 <+24>:	mov    %rax,(%rsp)                    #(rsp) = rax = rsp+0x10
0x00000000004015eb <+28>:	lea    0xc(%rsi),%r9                  #r9 = rsi+0xc = rsp+0xc
0x00000000004015ef <+32>:	lea    0x8(%rsi),%r8                  #r8 = rsi+0x8 = rsp+0x8
0x00000000004015f3 <+36>:	mov    $0x4027f5,%esi                 #esi指向的地址0x4027f5
0x00000000004015f8 <+41>:	mov    $0x0,%eax                      #eax = 0
0x00000000004015fd <+46>:	callq  0x400c30 <__isoc99_sscanf@plt> #从edi(用户输入的字符串)中读取
0x0000000000401602 <+51>:	cmp    $0x5,%eax                      
0x0000000000401605 <+54>:	jg     0x40160c <read_six_numbers+61> #返回值应该大于5
0x0000000000401607 <+56>:	callq  0x401599 <explode_bomb>
0x000000000040160c <+61>:	add    $0x18,%rsp
0x0000000000401610 <+65>:	retq 
```

查看 `0x4027f5` 的字符串为 `"%d %d %d %d %d %d"`,即接收六个整数(int)

- rdi = 用户输入字符串的首地址
- rsi = 0x4027f5(读取的格式,六个整数)
- rdx = rsp
- rcx = rsp+4
- r8 = rsp+8
- r9 = rsp+12
- (rsp) = rsp+16
- (rsp+8) = rsp+20

根据x86-64架构调用函数时参数传递使用的寄存器和栈地址的规则,所以通过 `sscanf` 从字符串中读取的六个整数分别存放在(rsp),(rsp+4),...等连续六个位置

再看第二部分

...

## 实验报告要求

1. **没有必要**每一行汇编都详细的说明, 文字说明为主,汇编解释为辅,适当省略
2. phase_3 请给出 **所有可以通过的答案**
3. phase_4 请给出 `func4` 的C语言实现

   ```c
   int func4(int x, int y, int z) {
      ...
      return ...
   }
   ```

4. phase_5 phase_6 请列出相关数据和解题思路
5. secret_phase 请给出该二叉树的 **完整数据结构和结点的值**

   > 如果markdown不便请使用图床

---

## 翻墙方法

- [V2free](https://me.tofly.cyou/)
- [ZodAccess](https://vpn.zodaccess.top/auth/login)
- [翻墙合集](https://github.com/bannedbook/fanqiang)

尝试打开 [youtube](https://www.youtube.com/)

## 图床

### Typora + picgo + Github

- [教程1](https://zhuanlan.zhihu.com/p/168729465)
- [教程2](https://juejin.cn/post/6844904137407086600)

### Vscode + picgo + Github

- [教程1](https://picgo.github.io/PicGo-Doc/zh/guide/config.html#github%E5%9B%BE%E5%BA%8A)
- [教程2](https://blog.csdn.net/qq_43827595/article/details/104274769)

> 建议配合Vscode插件[Picgo](https://marketplace.visualstudio.com/items?itemName=Spades.vs-picgo)
