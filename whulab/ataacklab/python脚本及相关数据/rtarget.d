
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bc0 <_init>:
  400bc0:	48 83 ec 08          	sub    $0x8,%rsp
  400bc4:	48 8b 05 2d 44 20 00 	mov    0x20442d(%rip),%rax        # 604ff8 <__gmon_start__>
  400bcb:	48 85 c0             	test   %rax,%rax
  400bce:	74 05                	je     400bd5 <_init+0x15>
  400bd0:	e8 2b 01 00 00       	call   400d00 <__gmon_start__@plt>
  400bd5:	48 83 c4 08          	add    $0x8,%rsp
  400bd9:	c3                   	ret    

Disassembly of section .plt:

0000000000400be0 <.plt>:
  400be0:	ff 35 22 44 20 00    	push   0x204422(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400be6:	ff 25 24 44 20 00    	jmp    *0x204424(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400bf0 <getenv@plt>:
  400bf0:	ff 25 22 44 20 00    	jmp    *0x204422(%rip)        # 605018 <getenv@GLIBC_2.2.5>
  400bf6:	68 00 00 00 00       	push   $0x0
  400bfb:	e9 e0 ff ff ff       	jmp    400be0 <.plt>

0000000000400c00 <strcasecmp@plt>:
  400c00:	ff 25 1a 44 20 00    	jmp    *0x20441a(%rip)        # 605020 <strcasecmp@GLIBC_2.2.5>
  400c06:	68 01 00 00 00       	push   $0x1
  400c0b:	e9 d0 ff ff ff       	jmp    400be0 <.plt>

0000000000400c10 <__errno_location@plt>:
  400c10:	ff 25 12 44 20 00    	jmp    *0x204412(%rip)        # 605028 <__errno_location@GLIBC_2.2.5>
  400c16:	68 02 00 00 00       	push   $0x2
  400c1b:	e9 c0 ff ff ff       	jmp    400be0 <.plt>

0000000000400c20 <srandom@plt>:
  400c20:	ff 25 0a 44 20 00    	jmp    *0x20440a(%rip)        # 605030 <srandom@GLIBC_2.2.5>
  400c26:	68 03 00 00 00       	push   $0x3
  400c2b:	e9 b0 ff ff ff       	jmp    400be0 <.plt>

0000000000400c30 <strncmp@plt>:
  400c30:	ff 25 02 44 20 00    	jmp    *0x204402(%rip)        # 605038 <strncmp@GLIBC_2.2.5>
  400c36:	68 04 00 00 00       	push   $0x4
  400c3b:	e9 a0 ff ff ff       	jmp    400be0 <.plt>

0000000000400c40 <strcpy@plt>:
  400c40:	ff 25 fa 43 20 00    	jmp    *0x2043fa(%rip)        # 605040 <strcpy@GLIBC_2.2.5>
  400c46:	68 05 00 00 00       	push   $0x5
  400c4b:	e9 90 ff ff ff       	jmp    400be0 <.plt>

0000000000400c50 <puts@plt>:
  400c50:	ff 25 f2 43 20 00    	jmp    *0x2043f2(%rip)        # 605048 <puts@GLIBC_2.2.5>
  400c56:	68 06 00 00 00       	push   $0x6
  400c5b:	e9 80 ff ff ff       	jmp    400be0 <.plt>

0000000000400c60 <write@plt>:
  400c60:	ff 25 ea 43 20 00    	jmp    *0x2043ea(%rip)        # 605050 <write@GLIBC_2.2.5>
  400c66:	68 07 00 00 00       	push   $0x7
  400c6b:	e9 70 ff ff ff       	jmp    400be0 <.plt>

0000000000400c70 <mmap@plt>:
  400c70:	ff 25 e2 43 20 00    	jmp    *0x2043e2(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400c76:	68 08 00 00 00       	push   $0x8
  400c7b:	e9 60 ff ff ff       	jmp    400be0 <.plt>

0000000000400c80 <printf@plt>:
  400c80:	ff 25 da 43 20 00    	jmp    *0x2043da(%rip)        # 605060 <printf@GLIBC_2.2.5>
  400c86:	68 09 00 00 00       	push   $0x9
  400c8b:	e9 50 ff ff ff       	jmp    400be0 <.plt>

0000000000400c90 <memset@plt>:
  400c90:	ff 25 d2 43 20 00    	jmp    *0x2043d2(%rip)        # 605068 <memset@GLIBC_2.2.5>
  400c96:	68 0a 00 00 00       	push   $0xa
  400c9b:	e9 40 ff ff ff       	jmp    400be0 <.plt>

0000000000400ca0 <alarm@plt>:
  400ca0:	ff 25 ca 43 20 00    	jmp    *0x2043ca(%rip)        # 605070 <alarm@GLIBC_2.2.5>
  400ca6:	68 0b 00 00 00       	push   $0xb
  400cab:	e9 30 ff ff ff       	jmp    400be0 <.plt>

0000000000400cb0 <close@plt>:
  400cb0:	ff 25 c2 43 20 00    	jmp    *0x2043c2(%rip)        # 605078 <close@GLIBC_2.2.5>
  400cb6:	68 0c 00 00 00       	push   $0xc
  400cbb:	e9 20 ff ff ff       	jmp    400be0 <.plt>

0000000000400cc0 <read@plt>:
  400cc0:	ff 25 ba 43 20 00    	jmp    *0x2043ba(%rip)        # 605080 <read@GLIBC_2.2.5>
  400cc6:	68 0d 00 00 00       	push   $0xd
  400ccb:	e9 10 ff ff ff       	jmp    400be0 <.plt>

0000000000400cd0 <__libc_start_main@plt>:
  400cd0:	ff 25 b2 43 20 00    	jmp    *0x2043b2(%rip)        # 605088 <__libc_start_main@GLIBC_2.2.5>
  400cd6:	68 0e 00 00 00       	push   $0xe
  400cdb:	e9 00 ff ff ff       	jmp    400be0 <.plt>

0000000000400ce0 <signal@plt>:
  400ce0:	ff 25 aa 43 20 00    	jmp    *0x2043aa(%rip)        # 605090 <signal@GLIBC_2.2.5>
  400ce6:	68 0f 00 00 00       	push   $0xf
  400ceb:	e9 f0 fe ff ff       	jmp    400be0 <.plt>

0000000000400cf0 <fprintf@plt>:
  400cf0:	ff 25 a2 43 20 00    	jmp    *0x2043a2(%rip)        # 605098 <fprintf@GLIBC_2.2.5>
  400cf6:	68 10 00 00 00       	push   $0x10
  400cfb:	e9 e0 fe ff ff       	jmp    400be0 <.plt>

0000000000400d00 <__gmon_start__@plt>:
  400d00:	ff 25 9a 43 20 00    	jmp    *0x20439a(%rip)        # 6050a0 <__gmon_start__>
  400d06:	68 11 00 00 00       	push   $0x11
  400d0b:	e9 d0 fe ff ff       	jmp    400be0 <.plt>

0000000000400d10 <strtol@plt>:
  400d10:	ff 25 92 43 20 00    	jmp    *0x204392(%rip)        # 6050a8 <strtol@GLIBC_2.2.5>
  400d16:	68 12 00 00 00       	push   $0x12
  400d1b:	e9 c0 fe ff ff       	jmp    400be0 <.plt>

0000000000400d20 <memcpy@plt>:
  400d20:	ff 25 8a 43 20 00    	jmp    *0x20438a(%rip)        # 6050b0 <memcpy@GLIBC_2.14>
  400d26:	68 13 00 00 00       	push   $0x13
  400d2b:	e9 b0 fe ff ff       	jmp    400be0 <.plt>

0000000000400d30 <inet_pton@plt>:
  400d30:	ff 25 82 43 20 00    	jmp    *0x204382(%rip)        # 6050b8 <inet_pton@GLIBC_2.2.5>
  400d36:	68 14 00 00 00       	push   $0x14
  400d3b:	e9 a0 fe ff ff       	jmp    400be0 <.plt>

0000000000400d40 <time@plt>:
  400d40:	ff 25 7a 43 20 00    	jmp    *0x20437a(%rip)        # 6050c0 <time@GLIBC_2.2.5>
  400d46:	68 15 00 00 00       	push   $0x15
  400d4b:	e9 90 fe ff ff       	jmp    400be0 <.plt>

0000000000400d50 <random@plt>:
  400d50:	ff 25 72 43 20 00    	jmp    *0x204372(%rip)        # 6050c8 <random@GLIBC_2.2.5>
  400d56:	68 16 00 00 00       	push   $0x16
  400d5b:	e9 80 fe ff ff       	jmp    400be0 <.plt>

0000000000400d60 <_IO_getc@plt>:
  400d60:	ff 25 6a 43 20 00    	jmp    *0x20436a(%rip)        # 6050d0 <_IO_getc@GLIBC_2.2.5>
  400d66:	68 17 00 00 00       	push   $0x17
  400d6b:	e9 70 fe ff ff       	jmp    400be0 <.plt>

0000000000400d70 <__isoc99_sscanf@plt>:
  400d70:	ff 25 62 43 20 00    	jmp    *0x204362(%rip)        # 6050d8 <__isoc99_sscanf@GLIBC_2.7>
  400d76:	68 18 00 00 00       	push   $0x18
  400d7b:	e9 60 fe ff ff       	jmp    400be0 <.plt>

0000000000400d80 <munmap@plt>:
  400d80:	ff 25 5a 43 20 00    	jmp    *0x20435a(%rip)        # 6050e0 <munmap@GLIBC_2.2.5>
  400d86:	68 19 00 00 00       	push   $0x19
  400d8b:	e9 50 fe ff ff       	jmp    400be0 <.plt>

0000000000400d90 <fopen@plt>:
  400d90:	ff 25 52 43 20 00    	jmp    *0x204352(%rip)        # 6050e8 <fopen@GLIBC_2.2.5>
  400d96:	68 1a 00 00 00       	push   $0x1a
  400d9b:	e9 40 fe ff ff       	jmp    400be0 <.plt>

0000000000400da0 <getopt@plt>:
  400da0:	ff 25 4a 43 20 00    	jmp    *0x20434a(%rip)        # 6050f0 <getopt@GLIBC_2.2.5>
  400da6:	68 1b 00 00 00       	push   $0x1b
  400dab:	e9 30 fe ff ff       	jmp    400be0 <.plt>

0000000000400db0 <strtoul@plt>:
  400db0:	ff 25 42 43 20 00    	jmp    *0x204342(%rip)        # 6050f8 <strtoul@GLIBC_2.2.5>
  400db6:	68 1c 00 00 00       	push   $0x1c
  400dbb:	e9 20 fe ff ff       	jmp    400be0 <.plt>

0000000000400dc0 <gethostname@plt>:
  400dc0:	ff 25 3a 43 20 00    	jmp    *0x20433a(%rip)        # 605100 <gethostname@GLIBC_2.2.5>
  400dc6:	68 1d 00 00 00       	push   $0x1d
  400dcb:	e9 10 fe ff ff       	jmp    400be0 <.plt>

0000000000400dd0 <sprintf@plt>:
  400dd0:	ff 25 32 43 20 00    	jmp    *0x204332(%rip)        # 605108 <sprintf@GLIBC_2.2.5>
  400dd6:	68 1e 00 00 00       	push   $0x1e
  400ddb:	e9 00 fe ff ff       	jmp    400be0 <.plt>

0000000000400de0 <exit@plt>:
  400de0:	ff 25 2a 43 20 00    	jmp    *0x20432a(%rip)        # 605110 <exit@GLIBC_2.2.5>
  400de6:	68 1f 00 00 00       	push   $0x1f
  400deb:	e9 f0 fd ff ff       	jmp    400be0 <.plt>

0000000000400df0 <connect@plt>:
  400df0:	ff 25 22 43 20 00    	jmp    *0x204322(%rip)        # 605118 <connect@GLIBC_2.2.5>
  400df6:	68 20 00 00 00       	push   $0x20
  400dfb:	e9 e0 fd ff ff       	jmp    400be0 <.plt>

0000000000400e00 <socket@plt>:
  400e00:	ff 25 1a 43 20 00    	jmp    *0x20431a(%rip)        # 605120 <socket@GLIBC_2.2.5>
  400e06:	68 21 00 00 00       	push   $0x21
  400e0b:	e9 d0 fd ff ff       	jmp    400be0 <.plt>

Disassembly of section .text:

0000000000400e10 <_start>:
  400e10:	31 ed                	xor    %ebp,%ebp
  400e12:	49 89 d1             	mov    %rdx,%r9
  400e15:	5e                   	pop    %rsi
  400e16:	48 89 e2             	mov    %rsp,%rdx
  400e19:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e1d:	50                   	push   %rax
  400e1e:	54                   	push   %rsp
  400e1f:	49 c7 c0 80 2c 40 00 	mov    $0x402c80,%r8
  400e26:	48 c7 c1 10 2c 40 00 	mov    $0x402c10,%rcx
  400e2d:	48 c7 c7 a5 10 40 00 	mov    $0x4010a5,%rdi
  400e34:	e8 97 fe ff ff       	call   400cd0 <__libc_start_main@plt>
  400e39:	f4                   	hlt    
  400e3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e40 <deregister_tm_clones>:
  400e40:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400e45:	55                   	push   %rbp
  400e46:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400e4c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e50:	48 89 e5             	mov    %rsp,%rbp
  400e53:	77 02                	ja     400e57 <deregister_tm_clones+0x17>
  400e55:	5d                   	pop    %rbp
  400e56:	c3                   	ret    
  400e57:	b8 00 00 00 00       	mov    $0x0,%eax
  400e5c:	48 85 c0             	test   %rax,%rax
  400e5f:	74 f4                	je     400e55 <deregister_tm_clones+0x15>
  400e61:	5d                   	pop    %rbp
  400e62:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400e67:	ff e0                	jmp    *%rax
  400e69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e70 <register_tm_clones>:
  400e70:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400e75:	55                   	push   %rbp
  400e76:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400e7c:	48 c1 f8 03          	sar    $0x3,%rax
  400e80:	48 89 e5             	mov    %rsp,%rbp
  400e83:	48 89 c2             	mov    %rax,%rdx
  400e86:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400e8a:	48 01 d0             	add    %rdx,%rax
  400e8d:	48 d1 f8             	sar    %rax
  400e90:	75 02                	jne    400e94 <register_tm_clones+0x24>
  400e92:	5d                   	pop    %rbp
  400e93:	c3                   	ret    
  400e94:	ba 00 00 00 00       	mov    $0x0,%edx
  400e99:	48 85 d2             	test   %rdx,%rdx
  400e9c:	74 f4                	je     400e92 <register_tm_clones+0x22>
  400e9e:	5d                   	pop    %rbp
  400e9f:	48 89 c6             	mov    %rax,%rsi
  400ea2:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400ea7:	ff e2                	jmp    *%rdx
  400ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400eb0 <__do_global_dtors_aux>:
  400eb0:	80 3d 21 46 20 00 00 	cmpb   $0x0,0x204621(%rip)        # 6054d8 <completed.6355>
  400eb7:	75 11                	jne    400eca <__do_global_dtors_aux+0x1a>
  400eb9:	55                   	push   %rbp
  400eba:	48 89 e5             	mov    %rsp,%rbp
  400ebd:	e8 7e ff ff ff       	call   400e40 <deregister_tm_clones>
  400ec2:	5d                   	pop    %rbp
  400ec3:	c6 05 0e 46 20 00 01 	movb   $0x1,0x20460e(%rip)        # 6054d8 <completed.6355>
  400eca:	f3 c3                	repz ret 
  400ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ed0 <frame_dummy>:
  400ed0:	48 83 3d 48 3f 20 00 	cmpq   $0x0,0x203f48(%rip)        # 604e20 <__JCR_END__>
  400ed7:	00 
  400ed8:	74 1e                	je     400ef8 <frame_dummy+0x28>
  400eda:	b8 00 00 00 00       	mov    $0x0,%eax
  400edf:	48 85 c0             	test   %rax,%rax
  400ee2:	74 14                	je     400ef8 <frame_dummy+0x28>
  400ee4:	55                   	push   %rbp
  400ee5:	bf 20 4e 60 00       	mov    $0x604e20,%edi
  400eea:	48 89 e5             	mov    %rsp,%rbp
  400eed:	ff d0                	call   *%rax
  400eef:	5d                   	pop    %rbp
  400ef0:	e9 7b ff ff ff       	jmp    400e70 <register_tm_clones>
  400ef5:	0f 1f 00             	nopl   (%rax)
  400ef8:	e9 73 ff ff ff       	jmp    400e70 <register_tm_clones>
  400efd:	0f 1f 00             	nopl   (%rax)

0000000000400f00 <usage>:
  400f00:	48 83 ec 08          	sub    $0x8,%rsp
  400f04:	48 89 fe             	mov    %rdi,%rsi
  400f07:	83 3d fa 45 20 00 00 	cmpl   $0x0,0x2045fa(%rip)        # 605508 <is_checker>
  400f0e:	74 39                	je     400f49 <usage+0x49>
  400f10:	bf a0 2c 40 00       	mov    $0x402ca0,%edi
  400f15:	b8 00 00 00 00       	mov    $0x0,%eax
  400f1a:	e8 61 fd ff ff       	call   400c80 <printf@plt>
  400f1f:	bf d8 2c 40 00       	mov    $0x402cd8,%edi
  400f24:	e8 27 fd ff ff       	call   400c50 <puts@plt>
  400f29:	bf 10 2e 40 00       	mov    $0x402e10,%edi
  400f2e:	e8 1d fd ff ff       	call   400c50 <puts@plt>
  400f33:	bf 00 2d 40 00       	mov    $0x402d00,%edi
  400f38:	e8 13 fd ff ff       	call   400c50 <puts@plt>
  400f3d:	bf 2a 2e 40 00       	mov    $0x402e2a,%edi
  400f42:	e8 09 fd ff ff       	call   400c50 <puts@plt>
  400f47:	eb 2d                	jmp    400f76 <usage+0x76>
  400f49:	bf 46 2e 40 00       	mov    $0x402e46,%edi
  400f4e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f53:	e8 28 fd ff ff       	call   400c80 <printf@plt>
  400f58:	bf 28 2d 40 00       	mov    $0x402d28,%edi
  400f5d:	e8 ee fc ff ff       	call   400c50 <puts@plt>
  400f62:	bf 50 2d 40 00       	mov    $0x402d50,%edi
  400f67:	e8 e4 fc ff ff       	call   400c50 <puts@plt>
  400f6c:	bf 64 2e 40 00       	mov    $0x402e64,%edi
  400f71:	e8 da fc ff ff       	call   400c50 <puts@plt>
  400f76:	bf 00 00 00 00       	mov    $0x0,%edi
  400f7b:	e8 60 fe ff ff       	call   400de0 <exit@plt>

0000000000400f80 <initialize_target>:
  400f80:	55                   	push   %rbp
  400f81:	53                   	push   %rbx
  400f82:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f89:	89 f5                	mov    %esi,%ebp
  400f8b:	89 3d 67 45 20 00    	mov    %edi,0x204567(%rip)        # 6054f8 <check_level>
  400f91:	8b 3d d1 41 20 00    	mov    0x2041d1(%rip),%edi        # 605168 <target_id>
  400f97:	e8 46 1c 00 00       	call   402be2 <gencookie>
  400f9c:	89 05 62 45 20 00    	mov    %eax,0x204562(%rip)        # 605504 <cookie>
  400fa2:	89 c7                	mov    %eax,%edi
  400fa4:	e8 39 1c 00 00       	call   402be2 <gencookie>
  400fa9:	89 05 51 45 20 00    	mov    %eax,0x204551(%rip)        # 605500 <authkey>
  400faf:	8b 05 b3 41 20 00    	mov    0x2041b3(%rip),%eax        # 605168 <target_id>
  400fb5:	8d 78 01             	lea    0x1(%rax),%edi
  400fb8:	e8 63 fc ff ff       	call   400c20 <srandom@plt>
  400fbd:	e8 8e fd ff ff       	call   400d50 <random@plt>
  400fc2:	89 c7                	mov    %eax,%edi
  400fc4:	e8 9f 02 00 00       	call   401268 <scramble>
  400fc9:	89 c3                	mov    %eax,%ebx
  400fcb:	85 ed                	test   %ebp,%ebp
  400fcd:	74 18                	je     400fe7 <initialize_target+0x67>
  400fcf:	bf 00 00 00 00       	mov    $0x0,%edi
  400fd4:	e8 67 fd ff ff       	call   400d40 <time@plt>
  400fd9:	89 c7                	mov    %eax,%edi
  400fdb:	e8 40 fc ff ff       	call   400c20 <srandom@plt>
  400fe0:	e8 6b fd ff ff       	call   400d50 <random@plt>
  400fe5:	eb 05                	jmp    400fec <initialize_target+0x6c>
  400fe7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fec:	01 c3                	add    %eax,%ebx
  400fee:	0f b7 db             	movzwl %bx,%ebx
  400ff1:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  400ff8:	89 c0                	mov    %eax,%eax
  400ffa:	48 89 05 9f 44 20 00 	mov    %rax,0x20449f(%rip)        # 6054a0 <buf_offset>
  401001:	c6 05 20 51 20 00 72 	movb   $0x72,0x205120(%rip)        # 606128 <target_prefix>
  401008:	83 3d 99 44 20 00 00 	cmpl   $0x0,0x204499(%rip)        # 6054a8 <notify>
  40100f:	0f 84 86 00 00 00    	je     40109b <initialize_target+0x11b>
  401015:	83 3d ec 44 20 00 00 	cmpl   $0x0,0x2044ec(%rip)        # 605508 <is_checker>
  40101c:	75 7d                	jne    40109b <initialize_target+0x11b>
  40101e:	be 00 01 00 00       	mov    $0x100,%esi
  401023:	48 89 e7             	mov    %rsp,%rdi
  401026:	e8 95 fd ff ff       	call   400dc0 <gethostname@plt>
  40102b:	85 c0                	test   %eax,%eax
  40102d:	74 25                	je     401054 <initialize_target+0xd4>
  40102f:	bf 80 2d 40 00       	mov    $0x402d80,%edi
  401034:	e8 17 fc ff ff       	call   400c50 <puts@plt>
  401039:	bf 08 00 00 00       	mov    $0x8,%edi
  40103e:	e8 9d fd ff ff       	call   400de0 <exit@plt>
  401043:	48 89 e6             	mov    %rsp,%rsi
  401046:	e8 b5 fb ff ff       	call   400c00 <strcasecmp@plt>
  40104b:	85 c0                	test   %eax,%eax
  40104d:	74 1a                	je     401069 <initialize_target+0xe9>
  40104f:	83 c3 01             	add    $0x1,%ebx
  401052:	eb 05                	jmp    401059 <initialize_target+0xd9>
  401054:	bb 00 00 00 00       	mov    $0x0,%ebx
  401059:	48 63 c3             	movslq %ebx,%rax
  40105c:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  401063:	00 
  401064:	48 85 ff             	test   %rdi,%rdi
  401067:	75 da                	jne    401043 <initialize_target+0xc3>
  401069:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401070:	00 
  401071:	e8 2c 19 00 00       	call   4029a2 <init_driver>
  401076:	85 c0                	test   %eax,%eax
  401078:	79 21                	jns    40109b <initialize_target+0x11b>
  40107a:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  401081:	00 
  401082:	bf b8 2d 40 00       	mov    $0x402db8,%edi
  401087:	b8 00 00 00 00       	mov    $0x0,%eax
  40108c:	e8 ef fb ff ff       	call   400c80 <printf@plt>
  401091:	bf 08 00 00 00       	mov    $0x8,%edi
  401096:	e8 45 fd ff ff       	call   400de0 <exit@plt>
  40109b:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  4010a2:	5b                   	pop    %rbx
  4010a3:	5d                   	pop    %rbp
  4010a4:	c3                   	ret    

00000000004010a5 <main>:
  4010a5:	41 56                	push   %r14
  4010a7:	41 55                	push   %r13
  4010a9:	41 54                	push   %r12
  4010ab:	55                   	push   %rbp
  4010ac:	53                   	push   %rbx
  4010ad:	41 89 fc             	mov    %edi,%r12d
  4010b0:	48 89 f3             	mov    %rsi,%rbx
  4010b3:	be b1 1d 40 00       	mov    $0x401db1,%esi
  4010b8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010bd:	e8 1e fc ff ff       	call   400ce0 <signal@plt>
  4010c2:	be 63 1d 40 00       	mov    $0x401d63,%esi
  4010c7:	bf 07 00 00 00       	mov    $0x7,%edi
  4010cc:	e8 0f fc ff ff       	call   400ce0 <signal@plt>
  4010d1:	be ff 1d 40 00       	mov    $0x401dff,%esi
  4010d6:	bf 04 00 00 00       	mov    $0x4,%edi
  4010db:	e8 00 fc ff ff       	call   400ce0 <signal@plt>
  4010e0:	83 3d 21 44 20 00 00 	cmpl   $0x0,0x204421(%rip)        # 605508 <is_checker>
  4010e7:	74 20                	je     401109 <main+0x64>
  4010e9:	be 4d 1e 40 00       	mov    $0x401e4d,%esi
  4010ee:	bf 0e 00 00 00       	mov    $0xe,%edi
  4010f3:	e8 e8 fb ff ff       	call   400ce0 <signal@plt>
  4010f8:	bf 05 00 00 00       	mov    $0x5,%edi
  4010fd:	e8 9e fb ff ff       	call   400ca0 <alarm@plt>
  401102:	bd 82 2e 40 00       	mov    $0x402e82,%ebp
  401107:	eb 05                	jmp    40110e <main+0x69>
  401109:	bd 7d 2e 40 00       	mov    $0x402e7d,%ebp
  40110e:	48 8b 05 ab 43 20 00 	mov    0x2043ab(%rip),%rax        # 6054c0 <stdin@GLIBC_2.2.5>
  401115:	48 89 05 d4 43 20 00 	mov    %rax,0x2043d4(%rip)        # 6054f0 <infile>
  40111c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401122:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401128:	e9 b9 00 00 00       	jmp    4011e6 <main+0x141>
  40112d:	83 e8 61             	sub    $0x61,%eax
  401130:	3c 10                	cmp    $0x10,%al
  401132:	0f 87 93 00 00 00    	ja     4011cb <main+0x126>
  401138:	0f b6 c0             	movzbl %al,%eax
  40113b:	ff 24 c5 c8 2e 40 00 	jmp    *0x402ec8(,%rax,8)
  401142:	48 8b 3b             	mov    (%rbx),%rdi
  401145:	e8 b6 fd ff ff       	call   400f00 <usage>
  40114a:	be 4d 31 40 00       	mov    $0x40314d,%esi
  40114f:	48 8b 3d 72 43 20 00 	mov    0x204372(%rip),%rdi        # 6054c8 <optarg@GLIBC_2.2.5>
  401156:	e8 35 fc ff ff       	call   400d90 <fopen@plt>
  40115b:	48 89 05 8e 43 20 00 	mov    %rax,0x20438e(%rip)        # 6054f0 <infile>
  401162:	48 85 c0             	test   %rax,%rax
  401165:	75 7f                	jne    4011e6 <main+0x141>
  401167:	48 8b 15 5a 43 20 00 	mov    0x20435a(%rip),%rdx        # 6054c8 <optarg@GLIBC_2.2.5>
  40116e:	be 8a 2e 40 00       	mov    $0x402e8a,%esi
  401173:	48 8b 3d 56 43 20 00 	mov    0x204356(%rip),%rdi        # 6054d0 <stderr@GLIBC_2.2.5>
  40117a:	e8 71 fb ff ff       	call   400cf0 <fprintf@plt>
  40117f:	b8 01 00 00 00       	mov    $0x1,%eax
  401184:	e9 d6 00 00 00       	jmp    40125f <main+0x1ba>
  401189:	ba 10 00 00 00       	mov    $0x10,%edx
  40118e:	be 00 00 00 00       	mov    $0x0,%esi
  401193:	48 8b 3d 2e 43 20 00 	mov    0x20432e(%rip),%rdi        # 6054c8 <optarg@GLIBC_2.2.5>
  40119a:	e8 11 fc ff ff       	call   400db0 <strtoul@plt>
  40119f:	41 89 c6             	mov    %eax,%r14d
  4011a2:	eb 42                	jmp    4011e6 <main+0x141>
  4011a4:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011a9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ae:	48 8b 3d 13 43 20 00 	mov    0x204313(%rip),%rdi        # 6054c8 <optarg@GLIBC_2.2.5>
  4011b5:	e8 56 fb ff ff       	call   400d10 <strtol@plt>
  4011ba:	41 89 c5             	mov    %eax,%r13d
  4011bd:	eb 27                	jmp    4011e6 <main+0x141>
  4011bf:	c7 05 df 42 20 00 00 	movl   $0x0,0x2042df(%rip)        # 6054a8 <notify>
  4011c6:	00 00 00 
  4011c9:	eb 1b                	jmp    4011e6 <main+0x141>
  4011cb:	40 0f be f6          	movsbl %sil,%esi
  4011cf:	bf a7 2e 40 00       	mov    $0x402ea7,%edi
  4011d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4011d9:	e8 a2 fa ff ff       	call   400c80 <printf@plt>
  4011de:	48 8b 3b             	mov    (%rbx),%rdi
  4011e1:	e8 1a fd ff ff       	call   400f00 <usage>
  4011e6:	48 89 ea             	mov    %rbp,%rdx
  4011e9:	48 89 de             	mov    %rbx,%rsi
  4011ec:	44 89 e7             	mov    %r12d,%edi
  4011ef:	e8 ac fb ff ff       	call   400da0 <getopt@plt>
  4011f4:	89 c6                	mov    %eax,%esi
  4011f6:	3c ff                	cmp    $0xff,%al
  4011f8:	0f 85 2f ff ff ff    	jne    40112d <main+0x88>
  4011fe:	be 01 00 00 00       	mov    $0x1,%esi
  401203:	44 89 ef             	mov    %r13d,%edi
  401206:	e8 75 fd ff ff       	call   400f80 <initialize_target>
  40120b:	83 3d f6 42 20 00 00 	cmpl   $0x0,0x2042f6(%rip)        # 605508 <is_checker>
  401212:	74 25                	je     401239 <main+0x194>
  401214:	44 3b 35 e5 42 20 00 	cmp    0x2042e5(%rip),%r14d        # 605500 <authkey>
  40121b:	74 1c                	je     401239 <main+0x194>
  40121d:	44 89 f6             	mov    %r14d,%esi
  401220:	bf e0 2d 40 00       	mov    $0x402de0,%edi
  401225:	b8 00 00 00 00       	mov    $0x0,%eax
  40122a:	e8 51 fa ff ff       	call   400c80 <printf@plt>
  40122f:	b8 00 00 00 00       	mov    $0x0,%eax
  401234:	e8 32 08 00 00       	call   401a6b <check_fail>
  401239:	8b 35 c5 42 20 00    	mov    0x2042c5(%rip),%esi        # 605504 <cookie>
  40123f:	bf ba 2e 40 00       	mov    $0x402eba,%edi
  401244:	b8 00 00 00 00       	mov    $0x0,%eax
  401249:	e8 32 fa ff ff       	call   400c80 <printf@plt>
  40124e:	48 8b 3d 4b 42 20 00 	mov    0x20424b(%rip),%rdi        # 6054a0 <buf_offset>
  401255:	e8 41 0c 00 00       	call   401e9b <launch>
  40125a:	b8 00 00 00 00       	mov    $0x0,%eax
  40125f:	5b                   	pop    %rbx
  401260:	5d                   	pop    %rbp
  401261:	41 5c                	pop    %r12
  401263:	41 5d                	pop    %r13
  401265:	41 5e                	pop    %r14
  401267:	c3                   	ret    

0000000000401268 <scramble>:
  401268:	b8 00 00 00 00       	mov    $0x0,%eax
  40126d:	eb 11                	jmp    401280 <scramble+0x18>
  40126f:	69 c8 61 af 00 00    	imul   $0xaf61,%eax,%ecx
  401275:	01 f9                	add    %edi,%ecx
  401277:	89 c2                	mov    %eax,%edx
  401279:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  40127d:	83 c0 01             	add    $0x1,%eax
  401280:	83 f8 09             	cmp    $0x9,%eax
  401283:	76 ea                	jbe    40126f <scramble+0x7>
  401285:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401289:	69 c0 b7 90 00 00    	imul   $0x90b7,%eax,%eax
  40128f:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401293:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401297:	69 c0 ea c6 00 00    	imul   $0xc6ea,%eax,%eax
  40129d:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4012a1:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012a5:	69 c0 11 1a 00 00    	imul   $0x1a11,%eax,%eax
  4012ab:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012af:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012b3:	69 c0 e1 99 00 00    	imul   $0x99e1,%eax,%eax
  4012b9:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012bd:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012c1:	69 c0 36 2a 00 00    	imul   $0x2a36,%eax,%eax
  4012c7:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012cb:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4012cf:	69 c0 ac 15 00 00    	imul   $0x15ac,%eax,%eax
  4012d5:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4012d9:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012dd:	69 c0 82 67 00 00    	imul   $0x6782,%eax,%eax
  4012e3:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012e7:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4012eb:	69 c0 07 25 00 00    	imul   $0x2507,%eax,%eax
  4012f1:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4012f5:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4012f9:	69 c0 30 28 00 00    	imul   $0x2830,%eax,%eax
  4012ff:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401303:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401307:	69 c0 0c 9b 00 00    	imul   $0x9b0c,%eax,%eax
  40130d:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401311:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401315:	69 c0 ed 98 00 00    	imul   $0x98ed,%eax,%eax
  40131b:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40131f:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401323:	69 c0 53 27 00 00    	imul   $0x2753,%eax,%eax
  401329:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40132d:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401331:	69 c0 83 d3 00 00    	imul   $0xd383,%eax,%eax
  401337:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40133b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40133f:	69 c0 a1 58 00 00    	imul   $0x58a1,%eax,%eax
  401345:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401349:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40134d:	69 c0 2e 59 00 00    	imul   $0x592e,%eax,%eax
  401353:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401357:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40135b:	69 c0 4f 2f 00 00    	imul   $0x2f4f,%eax,%eax
  401361:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401365:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401369:	69 c0 12 40 00 00    	imul   $0x4012,%eax,%eax
  40136f:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401373:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401377:	69 c0 3b 68 00 00    	imul   $0x683b,%eax,%eax
  40137d:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401381:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401385:	69 c0 fb 67 00 00    	imul   $0x67fb,%eax,%eax
  40138b:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40138f:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401393:	69 c0 8d 01 00 00    	imul   $0x18d,%eax,%eax
  401399:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40139d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013a1:	69 c0 5c 3d 00 00    	imul   $0x3d5c,%eax,%eax
  4013a7:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013ab:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4013af:	69 c0 f5 0b 00 00    	imul   $0xbf5,%eax,%eax
  4013b5:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4013b9:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013bd:	69 c0 ab 4f 00 00    	imul   $0x4fab,%eax,%eax
  4013c3:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013c7:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013cb:	69 c0 a1 69 00 00    	imul   $0x69a1,%eax,%eax
  4013d1:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013d5:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013d9:	69 c0 2c 22 00 00    	imul   $0x222c,%eax,%eax
  4013df:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013e3:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013e7:	69 c0 f6 61 00 00    	imul   $0x61f6,%eax,%eax
  4013ed:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013f1:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013f5:	69 c0 b3 7d 00 00    	imul   $0x7db3,%eax,%eax
  4013fb:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013ff:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401403:	69 c0 ea 63 00 00    	imul   $0x63ea,%eax,%eax
  401409:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40140d:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401411:	69 c0 74 a6 00 00    	imul   $0xa674,%eax,%eax
  401417:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40141b:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40141f:	69 c0 24 d1 00 00    	imul   $0xd124,%eax,%eax
  401425:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401429:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40142d:	69 c0 81 3a 00 00    	imul   $0x3a81,%eax,%eax
  401433:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401437:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40143b:	69 c0 87 e9 00 00    	imul   $0xe987,%eax,%eax
  401441:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401445:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401449:	69 c0 ac f6 00 00    	imul   $0xf6ac,%eax,%eax
  40144f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401453:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401457:	69 c0 b6 d4 00 00    	imul   $0xd4b6,%eax,%eax
  40145d:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401461:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401465:	69 c0 de 53 00 00    	imul   $0x53de,%eax,%eax
  40146b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40146f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401473:	69 c0 d8 f0 00 00    	imul   $0xf0d8,%eax,%eax
  401479:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40147d:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401481:	69 c0 7d ed 00 00    	imul   $0xed7d,%eax,%eax
  401487:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40148b:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40148f:	69 c0 1a 36 00 00    	imul   $0x361a,%eax,%eax
  401495:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401499:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40149d:	69 c0 ca 2d 00 00    	imul   $0x2dca,%eax,%eax
  4014a3:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014a7:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014ab:	69 c0 05 b5 00 00    	imul   $0xb505,%eax,%eax
  4014b1:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014b5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014b9:	69 c0 69 a4 00 00    	imul   $0xa469,%eax,%eax
  4014bf:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014c3:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4014c7:	69 c0 0f 0b 00 00    	imul   $0xb0f,%eax,%eax
  4014cd:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4014d1:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014d5:	69 c0 45 a0 00 00    	imul   $0xa045,%eax,%eax
  4014db:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014df:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014e3:	69 c0 54 73 00 00    	imul   $0x7354,%eax,%eax
  4014e9:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014ed:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014f1:	69 c0 86 2b 00 00    	imul   $0x2b86,%eax,%eax
  4014f7:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014fb:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4014ff:	69 c0 5b 46 00 00    	imul   $0x465b,%eax,%eax
  401505:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401509:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40150d:	69 c0 ec 44 00 00    	imul   $0x44ec,%eax,%eax
  401513:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401517:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40151b:	69 c0 9a e0 00 00    	imul   $0xe09a,%eax,%eax
  401521:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401525:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401529:	69 c0 a4 81 00 00    	imul   $0x81a4,%eax,%eax
  40152f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401533:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401537:	69 c0 40 9a 00 00    	imul   $0x9a40,%eax,%eax
  40153d:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401541:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401545:	69 c0 94 8b 00 00    	imul   $0x8b94,%eax,%eax
  40154b:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40154f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401553:	69 c0 be 66 00 00    	imul   $0x66be,%eax,%eax
  401559:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40155d:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401561:	69 c0 e6 87 00 00    	imul   $0x87e6,%eax,%eax
  401567:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40156b:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40156f:	69 c0 3b b6 00 00    	imul   $0xb63b,%eax,%eax
  401575:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401579:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40157d:	69 c0 93 3c 00 00    	imul   $0x3c93,%eax,%eax
  401583:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401587:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40158b:	69 c0 a7 05 00 00    	imul   $0x5a7,%eax,%eax
  401591:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401595:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401599:	69 c0 3b 82 00 00    	imul   $0x823b,%eax,%eax
  40159f:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4015a3:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015a7:	69 c0 1a 03 00 00    	imul   $0x31a,%eax,%eax
  4015ad:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015b1:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015b5:	69 c0 b1 7f 00 00    	imul   $0x7fb1,%eax,%eax
  4015bb:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015bf:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015c3:	69 c0 3a 69 00 00    	imul   $0x693a,%eax,%eax
  4015c9:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015cd:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015d1:	69 c0 e6 ba 00 00    	imul   $0xbae6,%eax,%eax
  4015d7:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015db:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4015df:	69 c0 3e 11 00 00    	imul   $0x113e,%eax,%eax
  4015e5:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4015e9:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015ed:	69 c0 78 df 00 00    	imul   $0xdf78,%eax,%eax
  4015f3:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015f7:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015fb:	69 c0 6b 3b 00 00    	imul   $0x3b6b,%eax,%eax
  401601:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401605:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401609:	69 c0 28 a7 00 00    	imul   $0xa728,%eax,%eax
  40160f:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401613:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401617:	69 c0 a0 36 00 00    	imul   $0x36a0,%eax,%eax
  40161d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401621:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401625:	69 c0 c3 60 00 00    	imul   $0x60c3,%eax,%eax
  40162b:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40162f:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401633:	69 c0 cf ab 00 00    	imul   $0xabcf,%eax,%eax
  401639:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40163d:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401641:	69 c0 36 3a 00 00    	imul   $0x3a36,%eax,%eax
  401647:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40164b:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40164f:	69 c0 5b 9e 00 00    	imul   $0x9e5b,%eax,%eax
  401655:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401659:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40165d:	69 c0 4a cd 00 00    	imul   $0xcd4a,%eax,%eax
  401663:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401667:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40166b:	69 c0 c6 57 00 00    	imul   $0x57c6,%eax,%eax
  401671:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401675:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401679:	69 c0 b9 b4 00 00    	imul   $0xb4b9,%eax,%eax
  40167f:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401683:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401687:	69 c0 06 72 00 00    	imul   $0x7206,%eax,%eax
  40168d:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401691:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401695:	69 c0 4e d1 00 00    	imul   $0xd14e,%eax,%eax
  40169b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40169f:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016a3:	69 c0 a1 df 00 00    	imul   $0xdfa1,%eax,%eax
  4016a9:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016ad:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016b1:	69 c0 d7 8a 00 00    	imul   $0x8ad7,%eax,%eax
  4016b7:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4016bb:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016bf:	69 c0 07 8c 00 00    	imul   $0x8c07,%eax,%eax
  4016c5:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016c9:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4016cd:	69 c0 b7 e2 00 00    	imul   $0xe2b7,%eax,%eax
  4016d3:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4016d7:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016db:	69 c0 6c cb 00 00    	imul   $0xcb6c,%eax,%eax
  4016e1:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016e5:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016e9:	69 c0 1d 9d 00 00    	imul   $0x9d1d,%eax,%eax
  4016ef:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016f3:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016f7:	69 c0 9d bc 00 00    	imul   $0xbc9d,%eax,%eax
  4016fd:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401701:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401705:	69 c0 6a 9f 00 00    	imul   $0x9f6a,%eax,%eax
  40170b:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40170f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401713:	69 c0 8b e6 00 00    	imul   $0xe68b,%eax,%eax
  401719:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40171d:	ba 00 00 00 00       	mov    $0x0,%edx
  401722:	b8 00 00 00 00       	mov    $0x0,%eax
  401727:	eb 0b                	jmp    401734 <scramble+0x4cc>
  401729:	89 d1                	mov    %edx,%ecx
  40172b:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  40172f:	01 c8                	add    %ecx,%eax
  401731:	83 c2 01             	add    $0x1,%edx
  401734:	83 fa 09             	cmp    $0x9,%edx
  401737:	76 f0                	jbe    401729 <scramble+0x4c1>
  401739:	f3 c3                	repz ret 

000000000040173b <getbuf>:
  40173b:	48 83 ec 28          	sub    $0x28,%rsp
  40173f:	48 89 e7             	mov    %rsp,%rdi
  401742:	e8 53 03 00 00       	call   401a9a <Gets>
  401747:	b8 01 00 00 00       	mov    $0x1,%eax
  40174c:	48 83 c4 28          	add    $0x28,%rsp
  401750:	c3                   	ret    

0000000000401751 <touch1>:
  401751:	48 83 ec 08          	sub    $0x8,%rsp
  401755:	c7 05 9d 3d 20 00 01 	movl   $0x1,0x203d9d(%rip)        # 6054fc <vlevel>
  40175c:	00 00 00 
  40175f:	bf a1 2f 40 00       	mov    $0x402fa1,%edi
  401764:	e8 e7 f4 ff ff       	call   400c50 <puts@plt>
  401769:	bf 01 00 00 00       	mov    $0x1,%edi
  40176e:	e8 16 05 00 00       	call   401c89 <validate>
  401773:	bf 00 00 00 00       	mov    $0x0,%edi
  401778:	e8 63 f6 ff ff       	call   400de0 <exit@plt>

000000000040177d <touch2>:
  40177d:	48 83 ec 08          	sub    $0x8,%rsp
  401781:	89 fe                	mov    %edi,%esi
  401783:	c7 05 6f 3d 20 00 02 	movl   $0x2,0x203d6f(%rip)        # 6054fc <vlevel>
  40178a:	00 00 00 
  40178d:	3b 3d 71 3d 20 00    	cmp    0x203d71(%rip),%edi        # 605504 <cookie>
  401793:	75 1b                	jne    4017b0 <touch2+0x33>
  401795:	bf c8 2f 40 00       	mov    $0x402fc8,%edi
  40179a:	b8 00 00 00 00       	mov    $0x0,%eax
  40179f:	e8 dc f4 ff ff       	call   400c80 <printf@plt>
  4017a4:	bf 02 00 00 00       	mov    $0x2,%edi
  4017a9:	e8 db 04 00 00       	call   401c89 <validate>
  4017ae:	eb 19                	jmp    4017c9 <touch2+0x4c>
  4017b0:	bf f0 2f 40 00       	mov    $0x402ff0,%edi
  4017b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ba:	e8 c1 f4 ff ff       	call   400c80 <printf@plt>
  4017bf:	bf 02 00 00 00       	mov    $0x2,%edi
  4017c4:	e8 72 05 00 00       	call   401d3b <fail>
  4017c9:	bf 00 00 00 00       	mov    $0x0,%edi
  4017ce:	e8 0d f6 ff ff       	call   400de0 <exit@plt>

00000000004017d3 <hexmatch>:
  4017d3:	41 54                	push   %r12
  4017d5:	55                   	push   %rbp
  4017d6:	53                   	push   %rbx
  4017d7:	48 83 ec 70          	sub    $0x70,%rsp
  4017db:	41 89 fc             	mov    %edi,%r12d
  4017de:	48 89 f5             	mov    %rsi,%rbp
  4017e1:	e8 6a f5 ff ff       	call   400d50 <random@plt>
  4017e6:	48 89 c1             	mov    %rax,%rcx
  4017e9:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4017f0:	0a d7 a3 
  4017f3:	48 f7 ea             	imul   %rdx
  4017f6:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  4017fa:	48 c1 f8 06          	sar    $0x6,%rax
  4017fe:	48 89 ce             	mov    %rcx,%rsi
  401801:	48 c1 fe 3f          	sar    $0x3f,%rsi
  401805:	48 29 f0             	sub    %rsi,%rax
  401808:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40180c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401810:	48 c1 e0 02          	shl    $0x2,%rax
  401814:	48 29 c1             	sub    %rax,%rcx
  401817:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  40181b:	44 89 e2             	mov    %r12d,%edx
  40181e:	be be 2f 40 00       	mov    $0x402fbe,%esi
  401823:	48 89 df             	mov    %rbx,%rdi
  401826:	b8 00 00 00 00       	mov    $0x0,%eax
  40182b:	e8 a0 f5 ff ff       	call   400dd0 <sprintf@plt>
  401830:	ba 09 00 00 00       	mov    $0x9,%edx
  401835:	48 89 de             	mov    %rbx,%rsi
  401838:	48 89 ef             	mov    %rbp,%rdi
  40183b:	e8 f0 f3 ff ff       	call   400c30 <strncmp@plt>
  401840:	85 c0                	test   %eax,%eax
  401842:	0f 94 c0             	sete   %al
  401845:	0f b6 c0             	movzbl %al,%eax
  401848:	48 83 c4 70          	add    $0x70,%rsp
  40184c:	5b                   	pop    %rbx
  40184d:	5d                   	pop    %rbp
  40184e:	41 5c                	pop    %r12
  401850:	c3                   	ret    

0000000000401851 <touch3>:
  401851:	53                   	push   %rbx
  401852:	48 89 fb             	mov    %rdi,%rbx
  401855:	c7 05 9d 3c 20 00 03 	movl   $0x3,0x203c9d(%rip)        # 6054fc <vlevel>
  40185c:	00 00 00 
  40185f:	48 89 fe             	mov    %rdi,%rsi
  401862:	8b 3d 9c 3c 20 00    	mov    0x203c9c(%rip),%edi        # 605504 <cookie>
  401868:	e8 66 ff ff ff       	call   4017d3 <hexmatch>
  40186d:	85 c0                	test   %eax,%eax
  40186f:	74 1e                	je     40188f <touch3+0x3e>
  401871:	48 89 de             	mov    %rbx,%rsi
  401874:	bf 18 30 40 00       	mov    $0x403018,%edi
  401879:	b8 00 00 00 00       	mov    $0x0,%eax
  40187e:	e8 fd f3 ff ff       	call   400c80 <printf@plt>
  401883:	bf 03 00 00 00       	mov    $0x3,%edi
  401888:	e8 fc 03 00 00       	call   401c89 <validate>
  40188d:	eb 1c                	jmp    4018ab <touch3+0x5a>
  40188f:	48 89 de             	mov    %rbx,%rsi
  401892:	bf 40 30 40 00       	mov    $0x403040,%edi
  401897:	b8 00 00 00 00       	mov    $0x0,%eax
  40189c:	e8 df f3 ff ff       	call   400c80 <printf@plt>
  4018a1:	bf 03 00 00 00       	mov    $0x3,%edi
  4018a6:	e8 90 04 00 00       	call   401d3b <fail>
  4018ab:	bf 00 00 00 00       	mov    $0x0,%edi
  4018b0:	e8 2b f5 ff ff       	call   400de0 <exit@plt>

00000000004018b5 <test>:
  4018b5:	48 83 ec 08          	sub    $0x8,%rsp
  4018b9:	b8 00 00 00 00       	mov    $0x0,%eax
  4018be:	e8 78 fe ff ff       	call   40173b <getbuf>
  4018c3:	89 c6                	mov    %eax,%esi
  4018c5:	bf 68 30 40 00       	mov    $0x403068,%edi
  4018ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4018cf:	e8 ac f3 ff ff       	call   400c80 <printf@plt>
  4018d4:	48 83 c4 08          	add    $0x8,%rsp
  4018d8:	c3                   	ret    

00000000004018d9 <start_farm>:
  4018d9:	b8 01 00 00 00       	mov    $0x1,%eax
  4018de:	c3                   	ret    

00000000004018df <addval_179>:
  4018df:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  4018e5:	c3                   	ret    

00000000004018e6 <getval_116>:
  4018e6:	b8 58 90 c3 8a       	mov    $0x8ac39058,%eax
  4018eb:	c3                   	ret    

00000000004018ec <addval_486>:
  4018ec:	8d 87 01 58 90 90    	lea    -0x6f6fa7ff(%rdi),%eax
  4018f2:	c3                   	ret    

00000000004018f3 <setval_139>:
  4018f3:	c7 07 68 89 c7 c3    	movl   $0xc3c78968,(%rdi)
  4018f9:	c3                   	ret    

00000000004018fa <getval_325>:
  4018fa:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  4018ff:	c3                   	ret    

0000000000401900 <getval_395>:
  401900:	b8 39 6a 58 94       	mov    $0x94586a39,%eax
  401905:	c3                   	ret    

0000000000401906 <setval_234>:
  401906:	c7 07 c8 89 c7 c3    	movl   $0xc3c789c8,(%rdi)
  40190c:	c3                   	ret    

000000000040190d <addval_192>:
  40190d:	8d 87 55 58 94 c3    	lea    -0x3c6ba7ab(%rdi),%eax
  401913:	c3                   	ret    

0000000000401914 <mid_farm>:
  401914:	b8 01 00 00 00       	mov    $0x1,%eax
  401919:	c3                   	ret    

000000000040191a <add_xy>:
  40191a:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  40191e:	c3                   	ret    

000000000040191f <addval_435>:
  40191f:	8d 87 89 ce 20 c0    	lea    -0x3fdf3177(%rdi),%eax
  401925:	c3                   	ret    

0000000000401926 <getval_309>:
  401926:	b8 89 c2 08 d2       	mov    $0xd208c289,%eax
  40192b:	c3                   	ret    

000000000040192c <addval_293>:
  40192c:	8d 87 89 ce 90 c7    	lea    -0x386f3177(%rdi),%eax
  401932:	c3                   	ret    

0000000000401933 <setval_258>:
  401933:	c7 07 89 d1 c7 c5    	movl   $0xc5c7d189,(%rdi)
  401939:	c3                   	ret    

000000000040193a <addval_124>:
  40193a:	8d 87 89 ce c4 c9    	lea    -0x363b3177(%rdi),%eax
  401940:	c3                   	ret    

0000000000401941 <getval_426>:
  401941:	b8 09 d1 20 db       	mov    $0xdb20d109,%eax
  401946:	c3                   	ret    

0000000000401947 <addval_288>:
  401947:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  40194d:	c3                   	ret    

000000000040194e <getval_201>:
  40194e:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  401953:	c3                   	ret    

0000000000401954 <setval_147>:
  401954:	c7 07 8c 89 ce 90    	movl   $0x90ce898c,(%rdi)
  40195a:	c3                   	ret    

000000000040195b <setval_190>:
  40195b:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401961:	c3                   	ret    

0000000000401962 <setval_167>:
  401962:	c7 07 89 d1 38 c0    	movl   $0xc038d189,(%rdi)
  401968:	c3                   	ret    

0000000000401969 <getval_199>:
  401969:	b8 89 d1 20 c9       	mov    $0xc920d189,%eax
  40196e:	c3                   	ret    

000000000040196f <setval_221>:
  40196f:	c7 07 89 ce 18 c0    	movl   $0xc018ce89,(%rdi)
  401975:	c3                   	ret    

0000000000401976 <getval_346>:
  401976:	b8 89 c2 84 c9       	mov    $0xc984c289,%eax
  40197b:	c3                   	ret    

000000000040197c <getval_152>:
  40197c:	b8 89 ce c4 c0       	mov    $0xc0c4ce89,%eax
  401981:	c3                   	ret    

0000000000401982 <addval_407>:
  401982:	8d 87 99 c2 38 db    	lea    -0x24c73d67(%rdi),%eax
  401988:	c3                   	ret    

0000000000401989 <getval_284>:
  401989:	b8 98 dc 88 ce       	mov    $0xce88dc98,%eax
  40198e:	c3                   	ret    

000000000040198f <getval_298>:
  40198f:	b8 89 c2 c7 88       	mov    $0x88c7c289,%eax
  401994:	c3                   	ret    

0000000000401995 <addval_178>:
  401995:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  40199b:	c3                   	ret    

000000000040199c <setval_240>:
  40199c:	c7 07 8d d1 c3 28    	movl   $0x28c3d18d,(%rdi)
  4019a2:	c3                   	ret    

00000000004019a3 <addval_226>:
  4019a3:	8d 87 89 c2 a4 c0    	lea    -0x3f5b3d77(%rdi),%eax
  4019a9:	c3                   	ret    

00000000004019aa <getval_446>:
  4019aa:	b8 89 c2 91 90       	mov    $0x9091c289,%eax
  4019af:	c3                   	ret    

00000000004019b0 <setval_383>:
  4019b0:	c7 07 ac 89 c2 94    	movl   $0x94c289ac,(%rdi)
  4019b6:	c3                   	ret    

00000000004019b7 <setval_136>:
  4019b7:	c7 07 89 ce 94 db    	movl   $0xdb94ce89,(%rdi)
  4019bd:	c3                   	ret    

00000000004019be <getval_368>:
  4019be:	b8 a9 c2 c3 3e       	mov    $0x3ec3c2a9,%eax
  4019c3:	c3                   	ret    

00000000004019c4 <getval_168>:
  4019c4:	b8 89 d1 00 db       	mov    $0xdb00d189,%eax
  4019c9:	c3                   	ret    

00000000004019ca <getval_347>:
  4019ca:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  4019cf:	c3                   	ret    

00000000004019d0 <addval_317>:
  4019d0:	8d 87 48 c9 e0 90    	lea    -0x6f1f36b8(%rdi),%eax
  4019d6:	c3                   	ret    

00000000004019d7 <addval_115>:
  4019d7:	8d 87 42 c9 d1 c3    	lea    -0x3c2e36be(%rdi),%eax
  4019dd:	c3                   	ret    

00000000004019de <getval_286>:
  4019de:	b8 89 d1 30 c0       	mov    $0xc030d189,%eax
  4019e3:	c3                   	ret    

00000000004019e4 <getval_233>:
  4019e4:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  4019e9:	c3                   	ret    

00000000004019ea <getval_173>:
  4019ea:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  4019ef:	c3                   	ret    

00000000004019f0 <end_farm>:
  4019f0:	b8 01 00 00 00       	mov    $0x1,%eax
  4019f5:	c3                   	ret    
  4019f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4019fd:	00 00 00 

0000000000401a00 <save_char>:
  401a00:	8b 05 1e 47 20 00    	mov    0x20471e(%rip),%eax        # 606124 <gets_cnt>
  401a06:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a0b:	7f 49                	jg     401a56 <save_char+0x56>
  401a0d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a10:	89 f9                	mov    %edi,%ecx
  401a12:	c0 e9 04             	shr    $0x4,%cl
  401a15:	83 e1 0f             	and    $0xf,%ecx
  401a18:	0f b6 b1 90 33 40 00 	movzbl 0x403390(%rcx),%esi
  401a1f:	48 63 ca             	movslq %edx,%rcx
  401a22:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401a29:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401a2c:	83 e7 0f             	and    $0xf,%edi
  401a2f:	0f b6 b7 90 33 40 00 	movzbl 0x403390(%rdi),%esi
  401a36:	48 63 c9             	movslq %ecx,%rcx
  401a39:	40 88 b1 20 55 60 00 	mov    %sil,0x605520(%rcx)
  401a40:	83 c2 02             	add    $0x2,%edx
  401a43:	48 63 d2             	movslq %edx,%rdx
  401a46:	c6 82 20 55 60 00 20 	movb   $0x20,0x605520(%rdx)
  401a4d:	83 c0 01             	add    $0x1,%eax
  401a50:	89 05 ce 46 20 00    	mov    %eax,0x2046ce(%rip)        # 606124 <gets_cnt>
  401a56:	f3 c3                	repz ret 

0000000000401a58 <save_term>:
  401a58:	8b 05 c6 46 20 00    	mov    0x2046c6(%rip),%eax        # 606124 <gets_cnt>
  401a5e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401a61:	48 98                	cltq   
  401a63:	c6 80 20 55 60 00 00 	movb   $0x0,0x605520(%rax)
  401a6a:	c3                   	ret    

0000000000401a6b <check_fail>:
  401a6b:	48 83 ec 08          	sub    $0x8,%rsp
  401a6f:	0f be 35 b2 46 20 00 	movsbl 0x2046b2(%rip),%esi        # 606128 <target_prefix>
  401a76:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401a7b:	8b 15 77 3a 20 00    	mov    0x203a77(%rip),%edx        # 6054f8 <check_level>
  401a81:	bf 8b 30 40 00       	mov    $0x40308b,%edi
  401a86:	b8 00 00 00 00       	mov    $0x0,%eax
  401a8b:	e8 f0 f1 ff ff       	call   400c80 <printf@plt>
  401a90:	bf 01 00 00 00       	mov    $0x1,%edi
  401a95:	e8 46 f3 ff ff       	call   400de0 <exit@plt>

0000000000401a9a <Gets>:
  401a9a:	41 54                	push   %r12
  401a9c:	55                   	push   %rbp
  401a9d:	53                   	push   %rbx
  401a9e:	49 89 fc             	mov    %rdi,%r12
  401aa1:	c7 05 79 46 20 00 00 	movl   $0x0,0x204679(%rip)        # 606124 <gets_cnt>
  401aa8:	00 00 00 
  401aab:	48 89 fb             	mov    %rdi,%rbx
  401aae:	eb 11                	jmp    401ac1 <Gets+0x27>
  401ab0:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401ab4:	88 03                	mov    %al,(%rbx)
  401ab6:	0f b6 f8             	movzbl %al,%edi
  401ab9:	e8 42 ff ff ff       	call   401a00 <save_char>
  401abe:	48 89 eb             	mov    %rbp,%rbx
  401ac1:	48 8b 3d 28 3a 20 00 	mov    0x203a28(%rip),%rdi        # 6054f0 <infile>
  401ac8:	e8 93 f2 ff ff       	call   400d60 <_IO_getc@plt>
  401acd:	83 f8 ff             	cmp    $0xffffffff,%eax
  401ad0:	74 05                	je     401ad7 <Gets+0x3d>
  401ad2:	83 f8 0a             	cmp    $0xa,%eax
  401ad5:	75 d9                	jne    401ab0 <Gets+0x16>
  401ad7:	c6 03 00             	movb   $0x0,(%rbx)
  401ada:	b8 00 00 00 00       	mov    $0x0,%eax
  401adf:	e8 74 ff ff ff       	call   401a58 <save_term>
  401ae4:	4c 89 e0             	mov    %r12,%rax
  401ae7:	5b                   	pop    %rbx
  401ae8:	5d                   	pop    %rbp
  401ae9:	41 5c                	pop    %r12
  401aeb:	c3                   	ret    

0000000000401aec <notify_server>:
  401aec:	83 3d 15 3a 20 00 00 	cmpl   $0x0,0x203a15(%rip)        # 605508 <is_checker>
  401af3:	0f 85 8e 01 00 00    	jne    401c87 <notify_server+0x19b>
  401af9:	53                   	push   %rbx
  401afa:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401b01:	89 fb                	mov    %edi,%ebx
  401b03:	8b 05 1b 46 20 00    	mov    0x20461b(%rip),%eax        # 606124 <gets_cnt>
  401b09:	83 c0 64             	add    $0x64,%eax
  401b0c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b11:	7e 19                	jle    401b2c <notify_server+0x40>
  401b13:	bf c0 31 40 00       	mov    $0x4031c0,%edi
  401b18:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1d:	e8 5e f1 ff ff       	call   400c80 <printf@plt>
  401b22:	bf 01 00 00 00       	mov    $0x1,%edi
  401b27:	e8 b4 f2 ff ff       	call   400de0 <exit@plt>
  401b2c:	44 0f be 0d f4 45 20 	movsbl 0x2045f4(%rip),%r9d        # 606128 <target_prefix>
  401b33:	00 
  401b34:	83 3d 6d 39 20 00 00 	cmpl   $0x0,0x20396d(%rip)        # 6054a8 <notify>
  401b3b:	74 09                	je     401b46 <notify_server+0x5a>
  401b3d:	44 8b 05 bc 39 20 00 	mov    0x2039bc(%rip),%r8d        # 605500 <authkey>
  401b44:	eb 06                	jmp    401b4c <notify_server+0x60>
  401b46:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401b4c:	85 db                	test   %ebx,%ebx
  401b4e:	74 07                	je     401b57 <notify_server+0x6b>
  401b50:	b9 a1 30 40 00       	mov    $0x4030a1,%ecx
  401b55:	eb 05                	jmp    401b5c <notify_server+0x70>
  401b57:	b9 a6 30 40 00       	mov    $0x4030a6,%ecx
  401b5c:	48 c7 44 24 08 20 55 	movq   $0x605520,0x8(%rsp)
  401b63:	60 00 
  401b65:	89 34 24             	mov    %esi,(%rsp)
  401b68:	8b 15 fa 35 20 00    	mov    0x2035fa(%rip),%edx        # 605168 <target_id>
  401b6e:	be ab 30 40 00       	mov    $0x4030ab,%esi
  401b73:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401b7a:	00 
  401b7b:	b8 00 00 00 00       	mov    $0x0,%eax
  401b80:	e8 4b f2 ff ff       	call   400dd0 <sprintf@plt>
  401b85:	83 3d 1c 39 20 00 00 	cmpl   $0x0,0x20391c(%rip)        # 6054a8 <notify>
  401b8c:	74 78                	je     401c06 <notify_server+0x11a>
  401b8e:	85 db                	test   %ebx,%ebx
  401b90:	74 68                	je     401bfa <notify_server+0x10e>
  401b92:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401b97:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401b9d:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401ba4:	00 
  401ba5:	48 8b 15 c4 35 20 00 	mov    0x2035c4(%rip),%rdx        # 605170 <lab>
  401bac:	48 8b 35 c5 35 20 00 	mov    0x2035c5(%rip),%rsi        # 605178 <course>
  401bb3:	48 8b 3d a6 35 20 00 	mov    0x2035a6(%rip),%rdi        # 605160 <user_id>
  401bba:	e8 83 0f 00 00       	call   402b42 <driver_post>
  401bbf:	85 c0                	test   %eax,%eax
  401bc1:	79 1e                	jns    401be1 <notify_server+0xf5>
  401bc3:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401bc8:	bf c7 30 40 00       	mov    $0x4030c7,%edi
  401bcd:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd2:	e8 a9 f0 ff ff       	call   400c80 <printf@plt>
  401bd7:	bf 01 00 00 00       	mov    $0x1,%edi
  401bdc:	e8 ff f1 ff ff       	call   400de0 <exit@plt>
  401be1:	bf f0 31 40 00       	mov    $0x4031f0,%edi
  401be6:	e8 65 f0 ff ff       	call   400c50 <puts@plt>
  401beb:	bf d3 30 40 00       	mov    $0x4030d3,%edi
  401bf0:	e8 5b f0 ff ff       	call   400c50 <puts@plt>
  401bf5:	e9 85 00 00 00       	jmp    401c7f <notify_server+0x193>
  401bfa:	bf dd 30 40 00       	mov    $0x4030dd,%edi
  401bff:	e8 4c f0 ff ff       	call   400c50 <puts@plt>
  401c04:	eb 79                	jmp    401c7f <notify_server+0x193>
  401c06:	85 db                	test   %ebx,%ebx
  401c08:	74 08                	je     401c12 <notify_server+0x126>
  401c0a:	be a1 30 40 00       	mov    $0x4030a1,%esi
  401c0f:	90                   	nop
  401c10:	eb 05                	jmp    401c17 <notify_server+0x12b>
  401c12:	be a6 30 40 00       	mov    $0x4030a6,%esi
  401c17:	bf 28 32 40 00       	mov    $0x403228,%edi
  401c1c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c21:	e8 5a f0 ff ff       	call   400c80 <printf@plt>
  401c26:	48 8b 35 33 35 20 00 	mov    0x203533(%rip),%rsi        # 605160 <user_id>
  401c2d:	bf e4 30 40 00       	mov    $0x4030e4,%edi
  401c32:	b8 00 00 00 00       	mov    $0x0,%eax
  401c37:	e8 44 f0 ff ff       	call   400c80 <printf@plt>
  401c3c:	48 8b 35 35 35 20 00 	mov    0x203535(%rip),%rsi        # 605178 <course>
  401c43:	bf f1 30 40 00       	mov    $0x4030f1,%edi
  401c48:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4d:	e8 2e f0 ff ff       	call   400c80 <printf@plt>
  401c52:	48 8b 35 17 35 20 00 	mov    0x203517(%rip),%rsi        # 605170 <lab>
  401c59:	bf fd 30 40 00       	mov    $0x4030fd,%edi
  401c5e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c63:	e8 18 f0 ff ff       	call   400c80 <printf@plt>
  401c68:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401c6f:	00 
  401c70:	bf 06 31 40 00       	mov    $0x403106,%edi
  401c75:	b8 00 00 00 00       	mov    $0x0,%eax
  401c7a:	e8 01 f0 ff ff       	call   400c80 <printf@plt>
  401c7f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401c86:	5b                   	pop    %rbx
  401c87:	f3 c3                	repz ret 

0000000000401c89 <validate>:
  401c89:	53                   	push   %rbx
  401c8a:	89 fb                	mov    %edi,%ebx
  401c8c:	83 3d 75 38 20 00 00 	cmpl   $0x0,0x203875(%rip)        # 605508 <is_checker>
  401c93:	74 60                	je     401cf5 <validate+0x6c>
  401c95:	39 3d 61 38 20 00    	cmp    %edi,0x203861(%rip)        # 6054fc <vlevel>
  401c9b:	74 14                	je     401cb1 <validate+0x28>
  401c9d:	bf 12 31 40 00       	mov    $0x403112,%edi
  401ca2:	e8 a9 ef ff ff       	call   400c50 <puts@plt>
  401ca7:	b8 00 00 00 00       	mov    $0x0,%eax
  401cac:	e8 ba fd ff ff       	call   401a6b <check_fail>
  401cb1:	8b 35 41 38 20 00    	mov    0x203841(%rip),%esi        # 6054f8 <check_level>
  401cb7:	39 fe                	cmp    %edi,%esi
  401cb9:	74 1b                	je     401cd6 <validate+0x4d>
  401cbb:	89 fa                	mov    %edi,%edx
  401cbd:	bf 50 32 40 00       	mov    $0x403250,%edi
  401cc2:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc7:	e8 b4 ef ff ff       	call   400c80 <printf@plt>
  401ccc:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd1:	e8 95 fd ff ff       	call   401a6b <check_fail>
  401cd6:	0f be 35 4b 44 20 00 	movsbl 0x20444b(%rip),%esi        # 606128 <target_prefix>
  401cdd:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401ce2:	89 fa                	mov    %edi,%edx
  401ce4:	bf 30 31 40 00       	mov    $0x403130,%edi
  401ce9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cee:	e8 8d ef ff ff       	call   400c80 <printf@plt>
  401cf3:	eb 44                	jmp    401d39 <validate+0xb0>
  401cf5:	39 3d 01 38 20 00    	cmp    %edi,0x203801(%rip)        # 6054fc <vlevel>
  401cfb:	74 18                	je     401d15 <validate+0x8c>
  401cfd:	bf 12 31 40 00       	mov    $0x403112,%edi
  401d02:	e8 49 ef ff ff       	call   400c50 <puts@plt>
  401d07:	89 de                	mov    %ebx,%esi
  401d09:	bf 00 00 00 00       	mov    $0x0,%edi
  401d0e:	e8 d9 fd ff ff       	call   401aec <notify_server>
  401d13:	eb 24                	jmp    401d39 <validate+0xb0>
  401d15:	0f be 15 0c 44 20 00 	movsbl 0x20440c(%rip),%edx        # 606128 <target_prefix>
  401d1c:	89 fe                	mov    %edi,%esi
  401d1e:	bf 78 32 40 00       	mov    $0x403278,%edi
  401d23:	b8 00 00 00 00       	mov    $0x0,%eax
  401d28:	e8 53 ef ff ff       	call   400c80 <printf@plt>
  401d2d:	89 de                	mov    %ebx,%esi
  401d2f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d34:	e8 b3 fd ff ff       	call   401aec <notify_server>
  401d39:	5b                   	pop    %rbx
  401d3a:	c3                   	ret    

0000000000401d3b <fail>:
  401d3b:	48 83 ec 08          	sub    $0x8,%rsp
  401d3f:	83 3d c2 37 20 00 00 	cmpl   $0x0,0x2037c2(%rip)        # 605508 <is_checker>
  401d46:	74 0a                	je     401d52 <fail+0x17>
  401d48:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4d:	e8 19 fd ff ff       	call   401a6b <check_fail>
  401d52:	89 fe                	mov    %edi,%esi
  401d54:	bf 00 00 00 00       	mov    $0x0,%edi
  401d59:	e8 8e fd ff ff       	call   401aec <notify_server>
  401d5e:	48 83 c4 08          	add    $0x8,%rsp
  401d62:	c3                   	ret    

0000000000401d63 <bushandler>:
  401d63:	48 83 ec 08          	sub    $0x8,%rsp
  401d67:	83 3d 9a 37 20 00 00 	cmpl   $0x0,0x20379a(%rip)        # 605508 <is_checker>
  401d6e:	74 14                	je     401d84 <bushandler+0x21>
  401d70:	bf 45 31 40 00       	mov    $0x403145,%edi
  401d75:	e8 d6 ee ff ff       	call   400c50 <puts@plt>
  401d7a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d7f:	e8 e7 fc ff ff       	call   401a6b <check_fail>
  401d84:	bf b0 32 40 00       	mov    $0x4032b0,%edi
  401d89:	e8 c2 ee ff ff       	call   400c50 <puts@plt>
  401d8e:	bf 4f 31 40 00       	mov    $0x40314f,%edi
  401d93:	e8 b8 ee ff ff       	call   400c50 <puts@plt>
  401d98:	be 00 00 00 00       	mov    $0x0,%esi
  401d9d:	bf 00 00 00 00       	mov    $0x0,%edi
  401da2:	e8 45 fd ff ff       	call   401aec <notify_server>
  401da7:	bf 01 00 00 00       	mov    $0x1,%edi
  401dac:	e8 2f f0 ff ff       	call   400de0 <exit@plt>

0000000000401db1 <seghandler>:
  401db1:	48 83 ec 08          	sub    $0x8,%rsp
  401db5:	83 3d 4c 37 20 00 00 	cmpl   $0x0,0x20374c(%rip)        # 605508 <is_checker>
  401dbc:	74 14                	je     401dd2 <seghandler+0x21>
  401dbe:	bf 65 31 40 00       	mov    $0x403165,%edi
  401dc3:	e8 88 ee ff ff       	call   400c50 <puts@plt>
  401dc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401dcd:	e8 99 fc ff ff       	call   401a6b <check_fail>
  401dd2:	bf d0 32 40 00       	mov    $0x4032d0,%edi
  401dd7:	e8 74 ee ff ff       	call   400c50 <puts@plt>
  401ddc:	bf 4f 31 40 00       	mov    $0x40314f,%edi
  401de1:	e8 6a ee ff ff       	call   400c50 <puts@plt>
  401de6:	be 00 00 00 00       	mov    $0x0,%esi
  401deb:	bf 00 00 00 00       	mov    $0x0,%edi
  401df0:	e8 f7 fc ff ff       	call   401aec <notify_server>
  401df5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dfa:	e8 e1 ef ff ff       	call   400de0 <exit@plt>

0000000000401dff <illegalhandler>:
  401dff:	48 83 ec 08          	sub    $0x8,%rsp
  401e03:	83 3d fe 36 20 00 00 	cmpl   $0x0,0x2036fe(%rip)        # 605508 <is_checker>
  401e0a:	74 14                	je     401e20 <illegalhandler+0x21>
  401e0c:	bf 78 31 40 00       	mov    $0x403178,%edi
  401e11:	e8 3a ee ff ff       	call   400c50 <puts@plt>
  401e16:	b8 00 00 00 00       	mov    $0x0,%eax
  401e1b:	e8 4b fc ff ff       	call   401a6b <check_fail>
  401e20:	bf f8 32 40 00       	mov    $0x4032f8,%edi
  401e25:	e8 26 ee ff ff       	call   400c50 <puts@plt>
  401e2a:	bf 4f 31 40 00       	mov    $0x40314f,%edi
  401e2f:	e8 1c ee ff ff       	call   400c50 <puts@plt>
  401e34:	be 00 00 00 00       	mov    $0x0,%esi
  401e39:	bf 00 00 00 00       	mov    $0x0,%edi
  401e3e:	e8 a9 fc ff ff       	call   401aec <notify_server>
  401e43:	bf 01 00 00 00       	mov    $0x1,%edi
  401e48:	e8 93 ef ff ff       	call   400de0 <exit@plt>

0000000000401e4d <sigalrmhandler>:
  401e4d:	48 83 ec 08          	sub    $0x8,%rsp
  401e51:	83 3d b0 36 20 00 00 	cmpl   $0x0,0x2036b0(%rip)        # 605508 <is_checker>
  401e58:	74 14                	je     401e6e <sigalrmhandler+0x21>
  401e5a:	bf 8c 31 40 00       	mov    $0x40318c,%edi
  401e5f:	e8 ec ed ff ff       	call   400c50 <puts@plt>
  401e64:	b8 00 00 00 00       	mov    $0x0,%eax
  401e69:	e8 fd fb ff ff       	call   401a6b <check_fail>
  401e6e:	be 05 00 00 00       	mov    $0x5,%esi
  401e73:	bf 28 33 40 00       	mov    $0x403328,%edi
  401e78:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7d:	e8 fe ed ff ff       	call   400c80 <printf@plt>
  401e82:	be 00 00 00 00       	mov    $0x0,%esi
  401e87:	bf 00 00 00 00       	mov    $0x0,%edi
  401e8c:	e8 5b fc ff ff       	call   401aec <notify_server>
  401e91:	bf 01 00 00 00       	mov    $0x1,%edi
  401e96:	e8 45 ef ff ff       	call   400de0 <exit@plt>

0000000000401e9b <launch>:
  401e9b:	55                   	push   %rbp
  401e9c:	48 89 e5             	mov    %rsp,%rbp
  401e9f:	48 89 fa             	mov    %rdi,%rdx
  401ea2:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401ea6:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401eaa:	48 29 c4             	sub    %rax,%rsp
  401ead:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401eb2:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401eb6:	be f4 00 00 00       	mov    $0xf4,%esi
  401ebb:	e8 d0 ed ff ff       	call   400c90 <memset@plt>
  401ec0:	48 8b 05 f9 35 20 00 	mov    0x2035f9(%rip),%rax        # 6054c0 <stdin@GLIBC_2.2.5>
  401ec7:	48 39 05 22 36 20 00 	cmp    %rax,0x203622(%rip)        # 6054f0 <infile>
  401ece:	75 0f                	jne    401edf <launch+0x44>
  401ed0:	bf 94 31 40 00       	mov    $0x403194,%edi
  401ed5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eda:	e8 a1 ed ff ff       	call   400c80 <printf@plt>
  401edf:	c7 05 13 36 20 00 00 	movl   $0x0,0x203613(%rip)        # 6054fc <vlevel>
  401ee6:	00 00 00 
  401ee9:	b8 00 00 00 00       	mov    $0x0,%eax
  401eee:	e8 c2 f9 ff ff       	call   4018b5 <test>
  401ef3:	83 3d 0e 36 20 00 00 	cmpl   $0x0,0x20360e(%rip)        # 605508 <is_checker>
  401efa:	74 14                	je     401f10 <launch+0x75>
  401efc:	bf a1 31 40 00       	mov    $0x4031a1,%edi
  401f01:	e8 4a ed ff ff       	call   400c50 <puts@plt>
  401f06:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0b:	e8 5b fb ff ff       	call   401a6b <check_fail>
  401f10:	bf ac 31 40 00       	mov    $0x4031ac,%edi
  401f15:	e8 36 ed ff ff       	call   400c50 <puts@plt>
  401f1a:	c9                   	leave  
  401f1b:	c3                   	ret    

0000000000401f1c <stable_launch>:
  401f1c:	53                   	push   %rbx
  401f1d:	48 89 3d c4 35 20 00 	mov    %rdi,0x2035c4(%rip)        # 6054e8 <global_offset>
  401f24:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401f2a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f30:	b9 32 01 00 00       	mov    $0x132,%ecx
  401f35:	ba 07 00 00 00       	mov    $0x7,%edx
  401f3a:	be 00 00 10 00       	mov    $0x100000,%esi
  401f3f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401f44:	e8 27 ed ff ff       	call   400c70 <mmap@plt>
  401f49:	48 89 c3             	mov    %rax,%rbx
  401f4c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401f52:	74 32                	je     401f86 <stable_launch+0x6a>
  401f54:	be 00 00 10 00       	mov    $0x100000,%esi
  401f59:	48 89 c7             	mov    %rax,%rdi
  401f5c:	e8 1f ee ff ff       	call   400d80 <munmap@plt>
  401f61:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401f66:	be 60 33 40 00       	mov    $0x403360,%esi
  401f6b:	48 8b 3d 5e 35 20 00 	mov    0x20355e(%rip),%rdi        # 6054d0 <stderr@GLIBC_2.2.5>
  401f72:	b8 00 00 00 00       	mov    $0x0,%eax
  401f77:	e8 74 ed ff ff       	call   400cf0 <fprintf@plt>
  401f7c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f81:	e8 5a ee ff ff       	call   400de0 <exit@plt>
  401f86:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401f8d:	48 89 15 9c 41 20 00 	mov    %rdx,0x20419c(%rip)        # 606130 <stack_top>
  401f94:	48 89 e0             	mov    %rsp,%rax
  401f97:	48 89 d4             	mov    %rdx,%rsp
  401f9a:	48 89 c2             	mov    %rax,%rdx
  401f9d:	48 89 15 3c 35 20 00 	mov    %rdx,0x20353c(%rip)        # 6054e0 <global_save_stack>
  401fa4:	48 8b 3d 3d 35 20 00 	mov    0x20353d(%rip),%rdi        # 6054e8 <global_offset>
  401fab:	e8 eb fe ff ff       	call   401e9b <launch>
  401fb0:	48 8b 05 29 35 20 00 	mov    0x203529(%rip),%rax        # 6054e0 <global_save_stack>
  401fb7:	48 89 c4             	mov    %rax,%rsp
  401fba:	be 00 00 10 00       	mov    $0x100000,%esi
  401fbf:	48 89 df             	mov    %rbx,%rdi
  401fc2:	e8 b9 ed ff ff       	call   400d80 <munmap@plt>
  401fc7:	5b                   	pop    %rbx
  401fc8:	c3                   	ret    
  401fc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401fd0 <rio_readinitb>:
  401fd0:	89 37                	mov    %esi,(%rdi)
  401fd2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401fd9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401fdd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401fe1:	c3                   	ret    

0000000000401fe2 <sigalrm_handler>:
  401fe2:	48 83 ec 08          	sub    $0x8,%rsp
  401fe6:	ba 00 00 00 00       	mov    $0x0,%edx
  401feb:	be a0 33 40 00       	mov    $0x4033a0,%esi
  401ff0:	48 8b 3d d9 34 20 00 	mov    0x2034d9(%rip),%rdi        # 6054d0 <stderr@GLIBC_2.2.5>
  401ff7:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffc:	e8 ef ec ff ff       	call   400cf0 <fprintf@plt>
  402001:	bf 01 00 00 00       	mov    $0x1,%edi
  402006:	e8 d5 ed ff ff       	call   400de0 <exit@plt>

000000000040200b <urlencode>:
  40200b:	41 54                	push   %r12
  40200d:	55                   	push   %rbp
  40200e:	53                   	push   %rbx
  40200f:	48 83 ec 10          	sub    $0x10,%rsp
  402013:	48 89 fb             	mov    %rdi,%rbx
  402016:	48 89 f5             	mov    %rsi,%rbp
  402019:	b8 00 00 00 00       	mov    $0x0,%eax
  40201e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402025:	f2 ae                	repnz scas %es:(%rdi),%al
  402027:	48 f7 d1             	not    %rcx
  40202a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40202d:	e9 93 00 00 00       	jmp    4020c5 <urlencode+0xba>
  402032:	0f b6 13             	movzbl (%rbx),%edx
  402035:	80 fa 2a             	cmp    $0x2a,%dl
  402038:	0f 94 c1             	sete   %cl
  40203b:	80 fa 2d             	cmp    $0x2d,%dl
  40203e:	0f 94 c0             	sete   %al
  402041:	08 c1                	or     %al,%cl
  402043:	75 1f                	jne    402064 <urlencode+0x59>
  402045:	80 fa 2e             	cmp    $0x2e,%dl
  402048:	74 1a                	je     402064 <urlencode+0x59>
  40204a:	80 fa 5f             	cmp    $0x5f,%dl
  40204d:	74 15                	je     402064 <urlencode+0x59>
  40204f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402052:	3c 09                	cmp    $0x9,%al
  402054:	76 0e                	jbe    402064 <urlencode+0x59>
  402056:	8d 42 bf             	lea    -0x41(%rdx),%eax
  402059:	3c 19                	cmp    $0x19,%al
  40205b:	76 07                	jbe    402064 <urlencode+0x59>
  40205d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402060:	3c 19                	cmp    $0x19,%al
  402062:	77 09                	ja     40206d <urlencode+0x62>
  402064:	88 55 00             	mov    %dl,0x0(%rbp)
  402067:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40206b:	eb 51                	jmp    4020be <urlencode+0xb3>
  40206d:	80 fa 20             	cmp    $0x20,%dl
  402070:	75 0a                	jne    40207c <urlencode+0x71>
  402072:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402076:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40207a:	eb 42                	jmp    4020be <urlencode+0xb3>
  40207c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  40207f:	3c 5f                	cmp    $0x5f,%al
  402081:	0f 96 c1             	setbe  %cl
  402084:	80 fa 09             	cmp    $0x9,%dl
  402087:	0f 94 c0             	sete   %al
  40208a:	08 c1                	or     %al,%cl
  40208c:	74 45                	je     4020d3 <urlencode+0xc8>
  40208e:	0f b6 d2             	movzbl %dl,%edx
  402091:	be 48 34 40 00       	mov    $0x403448,%esi
  402096:	48 89 e7             	mov    %rsp,%rdi
  402099:	b8 00 00 00 00       	mov    $0x0,%eax
  40209e:	e8 2d ed ff ff       	call   400dd0 <sprintf@plt>
  4020a3:	0f b6 04 24          	movzbl (%rsp),%eax
  4020a7:	88 45 00             	mov    %al,0x0(%rbp)
  4020aa:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4020af:	88 45 01             	mov    %al,0x1(%rbp)
  4020b2:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4020b7:	88 45 02             	mov    %al,0x2(%rbp)
  4020ba:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4020be:	48 83 c3 01          	add    $0x1,%rbx
  4020c2:	44 89 e0             	mov    %r12d,%eax
  4020c5:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4020c9:	85 c0                	test   %eax,%eax
  4020cb:	0f 85 61 ff ff ff    	jne    402032 <urlencode+0x27>
  4020d1:	eb 05                	jmp    4020d8 <urlencode+0xcd>
  4020d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020d8:	48 83 c4 10          	add    $0x10,%rsp
  4020dc:	5b                   	pop    %rbx
  4020dd:	5d                   	pop    %rbp
  4020de:	41 5c                	pop    %r12
  4020e0:	c3                   	ret    

00000000004020e1 <rio_writen>:
  4020e1:	41 55                	push   %r13
  4020e3:	41 54                	push   %r12
  4020e5:	55                   	push   %rbp
  4020e6:	53                   	push   %rbx
  4020e7:	48 83 ec 08          	sub    $0x8,%rsp
  4020eb:	41 89 fc             	mov    %edi,%r12d
  4020ee:	48 89 f5             	mov    %rsi,%rbp
  4020f1:	49 89 d5             	mov    %rdx,%r13
  4020f4:	48 89 d3             	mov    %rdx,%rbx
  4020f7:	eb 28                	jmp    402121 <rio_writen+0x40>
  4020f9:	48 89 da             	mov    %rbx,%rdx
  4020fc:	48 89 ee             	mov    %rbp,%rsi
  4020ff:	44 89 e7             	mov    %r12d,%edi
  402102:	e8 59 eb ff ff       	call   400c60 <write@plt>
  402107:	48 85 c0             	test   %rax,%rax
  40210a:	7f 0f                	jg     40211b <rio_writen+0x3a>
  40210c:	e8 ff ea ff ff       	call   400c10 <__errno_location@plt>
  402111:	83 38 04             	cmpl   $0x4,(%rax)
  402114:	75 15                	jne    40212b <rio_writen+0x4a>
  402116:	b8 00 00 00 00       	mov    $0x0,%eax
  40211b:	48 29 c3             	sub    %rax,%rbx
  40211e:	48 01 c5             	add    %rax,%rbp
  402121:	48 85 db             	test   %rbx,%rbx
  402124:	75 d3                	jne    4020f9 <rio_writen+0x18>
  402126:	4c 89 e8             	mov    %r13,%rax
  402129:	eb 07                	jmp    402132 <rio_writen+0x51>
  40212b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402132:	48 83 c4 08          	add    $0x8,%rsp
  402136:	5b                   	pop    %rbx
  402137:	5d                   	pop    %rbp
  402138:	41 5c                	pop    %r12
  40213a:	41 5d                	pop    %r13
  40213c:	c3                   	ret    

000000000040213d <rio_read>:
  40213d:	41 56                	push   %r14
  40213f:	41 55                	push   %r13
  402141:	41 54                	push   %r12
  402143:	55                   	push   %rbp
  402144:	53                   	push   %rbx
  402145:	48 89 fb             	mov    %rdi,%rbx
  402148:	49 89 f6             	mov    %rsi,%r14
  40214b:	49 89 d5             	mov    %rdx,%r13
  40214e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402152:	eb 2a                	jmp    40217e <rio_read+0x41>
  402154:	ba 00 20 00 00       	mov    $0x2000,%edx
  402159:	4c 89 e6             	mov    %r12,%rsi
  40215c:	8b 3b                	mov    (%rbx),%edi
  40215e:	e8 5d eb ff ff       	call   400cc0 <read@plt>
  402163:	89 43 04             	mov    %eax,0x4(%rbx)
  402166:	85 c0                	test   %eax,%eax
  402168:	79 0c                	jns    402176 <rio_read+0x39>
  40216a:	e8 a1 ea ff ff       	call   400c10 <__errno_location@plt>
  40216f:	83 38 04             	cmpl   $0x4,(%rax)
  402172:	74 0a                	je     40217e <rio_read+0x41>
  402174:	eb 37                	jmp    4021ad <rio_read+0x70>
  402176:	85 c0                	test   %eax,%eax
  402178:	74 3c                	je     4021b6 <rio_read+0x79>
  40217a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40217e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402181:	85 ed                	test   %ebp,%ebp
  402183:	7e cf                	jle    402154 <rio_read+0x17>
  402185:	89 e8                	mov    %ebp,%eax
  402187:	4c 39 e8             	cmp    %r13,%rax
  40218a:	72 03                	jb     40218f <rio_read+0x52>
  40218c:	44 89 ed             	mov    %r13d,%ebp
  40218f:	4c 63 e5             	movslq %ebp,%r12
  402192:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402196:	4c 89 e2             	mov    %r12,%rdx
  402199:	4c 89 f7             	mov    %r14,%rdi
  40219c:	e8 7f eb ff ff       	call   400d20 <memcpy@plt>
  4021a1:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4021a5:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4021a8:	4c 89 e0             	mov    %r12,%rax
  4021ab:	eb 0e                	jmp    4021bb <rio_read+0x7e>
  4021ad:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021b4:	eb 05                	jmp    4021bb <rio_read+0x7e>
  4021b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021bb:	5b                   	pop    %rbx
  4021bc:	5d                   	pop    %rbp
  4021bd:	41 5c                	pop    %r12
  4021bf:	41 5d                	pop    %r13
  4021c1:	41 5e                	pop    %r14
  4021c3:	c3                   	ret    

00000000004021c4 <rio_readlineb>:
  4021c4:	41 55                	push   %r13
  4021c6:	41 54                	push   %r12
  4021c8:	55                   	push   %rbp
  4021c9:	53                   	push   %rbx
  4021ca:	48 83 ec 18          	sub    $0x18,%rsp
  4021ce:	49 89 fd             	mov    %rdi,%r13
  4021d1:	48 89 f5             	mov    %rsi,%rbp
  4021d4:	49 89 d4             	mov    %rdx,%r12
  4021d7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4021dc:	eb 3d                	jmp    40221b <rio_readlineb+0x57>
  4021de:	ba 01 00 00 00       	mov    $0x1,%edx
  4021e3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4021e8:	4c 89 ef             	mov    %r13,%rdi
  4021eb:	e8 4d ff ff ff       	call   40213d <rio_read>
  4021f0:	83 f8 01             	cmp    $0x1,%eax
  4021f3:	75 12                	jne    402207 <rio_readlineb+0x43>
  4021f5:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4021f9:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4021fe:	88 45 00             	mov    %al,0x0(%rbp)
  402201:	3c 0a                	cmp    $0xa,%al
  402203:	75 0f                	jne    402214 <rio_readlineb+0x50>
  402205:	eb 1b                	jmp    402222 <rio_readlineb+0x5e>
  402207:	85 c0                	test   %eax,%eax
  402209:	75 23                	jne    40222e <rio_readlineb+0x6a>
  40220b:	48 83 fb 01          	cmp    $0x1,%rbx
  40220f:	90                   	nop
  402210:	75 13                	jne    402225 <rio_readlineb+0x61>
  402212:	eb 23                	jmp    402237 <rio_readlineb+0x73>
  402214:	48 83 c3 01          	add    $0x1,%rbx
  402218:	48 89 d5             	mov    %rdx,%rbp
  40221b:	4c 39 e3             	cmp    %r12,%rbx
  40221e:	72 be                	jb     4021de <rio_readlineb+0x1a>
  402220:	eb 03                	jmp    402225 <rio_readlineb+0x61>
  402222:	48 89 d5             	mov    %rdx,%rbp
  402225:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402229:	48 89 d8             	mov    %rbx,%rax
  40222c:	eb 0e                	jmp    40223c <rio_readlineb+0x78>
  40222e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402235:	eb 05                	jmp    40223c <rio_readlineb+0x78>
  402237:	b8 00 00 00 00       	mov    $0x0,%eax
  40223c:	48 83 c4 18          	add    $0x18,%rsp
  402240:	5b                   	pop    %rbx
  402241:	5d                   	pop    %rbp
  402242:	41 5c                	pop    %r12
  402244:	41 5d                	pop    %r13
  402246:	c3                   	ret    

0000000000402247 <submitr>:
  402247:	41 57                	push   %r15
  402249:	41 56                	push   %r14
  40224b:	41 55                	push   %r13
  40224d:	41 54                	push   %r12
  40224f:	55                   	push   %rbp
  402250:	53                   	push   %rbx
  402251:	48 81 ec 68 c0 00 00 	sub    $0xc068,%rsp
  402258:	49 89 fc             	mov    %rdi,%r12
  40225b:	89 74 24 14          	mov    %esi,0x14(%rsp)
  40225f:	49 89 d7             	mov    %rdx,%r15
  402262:	49 89 ce             	mov    %rcx,%r14
  402265:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40226a:	4d 89 cd             	mov    %r9,%r13
  40226d:	48 8b 9c 24 a0 c0 00 	mov    0xc0a0(%rsp),%rbx
  402274:	00 
  402275:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
  40227c:	00 00 00 00 
  402280:	ba 00 00 00 00       	mov    $0x0,%edx
  402285:	be 01 00 00 00       	mov    $0x1,%esi
  40228a:	bf 02 00 00 00       	mov    $0x2,%edi
  40228f:	e8 6c eb ff ff       	call   400e00 <socket@plt>
  402294:	89 c5                	mov    %eax,%ebp
  402296:	85 c0                	test   %eax,%eax
  402298:	79 4e                	jns    4022e8 <submitr+0xa1>
  40229a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4022a1:	3a 20 43 
  4022a4:	48 89 03             	mov    %rax,(%rbx)
  4022a7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4022ae:	20 75 6e 
  4022b1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4022b5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4022bc:	74 6f 20 
  4022bf:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4022c3:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4022ca:	65 20 73 
  4022cd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4022d1:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4022d8:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4022de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022e3:	e9 80 06 00 00       	jmp    402968 <submitr+0x721>
  4022e8:	48 c7 84 24 50 c0 00 	movq   $0x0,0xc050(%rsp)
  4022ef:	00 00 00 00 00 
  4022f4:	48 c7 84 24 58 c0 00 	movq   $0x0,0xc058(%rsp)
  4022fb:	00 00 00 00 00 
  402300:	66 c7 84 24 50 c0 00 	movw   $0x2,0xc050(%rsp)
  402307:	00 02 00 
  40230a:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  40230f:	66 c1 c8 08          	ror    $0x8,%ax
  402313:	66 89 84 24 52 c0 00 	mov    %ax,0xc052(%rsp)
  40231a:	00 
  40231b:	48 8d 94 24 54 c0 00 	lea    0xc054(%rsp),%rdx
  402322:	00 
  402323:	4c 89 e6             	mov    %r12,%rsi
  402326:	bf 02 00 00 00       	mov    $0x2,%edi
  40232b:	e8 00 ea ff ff       	call   400d30 <inet_pton@plt>
  402330:	83 f8 01             	cmp    $0x1,%eax
  402333:	74 57                	je     40238c <submitr+0x145>
  402335:	4c 89 e6             	mov    %r12,%rsi
  402338:	48 89 df             	mov    %rbx,%rdi
  40233b:	e8 00 e9 ff ff       	call   400c40 <strcpy@plt>
  402340:	48 b8 45 72 72 6f 72 	movabs $0x49203a726f727245,%rax
  402347:	3a 20 49 
  40234a:	48 89 03             	mov    %rax,(%rbx)
  40234d:	48 b8 6e 76 61 6c 69 	movabs $0x732064696c61766e,%rax
  402354:	64 20 73 
  402357:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40235b:	48 b8 65 72 76 65 72 	movabs $0x7069207265767265,%rax
  402362:	20 69 70 
  402365:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402369:	48 b8 20 61 64 64 72 	movabs $0x7373657264646120,%rax
  402370:	65 73 73 
  402373:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402377:	c6 43 20 00          	movb   $0x0,0x20(%rbx)
  40237b:	89 ef                	mov    %ebp,%edi
  40237d:	e8 2e e9 ff ff       	call   400cb0 <close@plt>
  402382:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402387:	e9 dc 05 00 00       	jmp    402968 <submitr+0x721>
  40238c:	ba 10 00 00 00       	mov    $0x10,%edx
  402391:	48 8d b4 24 50 c0 00 	lea    0xc050(%rsp),%rsi
  402398:	00 
  402399:	89 ef                	mov    %ebp,%edi
  40239b:	e8 50 ea ff ff       	call   400df0 <connect@plt>
  4023a0:	85 c0                	test   %eax,%eax
  4023a2:	79 59                	jns    4023fd <submitr+0x1b6>
  4023a4:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4023ab:	3a 20 55 
  4023ae:	48 89 03             	mov    %rax,(%rbx)
  4023b1:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4023b8:	20 74 6f 
  4023bb:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023bf:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4023c6:	65 63 74 
  4023c9:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023cd:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4023d4:	68 65 20 
  4023d7:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023db:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4023e2:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4023e8:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4023ec:	89 ef                	mov    %ebp,%edi
  4023ee:	e8 bd e8 ff ff       	call   400cb0 <close@plt>
  4023f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023f8:	e9 6b 05 00 00       	jmp    402968 <submitr+0x721>
  4023fd:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402404:	4c 89 ef             	mov    %r13,%rdi
  402407:	b8 00 00 00 00       	mov    $0x0,%eax
  40240c:	48 89 d1             	mov    %rdx,%rcx
  40240f:	f2 ae                	repnz scas %es:(%rdi),%al
  402411:	48 f7 d1             	not    %rcx
  402414:	48 89 ce             	mov    %rcx,%rsi
  402417:	4c 89 ff             	mov    %r15,%rdi
  40241a:	48 89 d1             	mov    %rdx,%rcx
  40241d:	f2 ae                	repnz scas %es:(%rdi),%al
  40241f:	48 f7 d1             	not    %rcx
  402422:	49 89 c8             	mov    %rcx,%r8
  402425:	4c 89 f7             	mov    %r14,%rdi
  402428:	48 89 d1             	mov    %rdx,%rcx
  40242b:	f2 ae                	repnz scas %es:(%rdi),%al
  40242d:	49 29 c8             	sub    %rcx,%r8
  402430:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402435:	48 89 d1             	mov    %rdx,%rcx
  402438:	f2 ae                	repnz scas %es:(%rdi),%al
  40243a:	49 29 c8             	sub    %rcx,%r8
  40243d:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  402442:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  402447:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40244d:	76 72                	jbe    4024c1 <submitr+0x27a>
  40244f:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402456:	3a 20 52 
  402459:	48 89 03             	mov    %rax,(%rbx)
  40245c:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402463:	20 73 74 
  402466:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40246a:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402471:	74 6f 6f 
  402474:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402478:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  40247f:	65 2e 20 
  402482:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402486:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40248d:	61 73 65 
  402490:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402494:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  40249b:	49 54 52 
  40249e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4024a2:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4024a9:	55 46 00 
  4024ac:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4024b0:	89 ef                	mov    %ebp,%edi
  4024b2:	e8 f9 e7 ff ff       	call   400cb0 <close@plt>
  4024b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024bc:	e9 a7 04 00 00       	jmp    402968 <submitr+0x721>
  4024c1:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  4024c8:	00 
  4024c9:	b9 00 04 00 00       	mov    $0x400,%ecx
  4024ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d3:	48 89 f7             	mov    %rsi,%rdi
  4024d6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4024d9:	4c 89 ef             	mov    %r13,%rdi
  4024dc:	e8 2a fb ff ff       	call   40200b <urlencode>
  4024e1:	85 c0                	test   %eax,%eax
  4024e3:	0f 89 8a 00 00 00    	jns    402573 <submitr+0x32c>
  4024e9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4024f0:	3a 20 52 
  4024f3:	48 89 03             	mov    %rax,(%rbx)
  4024f6:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4024fd:	20 73 74 
  402500:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402504:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40250b:	63 6f 6e 
  40250e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402512:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402519:	20 61 6e 
  40251c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402520:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402527:	67 61 6c 
  40252a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40252e:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402535:	6e 70 72 
  402538:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40253c:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402543:	6c 65 20 
  402546:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40254a:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402551:	63 74 65 
  402554:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402558:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  40255e:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402562:	89 ef                	mov    %ebp,%edi
  402564:	e8 47 e7 ff ff       	call   400cb0 <close@plt>
  402569:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40256e:	e9 f5 03 00 00       	jmp    402968 <submitr+0x721>
  402573:	bf 4f 34 40 00       	mov    $0x40344f,%edi
  402578:	e8 73 e6 ff ff       	call   400bf0 <getenv@plt>
  40257d:	48 ba 6e 6f 63 67 75 	movabs $0x7265737567636f6e,%rdx
  402584:	73 65 72 
  402587:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
  40258c:	66 c7 44 24 28 69 64 	movw   $0x6469,0x28(%rsp)
  402593:	c6 44 24 2a 00       	movb   $0x0,0x2a(%rsp)
  402598:	48 85 c0             	test   %rax,%rax
  40259b:	75 05                	jne    4025a2 <submitr+0x35b>
  40259d:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4025a2:	4c 89 24 24          	mov    %r12,(%rsp)
  4025a6:	4c 8d 8c 24 40 40 00 	lea    0x4040(%rsp),%r9
  4025ad:	00 
  4025ae:	4d 89 f8             	mov    %r15,%r8
  4025b1:	48 89 c1             	mov    %rax,%rcx
  4025b4:	4c 89 f2             	mov    %r14,%rdx
  4025b7:	be c8 33 40 00       	mov    $0x4033c8,%esi
  4025bc:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
  4025c3:	00 
  4025c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4025c9:	e8 02 e8 ff ff       	call   400dd0 <sprintf@plt>
  4025ce:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
  4025d5:	00 
  4025d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025db:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4025e2:	f2 ae                	repnz scas %es:(%rdi),%al
  4025e4:	48 f7 d1             	not    %rcx
  4025e7:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4025eb:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  4025f2:	00 
  4025f3:	89 ef                	mov    %ebp,%edi
  4025f5:	e8 e7 fa ff ff       	call   4020e1 <rio_writen>
  4025fa:	48 85 c0             	test   %rax,%rax
  4025fd:	79 6e                	jns    40266d <submitr+0x426>
  4025ff:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402606:	3a 20 43 
  402609:	48 89 03             	mov    %rax,(%rbx)
  40260c:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402613:	20 75 6e 
  402616:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40261a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402621:	74 6f 20 
  402624:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402628:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40262f:	20 74 6f 
  402632:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402636:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40263d:	72 65 73 
  402640:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402644:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  40264b:	65 72 76 
  40264e:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402652:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402658:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  40265c:	89 ef                	mov    %ebp,%edi
  40265e:	e8 4d e6 ff ff       	call   400cb0 <close@plt>
  402663:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402668:	e9 fb 02 00 00       	jmp    402968 <submitr+0x721>
  40266d:	89 ee                	mov    %ebp,%esi
  40266f:	48 8d bc 24 40 a0 00 	lea    0xa040(%rsp),%rdi
  402676:	00 
  402677:	e8 54 f9 ff ff       	call   401fd0 <rio_readinitb>
  40267c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402681:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  402688:	00 
  402689:	48 8d bc 24 40 a0 00 	lea    0xa040(%rsp),%rdi
  402690:	00 
  402691:	e8 2e fb ff ff       	call   4021c4 <rio_readlineb>
  402696:	48 85 c0             	test   %rax,%rax
  402699:	7f 7d                	jg     402718 <submitr+0x4d1>
  40269b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026a2:	3a 20 43 
  4026a5:	48 89 03             	mov    %rax,(%rbx)
  4026a8:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026af:	20 75 6e 
  4026b2:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026b6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026bd:	74 6f 20 
  4026c0:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026c4:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4026cb:	66 69 72 
  4026ce:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026d2:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4026d9:	61 64 65 
  4026dc:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026e0:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  4026e7:	6d 20 72 
  4026ea:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026ee:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4026f5:	20 73 65 
  4026f8:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026fc:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  402703:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402707:	89 ef                	mov    %ebp,%edi
  402709:	e8 a2 e5 ff ff       	call   400cb0 <close@plt>
  40270e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402713:	e9 50 02 00 00       	jmp    402968 <submitr+0x721>
  402718:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
  40271d:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
  402724:	00 
  402725:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
  40272c:	00 
  40272d:	be 58 34 40 00       	mov    $0x403458,%esi
  402732:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
  402739:	00 
  40273a:	b8 00 00 00 00       	mov    $0x0,%eax
  40273f:	e8 2c e6 ff ff       	call   400d70 <__isoc99_sscanf@plt>
  402744:	e9 98 00 00 00       	jmp    4027e1 <submitr+0x59a>
  402749:	ba 00 20 00 00       	mov    $0x2000,%edx
  40274e:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  402755:	00 
  402756:	48 8d bc 24 40 a0 00 	lea    0xa040(%rsp),%rdi
  40275d:	00 
  40275e:	e8 61 fa ff ff       	call   4021c4 <rio_readlineb>
  402763:	48 85 c0             	test   %rax,%rax
  402766:	7f 79                	jg     4027e1 <submitr+0x59a>
  402768:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40276f:	3a 20 43 
  402772:	48 89 03             	mov    %rax,(%rbx)
  402775:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40277c:	20 75 6e 
  40277f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402783:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40278a:	74 6f 20 
  40278d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402791:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402798:	68 65 61 
  40279b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40279f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4027a6:	66 72 6f 
  4027a9:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027ad:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4027b4:	20 72 65 
  4027b7:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027bb:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4027c2:	73 65 72 
  4027c5:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027c9:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  4027d0:	89 ef                	mov    %ebp,%edi
  4027d2:	e8 d9 e4 ff ff       	call   400cb0 <close@plt>
  4027d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027dc:	e9 87 01 00 00       	jmp    402968 <submitr+0x721>
  4027e1:	0f b6 84 24 40 60 00 	movzbl 0x6040(%rsp),%eax
  4027e8:	00 
  4027e9:	83 e8 0d             	sub    $0xd,%eax
  4027ec:	75 15                	jne    402803 <submitr+0x5bc>
  4027ee:	0f b6 84 24 41 60 00 	movzbl 0x6041(%rsp),%eax
  4027f5:	00 
  4027f6:	83 e8 0a             	sub    $0xa,%eax
  4027f9:	75 08                	jne    402803 <submitr+0x5bc>
  4027fb:	0f b6 84 24 42 60 00 	movzbl 0x6042(%rsp),%eax
  402802:	00 
  402803:	85 c0                	test   %eax,%eax
  402805:	0f 85 3e ff ff ff    	jne    402749 <submitr+0x502>
  40280b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402810:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  402817:	00 
  402818:	48 8d bc 24 40 a0 00 	lea    0xa040(%rsp),%rdi
  40281f:	00 
  402820:	e8 9f f9 ff ff       	call   4021c4 <rio_readlineb>
  402825:	48 85 c0             	test   %rax,%rax
  402828:	0f 8f 83 00 00 00    	jg     4028b1 <submitr+0x66a>
  40282e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402835:	3a 20 43 
  402838:	48 89 03             	mov    %rax,(%rbx)
  40283b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402842:	20 75 6e 
  402845:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402849:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402850:	74 6f 20 
  402853:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402857:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  40285e:	73 74 61 
  402861:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402865:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40286c:	65 73 73 
  40286f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402873:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40287a:	72 6f 6d 
  40287d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402881:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402888:	6c 74 20 
  40288b:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40288f:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402896:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  40289c:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4028a0:	89 ef                	mov    %ebp,%edi
  4028a2:	e8 09 e4 ff ff       	call   400cb0 <close@plt>
  4028a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028ac:	e9 b7 00 00 00       	jmp    402968 <submitr+0x721>
  4028b1:	8b 94 24 3c 20 00 00 	mov    0x203c(%rsp),%edx
  4028b8:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4028be:	74 28                	je     4028e8 <submitr+0x6a1>
  4028c0:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
  4028c5:	be 18 34 40 00       	mov    $0x403418,%esi
  4028ca:	48 89 df             	mov    %rbx,%rdi
  4028cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4028d2:	e8 f9 e4 ff ff       	call   400dd0 <sprintf@plt>
  4028d7:	89 ef                	mov    %ebp,%edi
  4028d9:	e8 d2 e3 ff ff       	call   400cb0 <close@plt>
  4028de:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028e3:	e9 80 00 00 00       	jmp    402968 <submitr+0x721>
  4028e8:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
  4028ef:	00 
  4028f0:	48 89 df             	mov    %rbx,%rdi
  4028f3:	e8 48 e3 ff ff       	call   400c40 <strcpy@plt>
  4028f8:	89 ef                	mov    %ebp,%edi
  4028fa:	e8 b1 e3 ff ff       	call   400cb0 <close@plt>
  4028ff:	0f b6 03             	movzbl (%rbx),%eax
  402902:	83 e8 4f             	sub    $0x4f,%eax
  402905:	75 18                	jne    40291f <submitr+0x6d8>
  402907:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  40290b:	83 ea 4b             	sub    $0x4b,%edx
  40290e:	75 11                	jne    402921 <submitr+0x6da>
  402910:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402914:	83 ea 0a             	sub    $0xa,%edx
  402917:	75 08                	jne    402921 <submitr+0x6da>
  402919:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  40291d:	eb 02                	jmp    402921 <submitr+0x6da>
  40291f:	89 c2                	mov    %eax,%edx
  402921:	85 d2                	test   %edx,%edx
  402923:	74 30                	je     402955 <submitr+0x70e>
  402925:	bf 69 34 40 00       	mov    $0x403469,%edi
  40292a:	b9 05 00 00 00       	mov    $0x5,%ecx
  40292f:	48 89 de             	mov    %rbx,%rsi
  402932:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402934:	0f 97 c1             	seta   %cl
  402937:	0f 92 c2             	setb   %dl
  40293a:	38 d1                	cmp    %dl,%cl
  40293c:	74 1e                	je     40295c <submitr+0x715>
  40293e:	85 c0                	test   %eax,%eax
  402940:	75 0d                	jne    40294f <submitr+0x708>
  402942:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402946:	83 e8 4b             	sub    $0x4b,%eax
  402949:	75 04                	jne    40294f <submitr+0x708>
  40294b:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  40294f:	85 c0                	test   %eax,%eax
  402951:	75 10                	jne    402963 <submitr+0x71c>
  402953:	eb 13                	jmp    402968 <submitr+0x721>
  402955:	b8 00 00 00 00       	mov    $0x0,%eax
  40295a:	eb 0c                	jmp    402968 <submitr+0x721>
  40295c:	b8 00 00 00 00       	mov    $0x0,%eax
  402961:	eb 05                	jmp    402968 <submitr+0x721>
  402963:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402968:	48 81 c4 68 c0 00 00 	add    $0xc068,%rsp
  40296f:	5b                   	pop    %rbx
  402970:	5d                   	pop    %rbp
  402971:	41 5c                	pop    %r12
  402973:	41 5d                	pop    %r13
  402975:	41 5e                	pop    %r14
  402977:	41 5f                	pop    %r15
  402979:	c3                   	ret    

000000000040297a <init_timeout>:
  40297a:	53                   	push   %rbx
  40297b:	89 fb                	mov    %edi,%ebx
  40297d:	85 ff                	test   %edi,%edi
  40297f:	74 1f                	je     4029a0 <init_timeout+0x26>
  402981:	85 ff                	test   %edi,%edi
  402983:	79 05                	jns    40298a <init_timeout+0x10>
  402985:	bb 00 00 00 00       	mov    $0x0,%ebx
  40298a:	be e2 1f 40 00       	mov    $0x401fe2,%esi
  40298f:	bf 0e 00 00 00       	mov    $0xe,%edi
  402994:	e8 47 e3 ff ff       	call   400ce0 <signal@plt>
  402999:	89 df                	mov    %ebx,%edi
  40299b:	e8 00 e3 ff ff       	call   400ca0 <alarm@plt>
  4029a0:	5b                   	pop    %rbx
  4029a1:	c3                   	ret    

00000000004029a2 <init_driver>:
  4029a2:	55                   	push   %rbp
  4029a3:	53                   	push   %rbx
  4029a4:	48 83 ec 18          	sub    $0x18,%rsp
  4029a8:	48 89 fd             	mov    %rdi,%rbp
  4029ab:	be 01 00 00 00       	mov    $0x1,%esi
  4029b0:	bf 0d 00 00 00       	mov    $0xd,%edi
  4029b5:	e8 26 e3 ff ff       	call   400ce0 <signal@plt>
  4029ba:	be 01 00 00 00       	mov    $0x1,%esi
  4029bf:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4029c4:	e8 17 e3 ff ff       	call   400ce0 <signal@plt>
  4029c9:	be 01 00 00 00       	mov    $0x1,%esi
  4029ce:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4029d3:	e8 08 e3 ff ff       	call   400ce0 <signal@plt>
  4029d8:	ba 00 00 00 00       	mov    $0x0,%edx
  4029dd:	be 01 00 00 00       	mov    $0x1,%esi
  4029e2:	bf 02 00 00 00       	mov    $0x2,%edi
  4029e7:	e8 14 e4 ff ff       	call   400e00 <socket@plt>
  4029ec:	89 c3                	mov    %eax,%ebx
  4029ee:	85 c0                	test   %eax,%eax
  4029f0:	79 4f                	jns    402a41 <init_driver+0x9f>
  4029f2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029f9:	3a 20 43 
  4029fc:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a00:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a07:	20 75 6e 
  402a0a:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a0e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a15:	74 6f 20 
  402a18:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a1c:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402a23:	65 20 73 
  402a26:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a2a:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a31:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a3c:	e9 fa 00 00 00       	jmp    402b3b <init_driver+0x199>
  402a41:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402a48:	00 
  402a49:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402a50:	00 00 
  402a52:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402a58:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402a5f:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  402a64:	be 6e 34 40 00       	mov    $0x40346e,%esi
  402a69:	bf 02 00 00 00       	mov    $0x2,%edi
  402a6e:	e8 bd e2 ff ff       	call   400d30 <inet_pton@plt>
  402a73:	83 f8 01             	cmp    $0x1,%eax
  402a76:	74 4a                	je     402ac2 <init_driver+0x120>
  402a78:	48 b8 45 72 72 6f 72 	movabs $0x49203a726f727245,%rax
  402a7f:	3a 20 49 
  402a82:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a86:	48 b8 6e 76 61 6c 69 	movabs $0x732064696c61766e,%rax
  402a8d:	64 20 73 
  402a90:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a94:	48 b8 65 72 76 65 72 	movabs $0x7069207265767265,%rax
  402a9b:	20 69 70 
  402a9e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aa2:	48 b8 20 61 64 64 72 	movabs $0x7373657264646120,%rax
  402aa9:	65 73 73 
  402aac:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ab0:	c6 45 20 00          	movb   $0x0,0x20(%rbp)
  402ab4:	89 df                	mov    %ebx,%edi
  402ab6:	e8 f5 e1 ff ff       	call   400cb0 <close@plt>
  402abb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ac0:	eb 79                	jmp    402b3b <init_driver+0x199>
  402ac2:	ba 10 00 00 00       	mov    $0x10,%edx
  402ac7:	48 89 e6             	mov    %rsp,%rsi
  402aca:	89 df                	mov    %ebx,%edi
  402acc:	e8 1f e3 ff ff       	call   400df0 <connect@plt>
  402ad1:	85 c0                	test   %eax,%eax
  402ad3:	79 50                	jns    402b25 <init_driver+0x183>
  402ad5:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402adc:	3a 20 55 
  402adf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ae3:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402aea:	20 74 6f 
  402aed:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402af1:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402af8:	65 63 74 
  402afb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aff:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402b06:	65 72 76 
  402b09:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b0d:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402b13:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402b17:	89 df                	mov    %ebx,%edi
  402b19:	e8 92 e1 ff ff       	call   400cb0 <close@plt>
  402b1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b23:	eb 16                	jmp    402b3b <init_driver+0x199>
  402b25:	89 df                	mov    %ebx,%edi
  402b27:	e8 84 e1 ff ff       	call   400cb0 <close@plt>
  402b2c:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402b32:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402b36:	b8 00 00 00 00       	mov    $0x0,%eax
  402b3b:	48 83 c4 18          	add    $0x18,%rsp
  402b3f:	5b                   	pop    %rbx
  402b40:	5d                   	pop    %rbp
  402b41:	c3                   	ret    

0000000000402b42 <driver_post>:
  402b42:	53                   	push   %rbx
  402b43:	48 83 ec 10          	sub    $0x10,%rsp
  402b47:	4c 89 cb             	mov    %r9,%rbx
  402b4a:	45 85 c0             	test   %r8d,%r8d
  402b4d:	74 22                	je     402b71 <driver_post+0x2f>
  402b4f:	48 89 ce             	mov    %rcx,%rsi
  402b52:	bf 7b 34 40 00       	mov    $0x40347b,%edi
  402b57:	b8 00 00 00 00       	mov    $0x0,%eax
  402b5c:	e8 1f e1 ff ff       	call   400c80 <printf@plt>
  402b61:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b66:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b6a:	b8 00 00 00 00       	mov    $0x0,%eax
  402b6f:	eb 39                	jmp    402baa <driver_post+0x68>
  402b71:	48 85 ff             	test   %rdi,%rdi
  402b74:	74 26                	je     402b9c <driver_post+0x5a>
  402b76:	80 3f 00             	cmpb   $0x0,(%rdi)
  402b79:	74 21                	je     402b9c <driver_post+0x5a>
  402b7b:	4c 89 0c 24          	mov    %r9,(%rsp)
  402b7f:	49 89 c9             	mov    %rcx,%r9
  402b82:	49 89 d0             	mov    %rdx,%r8
  402b85:	48 89 f9             	mov    %rdi,%rcx
  402b88:	48 89 f2             	mov    %rsi,%rdx
  402b8b:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402b90:	bf 6e 34 40 00       	mov    $0x40346e,%edi
  402b95:	e8 ad f6 ff ff       	call   402247 <submitr>
  402b9a:	eb 0e                	jmp    402baa <driver_post+0x68>
  402b9c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ba1:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ba5:	b8 00 00 00 00       	mov    $0x0,%eax
  402baa:	48 83 c4 10          	add    $0x10,%rsp
  402bae:	5b                   	pop    %rbx
  402baf:	c3                   	ret    

0000000000402bb0 <check>:
  402bb0:	89 f8                	mov    %edi,%eax
  402bb2:	c1 e8 1c             	shr    $0x1c,%eax
  402bb5:	85 c0                	test   %eax,%eax
  402bb7:	74 1d                	je     402bd6 <check+0x26>
  402bb9:	b9 00 00 00 00       	mov    $0x0,%ecx
  402bbe:	eb 0b                	jmp    402bcb <check+0x1b>
  402bc0:	89 f8                	mov    %edi,%eax
  402bc2:	d3 e8                	shr    %cl,%eax
  402bc4:	3c 0a                	cmp    $0xa,%al
  402bc6:	74 14                	je     402bdc <check+0x2c>
  402bc8:	83 c1 08             	add    $0x8,%ecx
  402bcb:	83 f9 1f             	cmp    $0x1f,%ecx
  402bce:	7e f0                	jle    402bc0 <check+0x10>
  402bd0:	b8 01 00 00 00       	mov    $0x1,%eax
  402bd5:	c3                   	ret    
  402bd6:	b8 00 00 00 00       	mov    $0x0,%eax
  402bdb:	c3                   	ret    
  402bdc:	b8 00 00 00 00       	mov    $0x0,%eax
  402be1:	c3                   	ret    

0000000000402be2 <gencookie>:
  402be2:	53                   	push   %rbx
  402be3:	83 c7 01             	add    $0x1,%edi
  402be6:	e8 35 e0 ff ff       	call   400c20 <srandom@plt>
  402beb:	e8 60 e1 ff ff       	call   400d50 <random@plt>
  402bf0:	89 c3                	mov    %eax,%ebx
  402bf2:	89 c7                	mov    %eax,%edi
  402bf4:	e8 b7 ff ff ff       	call   402bb0 <check>
  402bf9:	85 c0                	test   %eax,%eax
  402bfb:	74 ee                	je     402beb <gencookie+0x9>
  402bfd:	89 d8                	mov    %ebx,%eax
  402bff:	5b                   	pop    %rbx
  402c00:	c3                   	ret    
  402c01:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402c08:	00 00 00 
  402c0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402c10 <__libc_csu_init>:
  402c10:	41 57                	push   %r15
  402c12:	41 89 ff             	mov    %edi,%r15d
  402c15:	41 56                	push   %r14
  402c17:	49 89 f6             	mov    %rsi,%r14
  402c1a:	41 55                	push   %r13
  402c1c:	49 89 d5             	mov    %rdx,%r13
  402c1f:	41 54                	push   %r12
  402c21:	4c 8d 25 e8 21 20 00 	lea    0x2021e8(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402c28:	55                   	push   %rbp
  402c29:	48 8d 2d e8 21 20 00 	lea    0x2021e8(%rip),%rbp        # 604e18 <__do_global_dtors_aux_fini_array_entry>
  402c30:	53                   	push   %rbx
  402c31:	4c 29 e5             	sub    %r12,%rbp
  402c34:	31 db                	xor    %ebx,%ebx
  402c36:	48 c1 fd 03          	sar    $0x3,%rbp
  402c3a:	48 83 ec 08          	sub    $0x8,%rsp
  402c3e:	e8 7d df ff ff       	call   400bc0 <_init>
  402c43:	48 85 ed             	test   %rbp,%rbp
  402c46:	74 1e                	je     402c66 <__libc_csu_init+0x56>
  402c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c4f:	00 
  402c50:	4c 89 ea             	mov    %r13,%rdx
  402c53:	4c 89 f6             	mov    %r14,%rsi
  402c56:	44 89 ff             	mov    %r15d,%edi
  402c59:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  402c5d:	48 83 c3 01          	add    $0x1,%rbx
  402c61:	48 39 eb             	cmp    %rbp,%rbx
  402c64:	75 ea                	jne    402c50 <__libc_csu_init+0x40>
  402c66:	48 83 c4 08          	add    $0x8,%rsp
  402c6a:	5b                   	pop    %rbx
  402c6b:	5d                   	pop    %rbp
  402c6c:	41 5c                	pop    %r12
  402c6e:	41 5d                	pop    %r13
  402c70:	41 5e                	pop    %r14
  402c72:	41 5f                	pop    %r15
  402c74:	c3                   	ret    
  402c75:	90                   	nop
  402c76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  402c7d:	00 00 00 

0000000000402c80 <__libc_csu_fini>:
  402c80:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402c84 <_fini>:
  402c84:	48 83 ec 08          	sub    $0x8,%rsp
  402c88:	48 83 c4 08          	add    $0x8,%rsp
  402c8c:	c3                   	ret    
