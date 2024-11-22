
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 7a 2f 00 00    	push   0x2f7a(%rip)        # 3fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 7b 2f 00 00 	bnd jmp *0x2f7b(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 6d 2f 00 00 	bnd jmp *0x2f6d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001090 <puts@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 15 2f 00 00 	bnd jmp *0x2f15(%rip)        # 3fb0 <puts@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 0d 2f 00 00 	bnd jmp *0x2f0d(%rip)        # 3fb8 <__stack_chk_fail@GLIBC_2.4>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <printf@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 05 2f 00 00 	bnd jmp *0x2f05(%rip)        # 3fc0 <printf@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <strtoul@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fc8 <strtoul@GLIBC_2.2.5>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <__isoc99_scanf@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 3fd0 <__isoc99_scanf@GLIBC_2.7>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d bd 03 00 00 	lea    0x3bd(%rip),%rdi        # 14bc <main>
    10ff:	ff 15 d3 2e 00 00    	call   *0x2ed3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt    
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 4010 <__TMC_END__>
    1117:	48 8d 05 f2 2e 00 00 	lea    0x2ef2(%rip),%rax        # 4010 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 b6 2e 00 00 	mov    0x2eb6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d c9 2e 00 00 	lea    0x2ec9(%rip),%rdi        # 4010 <__TMC_END__>
    1147:	48 8d 35 c2 2e 00 00 	lea    0x2ec2(%rip),%rsi        # 4010 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    %rsi
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 2e 00 00 	mov    0x2e85(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	80 3d 85 2e 00 00 00 	cmpb   $0x0,0x2e85(%rip)        # 4010 <__TMC_END__>
    118b:	75 2b                	jne    11b8 <__do_global_dtors_aux+0x38>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 62 2e 00 00 	cmpq   $0x0,0x2e62(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0c                	je     11a7 <__do_global_dtors_aux+0x27>
    119b:	48 8b 3d 66 2e 00 00 	mov    0x2e66(%rip),%rdi        # 4008 <__dso_handle>
    11a2:	e8 d9 fe ff ff       	call   1080 <__cxa_finalize@plt>
    11a7:	e8 64 ff ff ff       	call   1110 <deregister_tm_clones>
    11ac:	c6 05 5d 2e 00 00 01 	movb   $0x1,0x2e5d(%rip)        # 4010 <__TMC_END__>
    11b3:	5d                   	pop    %rbp
    11b4:	c3                   	ret    
    11b5:	0f 1f 00             	nopl   (%rax)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <frame_dummy>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	e9 77 ff ff ff       	jmp    1140 <register_tm_clones>

00000000000011c9 <int_to_bin>:
    11c9:	f3 0f 1e fa          	endbr64 
    11cd:	55                   	push   %rbp
    11ce:	48 89 e5             	mov    %rsp,%rbp
    11d1:	89 7d ec             	mov    %edi,-0x14(%rbp)
    11d4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    11d8:	89 55 e8             	mov    %edx,-0x18(%rbp)
    11db:	8b 45 e8             	mov    -0x18(%rbp),%eax
    11de:	48 98                	cltq   
    11e0:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    11e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11e8:	48 01 d0             	add    %rdx,%rax
    11eb:	c6 00 00             	movb   $0x0,(%rax)
    11ee:	8b 45 e8             	mov    -0x18(%rbp),%eax
    11f1:	83 e8 02             	sub    $0x2,%eax
    11f4:	89 45 fc             	mov    %eax,-0x4(%rbp)
    11f7:	eb 2c                	jmp    1225 <int_to_bin+0x5c>
    11f9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    11fc:	83 e0 01             	and    $0x1,%eax
    11ff:	85 c0                	test   %eax,%eax
    1201:	74 07                	je     120a <int_to_bin+0x41>
    1203:	ba 31 00 00 00       	mov    $0x31,%edx
    1208:	eb 05                	jmp    120f <int_to_bin+0x46>
    120a:	ba 30 00 00 00       	mov    $0x30,%edx
    120f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1212:	48 63 c8             	movslq %eax,%rcx
    1215:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1219:	48 01 c8             	add    %rcx,%rax
    121c:	88 10                	mov    %dl,(%rax)
    121e:	d1 7d ec             	sarl   -0x14(%rbp)
    1221:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
    1225:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1229:	79 ce                	jns    11f9 <int_to_bin+0x30>
    122b:	90                   	nop
    122c:	90                   	nop
    122d:	5d                   	pop    %rbp
    122e:	c3                   	ret    

000000000000122f <print_representations>:
    122f:	f3 0f 1e fa          	endbr64 
    1233:	55                   	push   %rbp
    1234:	48 89 e5             	mov    %rsp,%rbp
    1237:	48 83 ec 50          	sub    $0x50,%rsp
    123b:	89 7d bc             	mov    %edi,-0x44(%rbp)
    123e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1245:	00 00 
    1247:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    124b:	31 c0                	xor    %eax,%eax
    124d:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
    1251:	79 11                	jns    1264 <print_representations+0x35>
    1253:	48 8d 05 ae 0d 00 00 	lea    0xdae(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    125a:	48 89 c7             	mov    %rax,%rdi
    125d:	e8 2e fe ff ff       	call   1090 <puts@plt>
    1262:	eb 69                	jmp    12cd <print_representations+0x9e>
    1264:	8b 45 bc             	mov    -0x44(%rbp),%eax
    1267:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    126a:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    126d:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    1271:	ba 21 00 00 00       	mov    $0x21,%edx
    1276:	48 89 ce             	mov    %rcx,%rsi
    1279:	89 c7                	mov    %eax,%edi
    127b:	e8 49 ff ff ff       	call   11c9 <int_to_bin>
    1280:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1284:	48 89 c6             	mov    %rax,%rsi
    1287:	48 8d 05 c0 0d 00 00 	lea    0xdc0(%rip),%rax        # 204e <_IO_stdin_used+0x4e>
    128e:	48 89 c7             	mov    %rax,%rdi
    1291:	b8 00 00 00 00       	mov    $0x0,%eax
    1296:	e8 15 fe ff ff       	call   10b0 <printf@plt>
    129b:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    129e:	89 c6                	mov    %eax,%esi
    12a0:	48 8d 05 be 0d 00 00 	lea    0xdbe(%rip),%rax        # 2065 <_IO_stdin_used+0x65>
    12a7:	48 89 c7             	mov    %rax,%rdi
    12aa:	b8 00 00 00 00       	mov    $0x0,%eax
    12af:	e8 fc fd ff ff       	call   10b0 <printf@plt>
    12b4:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    12b7:	89 c6                	mov    %eax,%esi
    12b9:	48 8d 05 be 0d 00 00 	lea    0xdbe(%rip),%rax        # 207e <_IO_stdin_used+0x7e>
    12c0:	48 89 c7             	mov    %rax,%rdi
    12c3:	b8 00 00 00 00       	mov    $0x0,%eax
    12c8:	e8 e3 fd ff ff       	call   10b0 <printf@plt>
    12cd:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    12d1:	8b 45 bc             	mov    -0x44(%rbp),%eax
    12d4:	ba 21 00 00 00       	mov    $0x21,%edx
    12d9:	48 89 ce             	mov    %rcx,%rsi
    12dc:	89 c7                	mov    %eax,%edi
    12de:	e8 e6 fe ff ff       	call   11c9 <int_to_bin>
    12e3:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    12e7:	48 89 c6             	mov    %rax,%rsi
    12ea:	48 8d 05 a7 0d 00 00 	lea    0xda7(%rip),%rax        # 2098 <_IO_stdin_used+0x98>
    12f1:	48 89 c7             	mov    %rax,%rdi
    12f4:	b8 00 00 00 00       	mov    $0x0,%eax
    12f9:	e8 b2 fd ff ff       	call   10b0 <printf@plt>
    12fe:	8b 45 bc             	mov    -0x44(%rbp),%eax
    1301:	89 c6                	mov    %eax,%esi
    1303:	48 8d 05 a5 0d 00 00 	lea    0xda5(%rip),%rax        # 20af <_IO_stdin_used+0xaf>
    130a:	48 89 c7             	mov    %rax,%rdi
    130d:	b8 00 00 00 00       	mov    $0x0,%eax
    1312:	e8 99 fd ff ff       	call   10b0 <printf@plt>
    1317:	8b 45 bc             	mov    -0x44(%rbp),%eax
    131a:	89 c6                	mov    %eax,%esi
    131c:	48 8d 05 a5 0d 00 00 	lea    0xda5(%rip),%rax        # 20c8 <_IO_stdin_used+0xc8>
    1323:	48 89 c7             	mov    %rax,%rdi
    1326:	b8 00 00 00 00       	mov    $0x0,%eax
    132b:	e8 80 fd ff ff       	call   10b0 <printf@plt>
    1330:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    1337:	eb 27                	jmp    1360 <print_representations+0x131>
    1339:	8b 45 c0             	mov    -0x40(%rbp),%eax
    133c:	48 98                	cltq   
    133e:	0f b6 44 05 d0       	movzbl -0x30(%rbp,%rax,1),%eax
    1343:	3c 30                	cmp    $0x30,%al
    1345:	75 07                	jne    134e <print_representations+0x11f>
    1347:	ba 31 00 00 00       	mov    $0x31,%edx
    134c:	eb 05                	jmp    1353 <print_representations+0x124>
    134e:	ba 30 00 00 00       	mov    $0x30,%edx
    1353:	8b 45 c0             	mov    -0x40(%rbp),%eax
    1356:	48 98                	cltq   
    1358:	88 54 05 d0          	mov    %dl,-0x30(%rbp,%rax,1)
    135c:	83 45 c0 01          	addl   $0x1,-0x40(%rbp)
    1360:	83 7d c0 1f          	cmpl   $0x1f,-0x40(%rbp)
    1364:	7e d3                	jle    1339 <print_representations+0x10a>
    1366:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    136a:	ba 02 00 00 00       	mov    $0x2,%edx
    136f:	be 00 00 00 00       	mov    $0x0,%esi
    1374:	48 89 c7             	mov    %rax,%rdi
    1377:	e8 44 fd ff ff       	call   10c0 <strtoul@plt>
    137c:	89 45 c8             	mov    %eax,-0x38(%rbp)
    137f:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    1383:	48 89 c6             	mov    %rax,%rsi
    1386:	48 8d 05 55 0d 00 00 	lea    0xd55(%rip),%rax        # 20e2 <_IO_stdin_used+0xe2>
    138d:	48 89 c7             	mov    %rax,%rdi
    1390:	b8 00 00 00 00       	mov    $0x0,%eax
    1395:	e8 16 fd ff ff       	call   10b0 <printf@plt>
    139a:	8b 45 c8             	mov    -0x38(%rbp),%eax
    139d:	89 c6                	mov    %eax,%esi
    139f:	48 8d 05 53 0d 00 00 	lea    0xd53(%rip),%rax        # 20f9 <_IO_stdin_used+0xf9>
    13a6:	48 89 c7             	mov    %rax,%rdi
    13a9:	b8 00 00 00 00       	mov    $0x0,%eax
    13ae:	e8 fd fc ff ff       	call   10b0 <printf@plt>
    13b3:	8b 45 c8             	mov    -0x38(%rbp),%eax
    13b6:	89 c6                	mov    %eax,%esi
    13b8:	48 8d 05 53 0d 00 00 	lea    0xd53(%rip),%rax        # 2112 <_IO_stdin_used+0x112>
    13bf:	48 89 c7             	mov    %rax,%rdi
    13c2:	b8 00 00 00 00       	mov    $0x0,%eax
    13c7:	e8 e4 fc ff ff       	call   10b0 <printf@plt>
    13cc:	83 7d bc 00          	cmpl   $0x0,-0x44(%rbp)
    13d0:	79 70                	jns    1442 <print_representations+0x213>
    13d2:	8b 45 bc             	mov    -0x44(%rbp),%eax
    13d5:	2d ff ff ff 7f       	sub    $0x7fffffff,%eax
    13da:	89 45 cc             	mov    %eax,-0x34(%rbp)
    13dd:	8b 45 cc             	mov    -0x34(%rbp),%eax
    13e0:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    13e4:	ba 21 00 00 00       	mov    $0x21,%edx
    13e9:	48 89 ce             	mov    %rcx,%rsi
    13ec:	89 c7                	mov    %eax,%edi
    13ee:	e8 d6 fd ff ff       	call   11c9 <int_to_bin>
    13f3:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    13f7:	48 89 c6             	mov    %rax,%rsi
    13fa:	48 8d 05 2b 0d 00 00 	lea    0xd2b(%rip),%rax        # 212c <_IO_stdin_used+0x12c>
    1401:	48 89 c7             	mov    %rax,%rdi
    1404:	b8 00 00 00 00       	mov    $0x0,%eax
    1409:	e8 a2 fc ff ff       	call   10b0 <printf@plt>
    140e:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1411:	89 c6                	mov    %eax,%esi
    1413:	48 8d 05 29 0d 00 00 	lea    0xd29(%rip),%rax        # 2143 <_IO_stdin_used+0x143>
    141a:	48 89 c7             	mov    %rax,%rdi
    141d:	b8 00 00 00 00       	mov    $0x0,%eax
    1422:	e8 89 fc ff ff       	call   10b0 <printf@plt>
    1427:	8b 45 cc             	mov    -0x34(%rbp),%eax
    142a:	89 c6                	mov    %eax,%esi
    142c:	48 8d 05 29 0d 00 00 	lea    0xd29(%rip),%rax        # 215c <_IO_stdin_used+0x15c>
    1433:	48 89 c7             	mov    %rax,%rdi
    1436:	b8 00 00 00 00       	mov    $0x0,%eax
    143b:	e8 70 fc ff ff       	call   10b0 <printf@plt>
    1440:	eb 63                	jmp    14a5 <print_representations+0x276>
    1442:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    1446:	8b 45 bc             	mov    -0x44(%rbp),%eax
    1449:	ba 21 00 00 00       	mov    $0x21,%edx
    144e:	48 89 ce             	mov    %rcx,%rsi
    1451:	89 c7                	mov    %eax,%edi
    1453:	e8 71 fd ff ff       	call   11c9 <int_to_bin>
    1458:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    145c:	48 89 c6             	mov    %rax,%rsi
    145f:	48 8d 05 c6 0c 00 00 	lea    0xcc6(%rip),%rax        # 212c <_IO_stdin_used+0x12c>
    1466:	48 89 c7             	mov    %rax,%rdi
    1469:	b8 00 00 00 00       	mov    $0x0,%eax
    146e:	e8 3d fc ff ff       	call   10b0 <printf@plt>
    1473:	8b 45 bc             	mov    -0x44(%rbp),%eax
    1476:	89 c6                	mov    %eax,%esi
    1478:	48 8d 05 c4 0c 00 00 	lea    0xcc4(%rip),%rax        # 2143 <_IO_stdin_used+0x143>
    147f:	48 89 c7             	mov    %rax,%rdi
    1482:	b8 00 00 00 00       	mov    $0x0,%eax
    1487:	e8 24 fc ff ff       	call   10b0 <printf@plt>
    148c:	8b 45 bc             	mov    -0x44(%rbp),%eax
    148f:	89 c6                	mov    %eax,%esi
    1491:	48 8d 05 c4 0c 00 00 	lea    0xcc4(%rip),%rax        # 215c <_IO_stdin_used+0x15c>
    1498:	48 89 c7             	mov    %rax,%rdi
    149b:	b8 00 00 00 00       	mov    $0x0,%eax
    14a0:	e8 0b fc ff ff       	call   10b0 <printf@plt>
    14a5:	90                   	nop
    14a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    14aa:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    14b1:	00 00 
    14b3:	74 05                	je     14ba <print_representations+0x28b>
    14b5:	e8 e6 fb ff ff       	call   10a0 <__stack_chk_fail@plt>
    14ba:	c9                   	leave  
    14bb:	c3                   	ret    

00000000000014bc <main>:
    14bc:	f3 0f 1e fa          	endbr64 
    14c0:	55                   	push   %rbp
    14c1:	48 89 e5             	mov    %rsp,%rbp
    14c4:	48 83 ec 10          	sub    $0x10,%rsp
    14c8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14cf:	00 00 
    14d1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14d5:	31 c0                	xor    %eax,%eax
    14d7:	48 8d 05 98 0c 00 00 	lea    0xc98(%rip),%rax        # 2176 <_IO_stdin_used+0x176>
    14de:	48 89 c7             	mov    %rax,%rdi
    14e1:	b8 00 00 00 00       	mov    $0x0,%eax
    14e6:	e8 c5 fb ff ff       	call   10b0 <printf@plt>
    14eb:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    14ef:	48 89 c6             	mov    %rax,%rsi
    14f2:	48 8d 05 8e 0c 00 00 	lea    0xc8e(%rip),%rax        # 2187 <_IO_stdin_used+0x187>
    14f9:	48 89 c7             	mov    %rax,%rdi
    14fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1501:	e8 ca fb ff ff       	call   10d0 <__isoc99_scanf@plt>
    1506:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1509:	89 c7                	mov    %eax,%edi
    150b:	e8 1f fd ff ff       	call   122f <print_representations>
    1510:	b8 00 00 00 00       	mov    $0x0,%eax
    1515:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1519:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1520:	00 00 
    1522:	74 05                	je     1529 <main+0x6d>
    1524:	e8 77 fb ff ff       	call   10a0 <__stack_chk_fail@plt>
    1529:	c9                   	leave  
    152a:	c3                   	ret    

Disassembly of section .fini:

000000000000152c <_fini>:
    152c:	f3 0f 1e fa          	endbr64 
    1530:	48 83 ec 08          	sub    $0x8,%rsp
    1534:	48 83 c4 08          	add    $0x8,%rsp
    1538:	c3                   	ret    
