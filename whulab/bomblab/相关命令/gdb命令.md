```c

 print/x $rsi   // ‘/x’ means print in hexadecimal
 info registers
 info break
 x/s 0x402400
 jmpq *0x402390(,%rax,8) // 跳到 M(0x402390) + 8*rax 处
```