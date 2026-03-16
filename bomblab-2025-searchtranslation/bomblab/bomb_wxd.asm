
./bomb_wxd:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 5fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 e2 4f 00 00    	pushq  0x4fe2(%rip)        # 6008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 4f 00 00    	jmpq   *0x4fe4(%rip)        # 6010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 e2 4f 00 00    	jmpq   *0x4fe2(%rip)        # 6018 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001040 <strcasecmp@plt>:
    1040:	ff 25 da 4f 00 00    	jmpq   *0x4fda(%rip)        # 6020 <strcasecmp@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001050 <__errno_location@plt>:
    1050:	ff 25 d2 4f 00 00    	jmpq   *0x4fd2(%rip)        # 6028 <__errno_location@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001060 <strcpy@plt>:
    1060:	ff 25 ca 4f 00 00    	jmpq   *0x4fca(%rip)        # 6030 <strcpy@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001070 <puts@plt>:
    1070:	ff 25 c2 4f 00 00    	jmpq   *0x4fc2(%rip)        # 6038 <puts@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001080 <write@plt>:
    1080:	ff 25 ba 4f 00 00    	jmpq   *0x4fba(%rip)        # 6040 <write@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001090 <strlen@plt>:
    1090:	ff 25 b2 4f 00 00    	jmpq   *0x4fb2(%rip)        # 6048 <strlen@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	ff 25 aa 4f 00 00    	jmpq   *0x4faa(%rip)        # 6050 <__stack_chk_fail@GLIBC_2.4>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010b0 <printf@plt>:
    10b0:	ff 25 a2 4f 00 00    	jmpq   *0x4fa2(%rip)        # 6058 <printf@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010c0 <alarm@plt>:
    10c0:	ff 25 9a 4f 00 00    	jmpq   *0x4f9a(%rip)        # 6060 <alarm@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010d0 <close@plt>:
    10d0:	ff 25 92 4f 00 00    	jmpq   *0x4f92(%rip)        # 6068 <close@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010e0 <read@plt>:
    10e0:	ff 25 8a 4f 00 00    	jmpq   *0x4f8a(%rip)        # 6070 <read@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010f0 <fgets@plt>:
    10f0:	ff 25 82 4f 00 00    	jmpq   *0x4f82(%rip)        # 6078 <fgets@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001100 <strcmp@plt>:
    1100:	ff 25 7a 4f 00 00    	jmpq   *0x4f7a(%rip)        # 6080 <strcmp@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001110 <signal@plt>:
    1110:	ff 25 72 4f 00 00    	jmpq   *0x4f72(%rip)        # 6088 <signal@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001120 <gethostbyname@plt>:
    1120:	ff 25 6a 4f 00 00    	jmpq   *0x4f6a(%rip)        # 6090 <gethostbyname@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001130 <fprintf@plt>:
    1130:	ff 25 62 4f 00 00    	jmpq   *0x4f62(%rip)        # 6098 <fprintf@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	pushq  $0x10
    113b:	e9 e0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001140 <fflush@plt>:
    1140:	ff 25 5a 4f 00 00    	jmpq   *0x4f5a(%rip)        # 60a0 <fflush@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	pushq  $0x11
    114b:	e9 d0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001150 <__isoc99_sscanf@plt>:
    1150:	ff 25 52 4f 00 00    	jmpq   *0x4f52(%rip)        # 60a8 <__isoc99_sscanf@GLIBC_2.7>
    1156:	68 12 00 00 00       	pushq  $0x12
    115b:	e9 c0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001160 <memmove@plt>:
    1160:	ff 25 4a 4f 00 00    	jmpq   *0x4f4a(%rip)        # 60b0 <memmove@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	pushq  $0x13
    116b:	e9 b0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001170 <fopen@plt>:
    1170:	ff 25 42 4f 00 00    	jmpq   *0x4f42(%rip)        # 60b8 <fopen@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	pushq  $0x14
    117b:	e9 a0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001180 <sprintf@plt>:
    1180:	ff 25 3a 4f 00 00    	jmpq   *0x4f3a(%rip)        # 60c0 <sprintf@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	pushq  $0x15
    118b:	e9 90 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001190 <exit@plt>:
    1190:	ff 25 32 4f 00 00    	jmpq   *0x4f32(%rip)        # 60c8 <exit@GLIBC_2.2.5>
    1196:	68 16 00 00 00       	pushq  $0x16
    119b:	e9 80 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011a0 <connect@plt>:
    11a0:	ff 25 2a 4f 00 00    	jmpq   *0x4f2a(%rip)        # 60d0 <connect@GLIBC_2.2.5>
    11a6:	68 17 00 00 00       	pushq  $0x17
    11ab:	e9 70 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011b0 <sleep@plt>:
    11b0:	ff 25 22 4f 00 00    	jmpq   *0x4f22(%rip)        # 60d8 <sleep@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	pushq  $0x18
    11bb:	e9 60 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011c0 <__ctype_b_loc@plt>:
    11c0:	ff 25 1a 4f 00 00    	jmpq   *0x4f1a(%rip)        # 60e0 <__ctype_b_loc@GLIBC_2.3>
    11c6:	68 19 00 00 00       	pushq  $0x19
    11cb:	e9 50 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011d0 <socket@plt>:
    11d0:	ff 25 12 4f 00 00    	jmpq   *0x4f12(%rip)        # 60e8 <socket@GLIBC_2.2.5>
    11d6:	68 1a 00 00 00       	pushq  $0x1a
    11db:	e9 40 fe ff ff       	jmpq   1020 <_init+0x20>

Disassembly of section .text:

00000000000011e0 <_start>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	31 ed                	xor    %ebp,%ebp
    11e6:	49 89 d1             	mov    %rdx,%r9
    11e9:	5e                   	pop    %rsi
    11ea:	48 89 e2             	mov    %rsp,%rdx
    11ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11f1:	50                   	push   %rax
    11f2:	54                   	push   %rsp
    11f3:	4c 8d 05 66 1c 00 00 	lea    0x1c66(%rip),%r8        # 2e60 <__libc_csu_fini>
    11fa:	48 8d 0d ef 1b 00 00 	lea    0x1bef(%rip),%rcx        # 2df0 <__libc_csu_init>
    1201:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 12d9 <main>
    1208:	ff 15 d2 4d 00 00    	callq  *0x4dd2(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.2.5>
    120e:	f4                   	hlt    
    120f:	90                   	nop

0000000000001210 <deregister_tm_clones>:
    1210:	48 8d 3d 69 54 00 00 	lea    0x5469(%rip),%rdi        # 6680 <stdout@@GLIBC_2.2.5>
    1217:	48 8d 05 62 54 00 00 	lea    0x5462(%rip),%rax        # 6680 <stdout@@GLIBC_2.2.5>
    121e:	48 39 f8             	cmp    %rdi,%rax
    1221:	74 15                	je     1238 <deregister_tm_clones+0x28>
    1223:	48 8b 05 ae 4d 00 00 	mov    0x4dae(%rip),%rax        # 5fd8 <_ITM_deregisterTMCloneTable>
    122a:	48 85 c0             	test   %rax,%rax
    122d:	74 09                	je     1238 <deregister_tm_clones+0x28>
    122f:	ff e0                	jmpq   *%rax
    1231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1238:	c3                   	retq   
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <register_tm_clones>:
    1240:	48 8d 3d 39 54 00 00 	lea    0x5439(%rip),%rdi        # 6680 <stdout@@GLIBC_2.2.5>
    1247:	48 8d 35 32 54 00 00 	lea    0x5432(%rip),%rsi        # 6680 <stdout@@GLIBC_2.2.5>
    124e:	48 29 fe             	sub    %rdi,%rsi
    1251:	48 89 f0             	mov    %rsi,%rax
    1254:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1258:	48 c1 f8 03          	sar    $0x3,%rax
    125c:	48 01 c6             	add    %rax,%rsi
    125f:	48 d1 fe             	sar    %rsi
    1262:	74 14                	je     1278 <register_tm_clones+0x38>
    1264:	48 8b 05 85 4d 00 00 	mov    0x4d85(%rip),%rax        # 5ff0 <_ITM_registerTMCloneTable>
    126b:	48 85 c0             	test   %rax,%rax
    126e:	74 08                	je     1278 <register_tm_clones+0x38>
    1270:	ff e0                	jmpq   *%rax
    1272:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1278:	c3                   	retq   
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <__do_global_dtors_aux>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	80 3d 1d 54 00 00 00 	cmpb   $0x0,0x541d(%rip)        # 66a8 <completed.0>
    128b:	75 33                	jne    12c0 <__do_global_dtors_aux+0x40>
    128d:	55                   	push   %rbp
    128e:	48 83 3d 62 4d 00 00 	cmpq   $0x0,0x4d62(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1295:	00 
    1296:	48 89 e5             	mov    %rsp,%rbp
    1299:	74 0d                	je     12a8 <__do_global_dtors_aux+0x28>
    129b:	48 8b 3d 66 4e 00 00 	mov    0x4e66(%rip),%rdi        # 6108 <__dso_handle>
    12a2:	ff 15 50 4d 00 00    	callq  *0x4d50(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    12a8:	e8 63 ff ff ff       	callq  1210 <deregister_tm_clones>
    12ad:	c6 05 f4 53 00 00 01 	movb   $0x1,0x53f4(%rip)        # 66a8 <completed.0>
    12b4:	5d                   	pop    %rbp
    12b5:	c3                   	retq   
    12b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12bd:	00 00 00 
    12c0:	c3                   	retq   
    12c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    12c8:	00 00 00 00 
    12cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012d0 <frame_dummy>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	e9 67 ff ff ff       	jmpq   1240 <register_tm_clones>

00000000000012d9 <main>:
    12d9:	53                   	push   %rbx
    12da:	83 ff 01             	cmp    $0x1,%edi
    12dd:	0f 84 04 01 00 00    	je     13e7 <main+0x10e>
    12e3:	48 89 f3             	mov    %rsi,%rbx
    12e6:	83 ff 02             	cmp    $0x2,%edi
    12e9:	0f 85 28 01 00 00    	jne    1417 <main+0x13e>
    12ef:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12f3:	48 8d 35 0a 1d 00 00 	lea    0x1d0a(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    12fa:	e8 71 fe ff ff       	callq  1170 <fopen@plt>
    12ff:	48 89 05 aa 53 00 00 	mov    %rax,0x53aa(%rip)        # 66b0 <infile>
    1306:	48 85 c0             	test   %rax,%rax
    1309:	0f 84 eb 00 00 00    	je     13fa <main+0x121>
    130f:	e8 ea 09 00 00       	callq  1cfe <initialize_bomb>
    1314:	48 8d 3d 65 1d 00 00 	lea    0x1d65(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    131b:	e8 50 fd ff ff       	callq  1070 <puts@plt>
    1320:	48 8d 3d 99 1d 00 00 	lea    0x1d99(%rip),%rdi        # 30c0 <_IO_stdin_used+0xc0>
    1327:	e8 44 fd ff ff       	callq  1070 <puts@plt>
    132c:	e8 d7 0c 00 00       	callq  2008 <read_line>
    1331:	48 89 c7             	mov    %rax,%rdi
    1334:	e8 fc 00 00 00       	callq  1435 <phase_1>
    1339:	e8 04 0e 00 00       	callq  2142 <phase_defused>
    133e:	48 8d 3d ab 1d 00 00 	lea    0x1dab(%rip),%rdi        # 30f0 <_IO_stdin_used+0xf0>
    1345:	e8 26 fd ff ff       	callq  1070 <puts@plt>
    134a:	e8 b9 0c 00 00       	callq  2008 <read_line>
    134f:	48 89 c7             	mov    %rax,%rdi
    1352:	e8 fe 00 00 00       	callq  1455 <phase_2>
    1357:	e8 e6 0d 00 00       	callq  2142 <phase_defused>
    135c:	48 8d 3d da 1c 00 00 	lea    0x1cda(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1363:	e8 08 fd ff ff       	callq  1070 <puts@plt>
    1368:	e8 9b 0c 00 00       	callq  2008 <read_line>
    136d:	48 89 c7             	mov    %rax,%rdi
    1370:	e8 cf 01 00 00       	callq  1544 <phase_3>
    1375:	e8 c8 0d 00 00       	callq  2142 <phase_defused>
    137a:	48 8d 3d cd 1c 00 00 	lea    0x1ccd(%rip),%rdi        # 304e <_IO_stdin_used+0x4e>
    1381:	e8 ea fc ff ff       	callq  1070 <puts@plt>
    1386:	48 8d 3d 93 1d 00 00 	lea    0x1d93(%rip),%rdi        # 3120 <_IO_stdin_used+0x120>
    138d:	e8 de fc ff ff       	callq  1070 <puts@plt>
    1392:	e8 71 0c 00 00       	callq  2008 <read_line>
    1397:	48 89 c7             	mov    %rax,%rdi
    139a:	e8 6f 03 00 00       	callq  170e <phase_4>
    139f:	e8 9e 0d 00 00       	callq  2142 <phase_defused>
    13a4:	48 8d 3d ad 1d 00 00 	lea    0x1dad(%rip),%rdi        # 3158 <_IO_stdin_used+0x158>
    13ab:	e8 c0 fc ff ff       	callq  1070 <puts@plt>
    13b0:	e8 53 0c 00 00       	callq  2008 <read_line>
    13b5:	48 89 c7             	mov    %rax,%rdi
    13b8:	e8 0f 04 00 00       	callq  17cc <phase_5>
    13bd:	e8 80 0d 00 00       	callq  2142 <phase_defused>
    13c2:	48 8d 3d 94 1c 00 00 	lea    0x1c94(%rip),%rdi        # 305d <_IO_stdin_used+0x5d>
    13c9:	e8 a2 fc ff ff       	callq  1070 <puts@plt>
    13ce:	e8 35 0c 00 00       	callq  2008 <read_line>
    13d3:	48 89 c7             	mov    %rax,%rdi
    13d6:	e8 88 04 00 00       	callq  1863 <phase_6>
    13db:	e8 62 0d 00 00       	callq  2142 <phase_defused>
    13e0:	b8 00 00 00 00       	mov    $0x0,%eax
    13e5:	5b                   	pop    %rbx
    13e6:	c3                   	retq   
    13e7:	48 8b 05 a2 52 00 00 	mov    0x52a2(%rip),%rax        # 6690 <stdin@@GLIBC_2.2.5>
    13ee:	48 89 05 bb 52 00 00 	mov    %rax,0x52bb(%rip)        # 66b0 <infile>
    13f5:	e9 15 ff ff ff       	jmpq   130f <main+0x36>
    13fa:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    13fe:	48 8b 33             	mov    (%rbx),%rsi
    1401:	48 8d 3d fe 1b 00 00 	lea    0x1bfe(%rip),%rdi        # 3006 <_IO_stdin_used+0x6>
    1408:	e8 a3 fc ff ff       	callq  10b0 <printf@plt>
    140d:	bf 08 00 00 00       	mov    $0x8,%edi
    1412:	e8 79 fd ff ff       	callq  1190 <exit@plt>
    1417:	48 8b 36             	mov    (%rsi),%rsi
    141a:	48 8d 3d 02 1c 00 00 	lea    0x1c02(%rip),%rdi        # 3023 <_IO_stdin_used+0x23>
    1421:	b8 00 00 00 00       	mov    $0x0,%eax
    1426:	e8 85 fc ff ff       	callq  10b0 <printf@plt>
    142b:	bf 08 00 00 00       	mov    $0x8,%edi
    1430:	e8 5b fd ff ff       	callq  1190 <exit@plt>

0000000000001435 <phase_1>:
    1435:	48 83 ec 08          	sub    $0x8,%rsp
    1439:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi        # 3180 <_IO_stdin_used+0x180>
    1440:	e8 5d 08 00 00       	callq  1ca2 <strings_not_equal>
    1445:	85 c0                	test   %eax,%eax
    1447:	75 05                	jne    144e <phase_1+0x19>
    1449:	48 83 c4 08          	add    $0x8,%rsp
    144d:	c3                   	retq   
    144e:	e8 b4 0a 00 00       	callq  1f07 <explode_bomb>
    1453:	eb f4                	jmp    1449 <phase_1+0x14>

0000000000001455 <phase_2>:
    1455:	55                   	push   %rbp
    1456:	53                   	push   %rbx
    1457:	48 83 ec 38          	sub    $0x38,%rsp
    145b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1462:	00 00 
    1464:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1469:	31 c0                	xor    %eax,%eax
    146b:	48 89 e2             	mov    %rsp,%rdx
    146e:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1473:	4c 8d 4c 24 0c       	lea    0xc(%rsp),%r9
    1478:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8
    147d:	48 8d 35 6d 21 00 00 	lea    0x216d(%rip),%rsi        # 35f1 <array.0+0x391>   
    1484:	e8 c7 fc ff ff       	callq  1150 <__isoc99_sscanf@plt>
    1489:	83 f8 04             	cmp    $0x4,%eax
    148c:	75 14                	jne    14a2 <phase_2+0x4d>
    148e:	48 8d 3d ab 4c 00 00 	lea    0x4cab(%rip),%rdi        # 6140 <matA.3>
    1495:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    149a:	41 bb 00 00 00 00    	mov    $0x0,%r11d
    14a0:	eb 19                	jmp    14bb <phase_2+0x66>
    14a2:	e8 60 0a 00 00       	callq  1f07 <explode_bomb>
    14a7:	eb e5                	jmp    148e <phase_2+0x39>
    14a9:	41 83 c3 01          	add    $0x1,%r11d
    14ad:	48 83 c7 0c          	add    $0xc,%rdi
    14b1:	48 83 c3 08          	add    $0x8,%rbx
    14b5:	41 83 fb 02          	cmp    $0x2,%r11d
    14b9:	74 47                	je     1502 <phase_2+0xad>
    14bb:	48 8d 35 5e 4c 00 00 	lea    0x4c5e(%rip),%rsi        # 6120 <matB.2>
    14c2:	49 89 d9             	mov    %rbx,%r9
    14c5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    14cb:	4d 89 ca             	mov    %r9,%r10
    14ce:	b8 00 00 00 00       	mov    $0x0,%eax
    14d3:	b9 00 00 00 00       	mov    $0x0,%ecx
    14d8:	8b 14 87             	mov    (%rdi,%rax,4),%edx
    14db:	0f af 14 c6          	imul   (%rsi,%rax,8),%edx
    14df:	01 d1                	add    %edx,%ecx
    14e1:	48 83 c0 01          	add    $0x1,%rax
    14e5:	48 83 f8 03          	cmp    $0x3,%rax
    14e9:	75 ed                	jne    14d8 <phase_2+0x83>
    14eb:	41 89 0a             	mov    %ecx,(%r10)
    14ee:	41 83 c0 01          	add    $0x1,%r8d
    14f2:	49 83 c1 04          	add    $0x4,%r9
    14f6:	48 83 c6 04          	add    $0x4,%rsi
    14fa:	41 83 f8 02          	cmp    $0x2,%r8d
    14fe:	75 cb                	jne    14cb <phase_2+0x76>
    1500:	eb a7                	jmp    14a9 <phase_2+0x54>
    1502:	bb 00 00 00 00       	mov    $0x0,%ebx
    1507:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    150c:	eb 0a                	jmp    1518 <phase_2+0xc3>
    150e:	48 83 c3 04          	add    $0x4,%rbx
    1512:	48 83 fb 10          	cmp    $0x10,%rbx
    1516:	74 10                	je     1528 <phase_2+0xd3>
    1518:	8b 44 1d 00          	mov    0x0(%rbp,%rbx,1),%eax
    151c:	39 04 1c             	cmp    %eax,(%rsp,%rbx,1)
    151f:	74 ed                	je     150e <phase_2+0xb9>
    1521:	e8 e1 09 00 00       	callq  1f07 <explode_bomb>
    1526:	eb e6                	jmp    150e <phase_2+0xb9>
    1528:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    152d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1534:	00 00 
    1536:	75 07                	jne    153f <phase_2+0xea>
    1538:	48 83 c4 38          	add    $0x38,%rsp
    153c:	5b                   	pop    %rbx
    153d:	5d                   	pop    %rbp
    153e:	c3                   	retq   
    153f:	e8 5c fb ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001544 <phase_3>:
    1544:	48 83 ec 18          	sub    $0x18,%rsp
    1548:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    154f:	00 00 
    1551:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1556:	31 c0                	xor    %eax,%eax
    1558:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    155d:	48 89 e2             	mov    %rsp,%rdx
    1560:	48 8d 35 90 20 00 00 	lea    0x2090(%rip),%rsi        # 35f7 <array.0+0x397> 查rsi看到底读了几个数
    1567:	e8 e4 fb ff ff       	callq  1150 <__isoc99_sscanf@plt>
    156c:	83 f8 01             	cmp    $0x1,%eax                 # 应该至少读了2个数
    156f:	7e 1d                	jle    158e <phase_3+0x4a>
    1571:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    1575:	0f 87 c0 00 00 00    	ja     163b <phase_3+0xf7>       # ja=jump if above
    157b:	8b 04 24             	mov    (%rsp),%eax
    157e:	48 8d 15 bb 1c 00 00 	lea    0x1cbb(%rip),%rdx        # 3240 <_IO_stdin_used+0x240>
    1585:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1589:	48 01 d0             	add    %rdx,%rax
    158c:	ff e0                	jmpq   *%rax
    158e:	e8 74 09 00 00       	callq  1f07 <explode_bomb>
    1593:	eb dc                	jmp    1571 <phase_3+0x2d>
    1595:	8b 15 75 4b 00 00    	mov    0x4b75(%rip),%edx        # 6110 <delta.1>
    159b:	b8 ba 03 00 00       	mov    $0x3ba,%eax
    15a0:	29 d0                	sub    %edx,%eax
    15a2:	8b 54 24 04          	mov    0x4(%rsp),%edx
    15a6:	85 d2                	test   %edx,%edx
    15a8:	78 04                	js     15ae <phase_3+0x6a>
    15aa:	39 c2                	cmp    %eax,%edx
    15ac:	74 05                	je     15b3 <phase_3+0x6f>
    15ae:	e8 54 09 00 00       	callq  1f07 <explode_bomb>
    15b3:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    15b8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    15bf:	00 00 
    15c1:	0f 85 83 00 00 00    	jne    164a <phase_3+0x106>
    15c7:	48 83 c4 18          	add    $0x18,%rsp
    15cb:	c3                   	retq   
    15cc:	8b 15 3e 4b 00 00    	mov    0x4b3e(%rip),%edx        # 6110 <delta.1>
    15d2:	b8 96 01 00 00       	mov    $0x196,%eax
    15d7:	29 d0                	sub    %edx,%eax
    15d9:	eb c7                	jmp    15a2 <phase_3+0x5e>
    15db:	8b 15 2f 4b 00 00    	mov    0x4b2f(%rip),%edx        # 6110 <delta.1>
    15e1:	b8 d9 03 00 00       	mov    $0x3d9,%eax
    15e6:	29 d0                	sub    %edx,%eax
    15e8:	eb b8                	jmp    15a2 <phase_3+0x5e>
    15ea:	8b 15 20 4b 00 00    	mov    0x4b20(%rip),%edx        # 6110 <delta.1>
    15f0:	b8 87 00 00 00       	mov    $0x87,%eax
    15f5:	29 d0                	sub    %edx,%eax
    15f7:	eb a9                	jmp    15a2 <phase_3+0x5e>
    15f9:	8b 15 11 4b 00 00    	mov    0x4b11(%rip),%edx        # 6110 <delta.1>
    15ff:	b8 0a 01 00 00       	mov    $0x10a,%eax
    1604:	29 d0                	sub    %edx,%eax
    1606:	eb 9a                	jmp    15a2 <phase_3+0x5e>
    1608:	8b 15 02 4b 00 00    	mov    0x4b02(%rip),%edx        # 6110 <delta.1>
    160e:	b8 89 00 00 00       	mov    $0x89,%eax
    1613:	29 d0                	sub    %edx,%eax
    1615:	eb 8b                	jmp    15a2 <phase_3+0x5e>
    1617:	8b 15 f3 4a 00 00    	mov    0x4af3(%rip),%edx        # 6110 <delta.1>
    161d:	b8 e9 01 00 00       	mov    $0x1e9,%eax
    1622:	29 d0                	sub    %edx,%eax
    1624:	e9 79 ff ff ff       	jmpq   15a2 <phase_3+0x5e>
    1629:	8b 15 e1 4a 00 00    	mov    0x4ae1(%rip),%edx        # 6110 <delta.1>
    162f:	b8 4c 03 00 00       	mov    $0x34c,%eax
    1634:	29 d0                	sub    %edx,%eax
    1636:	e9 67 ff ff ff       	jmpq   15a2 <phase_3+0x5e>
    163b:	e8 c7 08 00 00       	callq  1f07 <explode_bomb>
    1640:	b8 00 00 00 00       	mov    $0x0,%eax
    1645:	e9 58 ff ff ff       	jmpq   15a2 <phase_3+0x5e>
    164a:	e8 51 fa ff ff       	callq  10a0 <__stack_chk_fail@plt>

000000000000164f <func4_1>:
    164f:	b8 00 00 00 00       	mov    $0x0,%eax
    1654:	85 ff                	test   %edi,%edi
    1656:	7e 1c                	jle    1674 <func4_1+0x25>
    1658:	89 f8                	mov    %edi,%eax
    165a:	83 ff 01             	cmp    $0x1,%edi
    165d:	74 15                	je     1674 <func4_1+0x25>
    165f:	48 83 ec 08          	sub    $0x8,%rsp
    1663:	83 ef 01             	sub    $0x1,%edi
    1666:	e8 e4 ff ff ff       	callq  164f <func4_1>
    166b:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    166f:	48 83 c4 08          	add    $0x8,%rsp
    1673:	c3                   	retq   
    1674:	c3                   	retq   

0000000000001675 <func4_2>:     # 注意不同的寄存器保存的参数
    1675:	41 57                	push   %r15
    1677:	41 56                	push   %r14
    1679:	41 55                	push   %r13
    167b:	41 54                	push   %r12
    167d:	55                   	push   %rbp
    167e:	53                   	push   %rbx
    167f:	48 83 ec 08          	sub    $0x8,%rsp    # 以下开始
    1683:	41 89 d4             	mov    %edx,%r12d
    1686:	41 89 cd             	mov    %ecx,%r13d
    1689:	4c 89 cd             	mov    %r9,%rbp
    168c:	83 ff 01             	cmp    $0x1,%edi
    168f:	74 2a                	je     16bb <func4_2+0x46>
    1691:	89 f3                	mov    %esi,%ebx
    1693:	45 89 c6             	mov    %r8d,%r14d
    1696:	44 8d 7f ff          	lea    -0x1(%rdi),%r15d
    169a:	44 89 ff             	mov    %r15d,%edi
    169d:	e8 ad ff ff ff       	callq  164f <func4_1>
    16a2:	39 d8                	cmp    %ebx,%eax
    16a4:	7d 2f                	jge    16d5 <func4_2+0x60>
    16a6:	8d 50 01             	lea    0x1(%rax),%edx
    16a9:	39 da                	cmp    %ebx,%edx
    16ab:	75 43                	jne    16f0 <func4_2+0x7b>
    16ad:	44 88 65 00          	mov    %r12b,0x0(%rbp)
    16b1:	44 88 6d 01          	mov    %r13b,0x1(%rbp)
    16b5:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    16b9:	eb 0b                	jmp    16c6 <func4_2+0x51>
    16bb:	88 55 00             	mov    %dl,0x0(%rbp)
    16be:	88 4d 01             	mov    %cl,0x1(%rbp)
    16c1:	41 c6 41 02 00       	movb   $0x0,0x2(%r9)    # 以上结束
    16c6:	48 83 c4 08          	add    $0x8,%rsp
    16ca:	5b                   	pop    %rbx
    16cb:	5d                   	pop    %rbp
    16cc:	41 5c                	pop    %r12
    16ce:	41 5d                	pop    %r13
    16d0:	41 5e                	pop    %r14
    16d2:	41 5f                	pop    %r15
    16d4:	c3                   	retq   
    16d5:	41 0f be ce          	movsbl %r14b,%ecx
    16d9:	41 0f be d4          	movsbl %r12b,%edx
    16dd:	49 89 e9             	mov    %rbp,%r9
    16e0:	45 0f be c5          	movsbl %r13b,%r8d
    16e4:	89 de                	mov    %ebx,%esi
    16e6:	44 89 ff             	mov    %r15d,%edi
    16e9:	e8 87 ff ff ff       	callq  1675 <func4_2>
    16ee:	eb d6                	jmp    16c6 <func4_2+0x51>
    16f0:	41 0f be cd          	movsbl %r13b,%ecx
    16f4:	41 0f be d6          	movsbl %r14b,%edx
    16f8:	29 c3                	sub    %eax,%ebx
    16fa:	8d 73 ff             	lea    -0x1(%rbx),%esi
    16fd:	49 89 e9             	mov    %rbp,%r9
    1700:	45 0f be c4          	movsbl %r12b,%r8d
    1704:	44 89 ff             	mov    %r15d,%edi
    1707:	e8 69 ff ff ff       	callq  1675 <func4_2>
    170c:	eb b8                	jmp    16c6 <func4_2+0x51>

000000000000170e <phase_4>:
    170e:	53                   	push   %rbx
    170f:	48 83 ec 20          	sub    $0x20,%rsp
    1713:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    171a:	00 00 
    171c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1721:	31 c0                	xor    %eax,%eax              # 以下
    1723:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1728:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    172d:	48 8d 35 e1 1a 00 00 	lea    0x1ae1(%rip),%rsi        # 3215 <_IO_stdin_used+0x215>
    1734:	e8 17 fa ff ff       	callq  1150 <__isoc99_sscanf@plt>
    1739:	83 f8 02             	cmp    $0x2,%eax
    173c:	75 6d                	jne    17ab <phase_4+0x9d>     # 输入两个数，否则炸
    173e:	bf 05 00 00 00       	mov    $0x5,%edi
    1743:	e8 07 ff ff ff       	callq  164f <func4_1>
    1748:	39 44 24 0c          	cmp    %eax,0xc(%rsp)
    174c:	75 64                	jne    17b2 <phase_4+0xa4>    # 0xc(%rsp)中的值必须是func4_1(5)
    174e:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1753:	e8 2d 05 00 00       	callq  1c85 <string_length>
    1758:	83 f8 02             	cmp    $0x2,%eax
    175b:	75 5c                	jne    17b9 <phase_4+0xab>    # 0x10(%rsp) 长度为2
    175d:	48 8d 5c 24 14       	lea    0x14(%rsp),%rbx
    1762:	49 89 d9             	mov    %rbx,%r9
    1765:	41 b8 42 00 00 00    	mov    $0x42,%r8d
    176b:	b9 43 00 00 00       	mov    $0x43,%ecx
    1770:	ba 41 00 00 00       	mov    $0x41,%edx
    1775:	be 18 00 00 00       	mov    $0x18,%esi
    177a:	bf 05 00 00 00       	mov    $0x5,%edi
    177f:	e8 f1 fe ff ff       	callq  1675 <func4_2>
    1784:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1789:	48 89 de             	mov    %rbx,%rsi           #  0x10(%rsp)和%rbx比较
    178c:	e8 11 05 00 00       	callq  1ca2 <strings_not_equal>
    1791:	85 c0                	test   %eax,%eax
    1793:	75 2b                	jne    17c0 <phase_4+0xb2>
    1795:	48 8b 44 24 18       	mov    0x18(%rsp),%rax       # 以上
    179a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17a1:	00 00 
    17a3:	75 22                	jne    17c7 <phase_4+0xb9>
    17a5:	48 83 c4 20          	add    $0x20,%rsp
    17a9:	5b                   	pop    %rbx
    17aa:	c3                   	retq   
    17ab:	e8 57 07 00 00       	callq  1f07 <explode_bomb>
    17b0:	eb 8c                	jmp    173e <phase_4+0x30>
    17b2:	e8 50 07 00 00       	callq  1f07 <explode_bomb>
    17b7:	eb 95                	jmp    174e <phase_4+0x40>
    17b9:	e8 49 07 00 00       	callq  1f07 <explode_bomb>
    17be:	eb 9d                	jmp    175d <phase_4+0x4f>
    17c0:	e8 42 07 00 00       	callq  1f07 <explode_bomb>
    17c5:	eb ce                	jmp    1795 <phase_4+0x87>
    17c7:	e8 d4 f8 ff ff       	callq  10a0 <__stack_chk_fail@plt>

00000000000017cc <phase_5>:
    17cc:	48 83 ec 18          	sub    $0x18,%rsp
    17d0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17d7:	00 00 
    17d9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    17de:	31 c0                	xor    %eax,%eax                 # 以下
    17e0:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    17e5:	48 89 e2             	mov    %rsp,%rdx
    17e8:	48 8d 35 08 1e 00 00 	lea    0x1e08(%rip),%rsi        # 35f7 <array.0+0x397>
    17ef:	e8 5c f9 ff ff       	callq  1150 <__isoc99_sscanf@plt>
    17f4:	83 f8 01             	cmp    $0x1,%eax
    17f7:	7e 06                	jle    17ff <phase_5+0x33>         # 读入两个数
    17f9:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    17fd:	78 05                	js     1804 <phase_5+0x38>       # 第一个数为负数
    17ff:	e8 03 07 00 00       	callq  1f07 <explode_bomb>
    1804:	8b 04 24             	mov    (%rsp),%eax
    1807:	83 e0 0f             	and    $0xf,%eax                # 1111 & xxxxxxx   前面清0
    180a:	89 04 24             	mov    %eax,(%rsp)
    180d:	83 f8 0f             	cmp    $0xf,%eax
    1810:	74 32                	je     1844 <phase_5+0x78>      # 第一个数处理后与15比较   后四位不是1111
    1812:	b9 00 00 00 00       	mov    $0x0,%ecx
    1817:	ba 00 00 00 00       	mov    $0x0,%edx
    181c:	48 8d 35 3d 1a 00 00 	lea    0x1a3d(%rip),%rsi        # 3260 <array.0>
    1823:	83 c2 01             	add    $0x1,%edx    # 循环
    1826:	48 98                	cltq       # 将 eax（32 位）符号扩展为 rax（64 位，作为数组索引）
    1828:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    182b:	01 c1                	add    %eax,%ecx
    182d:	83 f8 0f             	cmp    $0xf,%eax
    1830:	75 f1                	jne    1823 <phase_5+0x57> # 循环结束
    1832:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)        
    1839:	83 fa 0c             	cmp    $0xc,%edx    # 循环12次
    183c:	75 06                	jne    1844 <phase_5+0x78>
    183e:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    1842:	74 05                	je     1849 <phase_5+0x7d>
    1844:	e8 be 06 00 00       	callq  1f07 <explode_bomb>
    1849:	48 8b 44 24 08       	mov    0x8(%rsp),%rax            # 以上
    184e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1855:	00 00 
    1857:	75 05                	jne    185e <phase_5+0x92>
    1859:	48 83 c4 18          	add    $0x18,%rsp
    185d:	c3                   	retq   
    185e:	e8 3d f8 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001863 <phase_6>:
    1863:	41 56                	push   %r14
    1865:	41 55                	push   %r13
    1867:	41 54                	push   %r12
    1869:	55                   	push   %rbp
    186a:	53                   	push   %rbx
    186b:	48 83 ec 60          	sub    $0x60,%rsp
    186f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1876:	00 00 
    1878:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    187d:	31 c0                	xor    %eax,%eax            # 以下
    187f:	49 89 e5             	mov    %rsp,%r13
    1882:	4c 89 ee             	mov    %r13,%rsi
    1885:	e8 3d 07 00 00       	callq  1fc7 <read_six_numbers>
    188a:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1890:	49 89 e4             	mov    %rsp,%r12
    1893:	eb 28                	jmp    18bd <phase_6+0x5a>
    1895:	e8 6d 06 00 00       	callq  1f07 <explode_bomb>
    189a:	eb 30                	jmp    18cc <phase_6+0x69>
    189c:	48 83 c3 01          	add    $0x1,%rbx
    18a0:	83 fb 05             	cmp    $0x5,%ebx
    18a3:	7f 10                	jg     18b5 <phase_6+0x52>
    18a5:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    18a9:	39 45 00             	cmp    %eax,0x0(%rbp)
    18ac:	75 ee                	jne    189c <phase_6+0x39>
    18ae:	e8 54 06 00 00       	callq  1f07 <explode_bomb>
    18b3:	eb e7                	jmp    189c <phase_6+0x39>
    18b5:	49 83 c6 01          	add    $0x1,%r14
    18b9:	49 83 c5 04          	add    $0x4,%r13
    18bd:	4c 89 ed             	mov    %r13,%rbp
    18c0:	41 8b 45 00          	mov    0x0(%r13),%eax
    18c4:	83 e8 01             	sub    $0x1,%eax
    18c7:	83 f8 05             	cmp    $0x5,%eax
    18ca:	77 c9                	ja     1895 <phase_6+0x32>
    18cc:	41 83 fe 05          	cmp    $0x5,%r14d
    18d0:	7f 05                	jg     18d7 <phase_6+0x74>
    18d2:	4c 89 f3             	mov    %r14,%rbx
    18d5:	eb ce                	jmp    18a5 <phase_6+0x42>
    18d7:	be 00 00 00 00       	mov    $0x0,%esi
    18dc:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    18df:	b8 01 00 00 00       	mov    $0x1,%eax
    18e4:	48 8d 15 35 49 00 00 	lea    0x4935(%rip),%rdx        # 6220 <node1>
    18eb:	83 f9 01             	cmp    $0x1,%ecx
    18ee:	7e 0b                	jle    18fb <phase_6+0x98>
    18f0:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    18f4:	83 c0 01             	add    $0x1,%eax
    18f7:	39 c8                	cmp    %ecx,%eax
    18f9:	75 f5                	jne    18f0 <phase_6+0x8d>
    18fb:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    1900:	48 83 c6 01          	add    $0x1,%rsi
    1904:	48 83 fe 06          	cmp    $0x6,%rsi
    1908:	75 d2                	jne    18dc <phase_6+0x79>
    190a:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    190f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1914:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1918:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    191d:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1921:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1926:	48 89 42 08          	mov    %rax,0x8(%rdx)
    192a:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    192f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1933:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1938:	48 89 42 08          	mov    %rax,0x8(%rdx)
    193c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1943:	00 
    1944:	bd 05 00 00 00       	mov    $0x5,%ebp
    1949:	eb 09                	jmp    1954 <phase_6+0xf1>
    194b:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    194f:	83 ed 01             	sub    $0x1,%ebp
    1952:	74 11                	je     1965 <phase_6+0x102>
    1954:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1958:	8b 00                	mov    (%rax),%eax
    195a:	39 03                	cmp    %eax,(%rbx)
    195c:	7e ed                	jle    194b <phase_6+0xe8>
    195e:	e8 a4 05 00 00       	callq  1f07 <explode_bomb>
    1963:	eb e6                	jmp    194b <phase_6+0xe8>
    1965:	48 8b 44 24 58       	mov    0x58(%rsp),%rax      # 以上
    196a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1971:	00 00 
    1973:	75 0d                	jne    1982 <phase_6+0x11f>
    1975:	48 83 c4 60          	add    $0x60,%rsp
    1979:	5b                   	pop    %rbx
    197a:	5d                   	pop    %rbp
    197b:	41 5c                	pop    %r12
    197d:	41 5d                	pop    %r13
    197f:	41 5e                	pop    %r14
    1981:	c3                   	retq   
    1982:	e8 19 f7 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001987 <func7>:
    1987:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    198e:	89 f0                	mov    %esi,%eax
    1990:	41 89 c9             	mov    %ecx,%r9d
    1993:	64 48 8b 0c 25 28 00 	mov    %fs:0x28,%rcx
    199a:	00 00 
    199c:	48 89 8c 24 88 00 00 	mov    %rcx,0x88(%rsp)
    19a3:	00 
    19a4:	31 c9                	xor    %ecx,%ecx
    19a6:	c7 04 24 fe ff ff ff 	movl   $0xfffffffe,(%rsp)
    19ad:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%rsp)
    19b4:	ff 
    19b5:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%rsp)
    19bc:	00 
    19bd:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%rsp)
    19c4:	00 
    19c5:	c7 44 24 10 02 00 00 	movl   $0x2,0x10(%rsp)
    19cc:	00 
    19cd:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%rsp)
    19d4:	00 
    19d5:	c7 44 24 18 ff ff ff 	movl   $0xffffffff,0x18(%rsp)
    19dc:	ff 
    19dd:	c7 44 24 1c fe ff ff 	movl   $0xfffffffe,0x1c(%rsp)
    19e4:	ff 
    19e5:	c7 44 24 20 01 00 00 	movl   $0x1,0x20(%rsp)
    19ec:	00 
    19ed:	c7 44 24 24 02 00 00 	movl   $0x2,0x24(%rsp)
    19f4:	00 
    19f5:	c7 44 24 28 02 00 00 	movl   $0x2,0x28(%rsp)
    19fc:	00 
    19fd:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%rsp)
    1a04:	00 
    1a05:	c7 44 24 30 ff ff ff 	movl   $0xffffffff,0x30(%rsp)
    1a0c:	ff 
    1a0d:	c7 44 24 34 fe ff ff 	movl   $0xfffffffe,0x34(%rsp)
    1a14:	ff 
    1a15:	c7 44 24 38 fe ff ff 	movl   $0xfffffffe,0x38(%rsp)
    1a1c:	ff 
    1a1d:	c7 44 24 3c ff ff ff 	movl   $0xffffffff,0x3c(%rsp)
    1a24:	ff 
    1a25:	c7 44 24 40 ff ff ff 	movl   $0xffffffff,0x40(%rsp)
    1a2c:	ff 
    1a2d:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    1a34:	00 
    1a35:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
    1a3c:	00 
    1a3d:	c7 44 24 4c 01 00 00 	movl   $0x1,0x4c(%rsp)
    1a44:	00 
    1a45:	c7 44 24 50 01 00 00 	movl   $0x1,0x50(%rsp)
    1a4c:	00 
    1a4d:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    1a54:	00 
    1a55:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
    1a5c:	00 
    1a5d:	c7 44 24 5c ff ff ff 	movl   $0xffffffff,0x5c(%rsp)
    1a64:	ff 
    1a65:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
    1a6c:	00 
    1a6d:	c7 44 24 64 01 00 00 	movl   $0x1,0x64(%rsp)
    1a74:	00 
    1a75:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%rsp)
    1a7c:	00 
    1a7d:	c7 44 24 6c 00 00 00 	movl   $0x0,0x6c(%rsp)
    1a84:	00 
    1a85:	c7 44 24 70 00 00 00 	movl   $0x0,0x70(%rsp)
    1a8c:	00 
    1a8d:	c7 44 24 74 ff ff ff 	movl   $0xffffffff,0x74(%rsp)
    1a94:	ff 
    1a95:	c7 44 24 78 ff ff ff 	movl   $0xffffffff,0x78(%rsp)
    1a9c:	ff 
    1a9d:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
    1aa4:	00 
    1aa5:	83 fe 04             	cmp    $0x4,%esi
    1aa8:	75 6b                	jne    1b15 <func7+0x18e>
    1aaa:	83 fa 07             	cmp    $0x7,%edx
    1aad:	75 66                	jne    1b15 <func7+0x18e>
    1aaf:	49 63 c9             	movslq %r9d,%rcx
    1ab2:	0f b6 34 0f          	movzbl (%rdi,%rcx,1),%esi
    1ab6:	b9 01 00 00 00       	mov    $0x1,%ecx
    1abb:	40 84 f6             	test   %sil,%sil
    1abe:	74 34                	je     1af4 <func7+0x16d>
    1ac0:	b9 00 00 00 00       	mov    $0x0,%ecx
    1ac5:	41 83 f9 13          	cmp    $0x13,%r9d
    1ac9:	7f 29                	jg     1af4 <func7+0x16d>
    1acb:	41 89 f2             	mov    %esi,%r10d
    1ace:	41 83 e2 07          	and    $0x7,%r10d
    1ad2:	83 e6 07             	and    $0x7,%esi
    1ad5:	41 89 c0             	mov    %eax,%r8d
    1ad8:	44 03 04 b4          	add    (%rsp,%rsi,4),%r8d
    1adc:	41 89 d3             	mov    %edx,%r11d
    1adf:	44 03 5c b4 20       	add    0x20(%rsp,%rsi,4),%r11d
    1ae4:	44 89 c6             	mov    %r8d,%esi
    1ae7:	44 09 de             	or     %r11d,%esi
    1aea:	b9 00 00 00 00       	mov    $0x0,%ecx
    1aef:	83 fe 07             	cmp    $0x7,%esi
    1af2:	76 3f                	jbe    1b33 <func7+0x1ac>
    1af4:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    1afb:	00 
    1afc:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1b03:	00 00 
    1b05:	0f 85 9e 00 00 00    	jne    1ba9 <func7+0x222>
    1b0b:	89 c8                	mov    %ecx,%eax
    1b0d:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1b14:	c3                   	retq   
    1b15:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b1a:	41 83 f9 13          	cmp    $0x13,%r9d
    1b1e:	7f d4                	jg     1af4 <func7+0x16d>
    1b20:	49 63 c9             	movslq %r9d,%rcx
    1b23:	0f b6 34 0f          	movzbl (%rdi,%rcx,1),%esi
    1b27:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b2c:	40 84 f6             	test   %sil,%sil
    1b2f:	74 c3                	je     1af4 <func7+0x16d>
    1b31:	eb 98                	jmp    1acb <func7+0x144>
    1b33:	4d 63 d2             	movslq %r10d,%r10
    1b36:	42 03 44 94 40       	add    0x40(%rsp,%r10,4),%eax
    1b3b:	42 03 54 94 60       	add    0x60(%rsp,%r10,4),%edx
    1b40:	48 8d 35 69 46 00 00 	lea    0x4669(%rip),%rsi        # 61b0 <row0>
    1b47:	85 c0                	test   %eax,%eax
    1b49:	7e 0b                	jle    1b56 <func7+0x1cf>
    1b4b:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    1b4f:	83 c1 01             	add    $0x1,%ecx
    1b52:	39 c8                	cmp    %ecx,%eax
    1b54:	75 f5                	jne    1b4b <func7+0x1c4>
    1b56:	48 63 d2             	movslq %edx,%rdx
    1b59:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b5e:	80 3c 16 01          	cmpb   $0x1,(%rsi,%rdx,1)
    1b62:	74 90                	je     1af4 <func7+0x16d>
    1b64:	48 8d 15 45 46 00 00 	lea    0x4645(%rip),%rdx        # 61b0 <row0>
    1b6b:	45 85 c0             	test   %r8d,%r8d
    1b6e:	7e 11                	jle    1b81 <func7+0x1fa>
    1b70:	b8 00 00 00 00       	mov    $0x0,%eax
    1b75:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1b79:	83 c0 01             	add    $0x1,%eax
    1b7c:	41 39 c0             	cmp    %eax,%r8d
    1b7f:	75 f4                	jne    1b75 <func7+0x1ee>
    1b81:	49 63 c3             	movslq %r11d,%rax
    1b84:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b89:	80 3c 02 01          	cmpb   $0x1,(%rdx,%rax,1)
    1b8d:	0f 84 61 ff ff ff    	je     1af4 <func7+0x16d>
    1b93:	41 8d 49 01          	lea    0x1(%r9),%ecx
    1b97:	44 89 da             	mov    %r11d,%edx
    1b9a:	44 89 c6             	mov    %r8d,%esi
    1b9d:	e8 e5 fd ff ff       	callq  1987 <func7>
    1ba2:	89 c1                	mov    %eax,%ecx
    1ba4:	e9 4b ff ff ff       	jmpq   1af4 <func7+0x16d>
    1ba9:	e8 f2 f4 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001bae <secret_phase>:
    1bae:	53                   	push   %rbx
    1baf:	48 8d 3d 66 16 00 00 	lea    0x1666(%rip),%rdi        # 321c <_IO_stdin_used+0x21c>
    1bb6:	e8 b5 f4 ff ff       	callq  1070 <puts@plt>
    1bbb:	e8 48 04 00 00       	callq  2008 <read_line>
    1bc0:	48 89 c3             	mov    %rax,%rbx
    1bc3:	48 89 c7             	mov    %rax,%rdi
    1bc6:	e8 ba 00 00 00       	callq  1c85 <string_length>
    1bcb:	83 f8 14             	cmp    $0x14,%eax
    1bce:	7f 2e                	jg     1bfe <secret_phase+0x50>
    1bd0:	b9 00 00 00 00       	mov    $0x0,%ecx
    1bd5:	ba 00 00 00 00       	mov    $0x0,%edx
    1bda:	be 00 00 00 00       	mov    $0x0,%esi
    1bdf:	48 89 df             	mov    %rbx,%rdi
    1be2:	e8 a0 fd ff ff       	callq  1987 <func7>
    1be7:	85 c0                	test   %eax,%eax
    1be9:	74 1a                	je     1c05 <secret_phase+0x57>
    1beb:	48 8d 3d ee 15 00 00 	lea    0x15ee(%rip),%rdi        # 31e0 <_IO_stdin_used+0x1e0>
    1bf2:	e8 79 f4 ff ff       	callq  1070 <puts@plt>
    1bf7:	e8 46 05 00 00       	callq  2142 <phase_defused>
    1bfc:	5b                   	pop    %rbx
    1bfd:	c3                   	retq   
    1bfe:	e8 04 03 00 00       	callq  1f07 <explode_bomb>
    1c03:	eb cb                	jmp    1bd0 <secret_phase+0x22>
    1c05:	e8 fd 02 00 00       	callq  1f07 <explode_bomb>
    1c0a:	eb df                	jmp    1beb <secret_phase+0x3d>

0000000000001c0c <sig_handler>:
    1c0c:	48 83 ec 08          	sub    $0x8,%rsp
    1c10:	48 8d 3d 89 16 00 00 	lea    0x1689(%rip),%rdi        # 32a0 <array.0+0x40>
    1c17:	e8 54 f4 ff ff       	callq  1070 <puts@plt>
    1c1c:	bf 03 00 00 00       	mov    $0x3,%edi
    1c21:	e8 8a f5 ff ff       	callq  11b0 <sleep@plt>
    1c26:	48 8d 3d ec 17 00 00 	lea    0x17ec(%rip),%rdi        # 3419 <array.0+0x1b9>
    1c2d:	b8 00 00 00 00       	mov    $0x0,%eax
    1c32:	e8 79 f4 ff ff       	callq  10b0 <printf@plt>
    1c37:	48 8b 3d 42 4a 00 00 	mov    0x4a42(%rip),%rdi        # 6680 <stdout@@GLIBC_2.2.5>
    1c3e:	e8 fd f4 ff ff       	callq  1140 <fflush@plt>
    1c43:	bf 01 00 00 00       	mov    $0x1,%edi
    1c48:	e8 63 f5 ff ff       	callq  11b0 <sleep@plt>
    1c4d:	48 8d 3d cd 17 00 00 	lea    0x17cd(%rip),%rdi        # 3421 <array.0+0x1c1>
    1c54:	e8 17 f4 ff ff       	callq  1070 <puts@plt>
    1c59:	bf 10 00 00 00       	mov    $0x10,%edi
    1c5e:	e8 2d f5 ff ff       	callq  1190 <exit@plt>

0000000000001c63 <invalid_phase>:
    1c63:	48 83 ec 08          	sub    $0x8,%rsp
    1c67:	48 89 fe             	mov    %rdi,%rsi
    1c6a:	48 8d 3d ba 17 00 00 	lea    0x17ba(%rip),%rdi        # 342b <array.0+0x1cb>
    1c71:	b8 00 00 00 00       	mov    $0x0,%eax
    1c76:	e8 35 f4 ff ff       	callq  10b0 <printf@plt>
    1c7b:	bf 08 00 00 00       	mov    $0x8,%edi
    1c80:	e8 0b f5 ff ff       	callq  1190 <exit@plt>

0000000000001c85 <string_length>:
    1c85:	80 3f 00             	cmpb   $0x0,(%rdi)
    1c88:	74 12                	je     1c9c <string_length+0x17>
    1c8a:	b8 00 00 00 00       	mov    $0x0,%eax
    1c8f:	48 83 c7 01          	add    $0x1,%rdi
    1c93:	83 c0 01             	add    $0x1,%eax
    1c96:	80 3f 00             	cmpb   $0x0,(%rdi)
    1c99:	75 f4                	jne    1c8f <string_length+0xa>
    1c9b:	c3                   	retq   
    1c9c:	b8 00 00 00 00       	mov    $0x0,%eax
    1ca1:	c3                   	retq   

0000000000001ca2 <strings_not_equal>:
    1ca2:	41 54                	push   %r12
    1ca4:	55                   	push   %rbp
    1ca5:	53                   	push   %rbx
    1ca6:	48 89 fb             	mov    %rdi,%rbx
    1ca9:	48 89 f5             	mov    %rsi,%rbp
    1cac:	e8 d4 ff ff ff       	callq  1c85 <string_length>
    1cb1:	41 89 c4             	mov    %eax,%r12d
    1cb4:	48 89 ef             	mov    %rbp,%rdi
    1cb7:	e8 c9 ff ff ff       	callq  1c85 <string_length>
    1cbc:	89 c2                	mov    %eax,%edx
    1cbe:	b8 01 00 00 00       	mov    $0x1,%eax
    1cc3:	41 39 d4             	cmp    %edx,%r12d
    1cc6:	75 31                	jne    1cf9 <strings_not_equal+0x57>
    1cc8:	0f b6 13             	movzbl (%rbx),%edx
    1ccb:	84 d2                	test   %dl,%dl
    1ccd:	74 1e                	je     1ced <strings_not_equal+0x4b>
    1ccf:	b8 00 00 00 00       	mov    $0x0,%eax
    1cd4:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1cd8:	75 1a                	jne    1cf4 <strings_not_equal+0x52>
    1cda:	48 83 c0 01          	add    $0x1,%rax
    1cde:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1ce2:	84 d2                	test   %dl,%dl
    1ce4:	75 ee                	jne    1cd4 <strings_not_equal+0x32>
    1ce6:	b8 00 00 00 00       	mov    $0x0,%eax
    1ceb:	eb 0c                	jmp    1cf9 <strings_not_equal+0x57>
    1ced:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf2:	eb 05                	jmp    1cf9 <strings_not_equal+0x57>
    1cf4:	b8 01 00 00 00       	mov    $0x1,%eax
    1cf9:	5b                   	pop    %rbx
    1cfa:	5d                   	pop    %rbp
    1cfb:	41 5c                	pop    %r12
    1cfd:	c3                   	retq   

0000000000001cfe <initialize_bomb>:
    1cfe:	55                   	push   %rbp
    1cff:	53                   	push   %rbx
    1d00:	48 83 ec 58          	sub    $0x58,%rsp
    1d04:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1d0b:	00 00 
    1d0d:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    1d12:	31 c0                	xor    %eax,%eax
    1d14:	48 8d 35 f1 fe ff ff 	lea    -0x10f(%rip),%rsi        # 1c0c <sig_handler>
    1d1b:	bf 02 00 00 00       	mov    $0x2,%edi
    1d20:	e8 eb f3 ff ff       	callq  1110 <signal@plt>
    1d25:	48 8b 3d 54 45 00 00 	mov    0x4554(%rip),%rdi        # 6280 <host_table>
    1d2c:	48 85 ff             	test   %rdi,%rdi
    1d2f:	74 23                	je     1d54 <initialize_bomb+0x56>
    1d31:	48 8d 1d 50 45 00 00 	lea    0x4550(%rip),%rbx        # 6288 <host_table+0x8>
    1d38:	48 89 e5             	mov    %rsp,%rbp
    1d3b:	48 89 ee             	mov    %rbp,%rsi
    1d3e:	e8 fd f2 ff ff       	callq  1040 <strcasecmp@plt>
    1d43:	85 c0                	test   %eax,%eax
    1d45:	74 0d                	je     1d54 <initialize_bomb+0x56>
    1d47:	48 83 c3 08          	add    $0x8,%rbx
    1d4b:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1d4f:	48 85 ff             	test   %rdi,%rdi
    1d52:	75 e7                	jne    1d3b <initialize_bomb+0x3d>
    1d54:	48 8d 3d e1 16 00 00 	lea    0x16e1(%rip),%rdi        # 343c <array.0+0x1dc>
    1d5b:	e8 10 f3 ff ff       	callq  1070 <puts@plt>
    1d60:	48 8d 3d e1 16 00 00 	lea    0x16e1(%rip),%rdi        # 3448 <array.0+0x1e8>
    1d67:	e8 04 f3 ff ff       	callq  1070 <puts@plt>
    1d6c:	48 8d 3d e1 16 00 00 	lea    0x16e1(%rip),%rdi        # 3454 <array.0+0x1f4>
    1d73:	e8 f8 f2 ff ff       	callq  1070 <puts@plt>
    1d78:	48 8d 3d e1 16 00 00 	lea    0x16e1(%rip),%rdi        # 3460 <array.0+0x200>
    1d7f:	e8 ec f2 ff ff       	callq  1070 <puts@plt>
    1d84:	48 8d 3d e1 16 00 00 	lea    0x16e1(%rip),%rdi        # 346c <array.0+0x20c>
    1d8b:	e8 e0 f2 ff ff       	callq  1070 <puts@plt>
    1d90:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1d95:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1d9c:	00 00 
    1d9e:	75 07                	jne    1da7 <initialize_bomb+0xa9>
    1da0:	48 83 c4 58          	add    $0x58,%rsp
    1da4:	5b                   	pop    %rbx
    1da5:	5d                   	pop    %rbp
    1da6:	c3                   	retq   
    1da7:	e8 f4 f2 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001dac <initialize_bomb_solve>:
    1dac:	c3                   	retq   

0000000000001dad <blank_line>:
    1dad:	55                   	push   %rbp
    1dae:	53                   	push   %rbx
    1daf:	48 83 ec 08          	sub    $0x8,%rsp
    1db3:	48 89 fd             	mov    %rdi,%rbp
    1db6:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1dba:	84 db                	test   %bl,%bl
    1dbc:	74 1e                	je     1ddc <blank_line+0x2f>
    1dbe:	e8 fd f3 ff ff       	callq  11c0 <__ctype_b_loc@plt>
    1dc3:	48 83 c5 01          	add    $0x1,%rbp
    1dc7:	48 0f be db          	movsbq %bl,%rbx
    1dcb:	48 8b 00             	mov    (%rax),%rax
    1dce:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1dd3:	75 e1                	jne    1db6 <blank_line+0x9>
    1dd5:	b8 00 00 00 00       	mov    $0x0,%eax
    1dda:	eb 05                	jmp    1de1 <blank_line+0x34>
    1ddc:	b8 01 00 00 00       	mov    $0x1,%eax
    1de1:	48 83 c4 08          	add    $0x8,%rsp
    1de5:	5b                   	pop    %rbx
    1de6:	5d                   	pop    %rbp
    1de7:	c3                   	retq   

0000000000001de8 <skip>:
    1de8:	55                   	push   %rbp
    1de9:	53                   	push   %rbx
    1dea:	48 83 ec 08          	sub    $0x8,%rsp
    1dee:	48 8d 2d 4b 49 00 00 	lea    0x494b(%rip),%rbp        # 6740 <input_strings>
    1df5:	48 63 15 3c 49 00 00 	movslq 0x493c(%rip),%rdx        # 6738 <num_input_strings>
    1dfc:	48 89 d0             	mov    %rdx,%rax
    1dff:	48 c1 e0 04          	shl    $0x4,%rax
    1e03:	48 29 d0             	sub    %rdx,%rax
    1e06:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1e0b:	48 8b 15 9e 48 00 00 	mov    0x489e(%rip),%rdx        # 66b0 <infile>
    1e12:	be 78 00 00 00       	mov    $0x78,%esi
    1e17:	e8 d4 f2 ff ff       	callq  10f0 <fgets@plt>
    1e1c:	48 89 c3             	mov    %rax,%rbx
    1e1f:	48 85 c0             	test   %rax,%rax
    1e22:	74 0c                	je     1e30 <skip+0x48>
    1e24:	48 89 c7             	mov    %rax,%rdi
    1e27:	e8 81 ff ff ff       	callq  1dad <blank_line>
    1e2c:	85 c0                	test   %eax,%eax
    1e2e:	75 c5                	jne    1df5 <skip+0xd>
    1e30:	48 89 d8             	mov    %rbx,%rax
    1e33:	48 83 c4 08          	add    $0x8,%rsp
    1e37:	5b                   	pop    %rbx
    1e38:	5d                   	pop    %rbp
    1e39:	c3                   	retq   

0000000000001e3a <send_msg>:
    1e3a:	53                   	push   %rbx
    1e3b:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1e42:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e49:	00 00 
    1e4b:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1e52:	00 
    1e53:	31 c0                	xor    %eax,%eax
    1e55:	44 8b 05 dc 48 00 00 	mov    0x48dc(%rip),%r8d        # 6738 <num_input_strings>
    1e5c:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    1e60:	48 98                	cltq   
    1e62:	48 89 c2             	mov    %rax,%rdx
    1e65:	48 c1 e2 04          	shl    $0x4,%rdx
    1e69:	48 29 c2             	sub    %rax,%rdx
    1e6c:	85 ff                	test   %edi,%edi
    1e6e:	48 8d 0d 03 16 00 00 	lea    0x1603(%rip),%rcx        # 3478 <array.0+0x218>
    1e75:	48 8d 05 04 16 00 00 	lea    0x1604(%rip),%rax        # 3480 <array.0+0x220>
    1e7c:	48 0f 44 c8          	cmove  %rax,%rcx
    1e80:	48 89 e3             	mov    %rsp,%rbx
    1e83:	48 8d 05 b6 48 00 00 	lea    0x48b6(%rip),%rax        # 6740 <input_strings>
    1e8a:	4c 8d 0c d0          	lea    (%rax,%rdx,8),%r9
    1e8e:	8b 15 10 43 00 00    	mov    0x4310(%rip),%edx        # 61a4 <bomb_id>
    1e94:	48 8d 35 ee 15 00 00 	lea    0x15ee(%rip),%rsi        # 3489 <array.0+0x229>
    1e9b:	48 89 df             	mov    %rbx,%rdi
    1e9e:	b8 00 00 00 00       	mov    $0x0,%eax
    1ea3:	e8 d8 f2 ff ff       	callq  1180 <sprintf@plt>
    1ea8:	4c 8d 84 24 00 20 00 	lea    0x2000(%rsp),%r8
    1eaf:	00 
    1eb0:	b9 00 00 00 00       	mov    $0x0,%ecx
    1eb5:	48 89 da             	mov    %rbx,%rdx
    1eb8:	48 8d 35 c1 42 00 00 	lea    0x42c1(%rip),%rsi        # 6180 <user_password>
    1ebf:	48 8d 3d d2 42 00 00 	lea    0x42d2(%rip),%rdi        # 6198 <userid>
    1ec6:	e8 ac 0e 00 00       	callq  2d77 <driver_post>
    1ecb:	85 c0                	test   %eax,%eax
    1ecd:	78 1c                	js     1eeb <send_msg+0xb1>
    1ecf:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1ed6:	00 
    1ed7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ede:	00 00 
    1ee0:	75 20                	jne    1f02 <send_msg+0xc8>
    1ee2:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1ee9:	5b                   	pop    %rbx
    1eea:	c3                   	retq   
    1eeb:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1ef2:	00 
    1ef3:	e8 78 f1 ff ff       	callq  1070 <puts@plt>
    1ef8:	bf 00 00 00 00       	mov    $0x0,%edi
    1efd:	e8 8e f2 ff ff       	callq  1190 <exit@plt>
    1f02:	e8 99 f1 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001f07 <explode_bomb>:
    1f07:	48 83 ec 08          	sub    $0x8,%rsp
    1f0b:	48 8d 3d c6 13 00 00 	lea    0x13c6(%rip),%rdi        # 32d8 <array.0+0x78>
    1f12:	e8 59 f1 ff ff       	callq  1070 <puts@plt>
    1f17:	48 8d 3d 77 15 00 00 	lea    0x1577(%rip),%rdi        # 3495 <array.0+0x235>
    1f1e:	e8 4d f1 ff ff       	callq  1070 <puts@plt>
    1f23:	48 8d 3d 88 15 00 00 	lea    0x1588(%rip),%rdi        # 34b2 <array.0+0x252>
    1f2a:	e8 41 f1 ff ff       	callq  1070 <puts@plt>
    1f2f:	48 8d 3d 99 15 00 00 	lea    0x1599(%rip),%rdi        # 34cf <array.0+0x26f>
    1f36:	e8 35 f1 ff ff       	callq  1070 <puts@plt>
    1f3b:	48 8d 3d aa 15 00 00 	lea    0x15aa(%rip),%rdi        # 34ec <array.0+0x28c>
    1f42:	e8 29 f1 ff ff       	callq  1070 <puts@plt>
    1f47:	48 8d 3d bb 15 00 00 	lea    0x15bb(%rip),%rdi        # 3509 <array.0+0x2a9>
    1f4e:	e8 1d f1 ff ff       	callq  1070 <puts@plt>
    1f53:	48 8d 3d cb 15 00 00 	lea    0x15cb(%rip),%rdi        # 3525 <array.0+0x2c5>
    1f5a:	e8 11 f1 ff ff       	callq  1070 <puts@plt>
    1f5f:	48 8d 3d dc 15 00 00 	lea    0x15dc(%rip),%rdi        # 3542 <array.0+0x2e2>
    1f66:	e8 05 f1 ff ff       	callq  1070 <puts@plt>
    1f6b:	48 8d 3d ed 15 00 00 	lea    0x15ed(%rip),%rdi        # 355f <array.0+0x2ff>
    1f72:	e8 f9 f0 ff ff       	callq  1070 <puts@plt>
    1f77:	48 8d 3d fe 15 00 00 	lea    0x15fe(%rip),%rdi        # 357c <array.0+0x31c>
    1f7e:	e8 ed f0 ff ff       	callq  1070 <puts@plt>
    1f83:	48 8d 3d 0f 16 00 00 	lea    0x160f(%rip),%rdi        # 3599 <array.0+0x339>
    1f8a:	e8 e1 f0 ff ff       	callq  1070 <puts@plt>
    1f8f:	48 8d 3d 20 16 00 00 	lea    0x1620(%rip),%rdi        # 35b6 <array.0+0x356>
    1f96:	e8 d5 f0 ff ff       	callq  1070 <puts@plt>
    1f9b:	48 8d 3d 31 16 00 00 	lea    0x1631(%rip),%rdi        # 35d3 <array.0+0x373>
    1fa2:	e8 c9 f0 ff ff       	callq  1070 <puts@plt>
    1fa7:	c3                   	retq   
    1fa8:	00 00                	add    %al,(%rax)
    1faa:	00 00                	add    %al,(%rax)
    1fac:	e8 89 fe ff ff       	callq  1e3a <send_msg>
    1fb1:	48 8d 3d 68 13 00 00 	lea    0x1368(%rip),%rdi        # 3320 <array.0+0xc0>
    1fb8:	e8 b3 f0 ff ff       	callq  1070 <puts@plt>
    1fbd:	bf 08 00 00 00       	mov    $0x8,%edi
    1fc2:	e8 c9 f1 ff ff       	callq  1190 <exit@plt>

0000000000001fc7 <read_six_numbers>:     # 输入6个数字
    1fc7:	48 83 ec 08          	sub    $0x8,%rsp
    1fcb:	48 89 f2             	mov    %rsi,%rdx
    1fce:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1fd2:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1fd6:	50                   	push   %rax
    1fd7:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1fdb:	50                   	push   %rax
    1fdc:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1fe0:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1fe4:	48 8d 35 00 16 00 00 	lea    0x1600(%rip),%rsi        # 35eb <array.0+0x38b>
    1feb:	b8 00 00 00 00       	mov    $0x0,%eax
    1ff0:	e8 5b f1 ff ff       	callq  1150 <__isoc99_sscanf@plt>
    1ff5:	48 83 c4 10          	add    $0x10,%rsp
    1ff9:	83 f8 05             	cmp    $0x5,%eax
    1ffc:	7e 05                	jle    2003 <read_six_numbers+0x3c>
    1ffe:	48 83 c4 08          	add    $0x8,%rsp
    2002:	c3                   	retq   
    2003:	e8 ff fe ff ff       	callq  1f07 <explode_bomb>

0000000000002008 <read_line>:
    2008:	55                   	push   %rbp
    2009:	53                   	push   %rbx
    200a:	48 83 ec 08          	sub    $0x8,%rsp
    200e:	b8 00 00 00 00       	mov    $0x0,%eax
    2013:	e8 d0 fd ff ff       	callq  1de8 <skip>
    2018:	48 85 c0             	test   %rax,%rax
    201b:	74 63                	je     2080 <read_line+0x78>
    201d:	8b 1d 15 47 00 00    	mov    0x4715(%rip),%ebx        # 6738 <num_input_strings>
    2023:	48 63 d3             	movslq %ebx,%rdx
    2026:	48 89 d0             	mov    %rdx,%rax
    2029:	48 c1 e0 04          	shl    $0x4,%rax
    202d:	48 29 d0             	sub    %rdx,%rax
    2030:	48 8d 15 09 47 00 00 	lea    0x4709(%rip),%rdx        # 6740 <input_strings>
    2037:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    203b:	48 89 ef             	mov    %rbp,%rdi
    203e:	e8 4d f0 ff ff       	callq  1090 <strlen@plt>
    2043:	83 f8 76             	cmp    $0x76,%eax
    2046:	0f 8f ac 00 00 00    	jg     20f8 <read_line+0xf0>
    204c:	83 e8 01             	sub    $0x1,%eax
    204f:	48 98                	cltq   
    2051:	48 63 cb             	movslq %ebx,%rcx
    2054:	48 89 ca             	mov    %rcx,%rdx
    2057:	48 c1 e2 04          	shl    $0x4,%rdx
    205b:	48 29 ca             	sub    %rcx,%rdx
    205e:	48 8d 0d db 46 00 00 	lea    0x46db(%rip),%rcx        # 6740 <input_strings>
    2065:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    2069:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    206d:	83 c3 01             	add    $0x1,%ebx
    2070:	89 1d c2 46 00 00    	mov    %ebx,0x46c2(%rip)        # 6738 <num_input_strings>
    2076:	48 89 e8             	mov    %rbp,%rax
    2079:	48 83 c4 08          	add    $0x8,%rsp
    207d:	5b                   	pop    %rbx
    207e:	5d                   	pop    %rbp
    207f:	c3                   	retq   
    2080:	48 8b 05 09 46 00 00 	mov    0x4609(%rip),%rax        # 6690 <stdin@@GLIBC_2.2.5>
    2087:	48 39 05 22 46 00 00 	cmp    %rax,0x4622(%rip)        # 66b0 <infile>
    208e:	74 1b                	je     20ab <read_line+0xa3>
    2090:	48 8d 3d 84 15 00 00 	lea    0x1584(%rip),%rdi        # 361b <array.0+0x3bb>
    2097:	e8 94 ef ff ff       	callq  1030 <getenv@plt>
    209c:	48 85 c0             	test   %rax,%rax
    209f:	74 20                	je     20c1 <read_line+0xb9>
    20a1:	bf 00 00 00 00       	mov    $0x0,%edi
    20a6:	e8 e5 f0 ff ff       	callq  1190 <exit@plt>
    20ab:	48 8d 3d 4b 15 00 00 	lea    0x154b(%rip),%rdi        # 35fd <array.0+0x39d>
    20b2:	e8 b9 ef ff ff       	callq  1070 <puts@plt>
    20b7:	bf 08 00 00 00       	mov    $0x8,%edi
    20bc:	e8 cf f0 ff ff       	callq  1190 <exit@plt>
    20c1:	48 8b 05 c8 45 00 00 	mov    0x45c8(%rip),%rax        # 6690 <stdin@@GLIBC_2.2.5>
    20c8:	48 89 05 e1 45 00 00 	mov    %rax,0x45e1(%rip)        # 66b0 <infile>
    20cf:	b8 00 00 00 00       	mov    $0x0,%eax
    20d4:	e8 0f fd ff ff       	callq  1de8 <skip>
    20d9:	48 85 c0             	test   %rax,%rax
    20dc:	0f 85 3b ff ff ff    	jne    201d <read_line+0x15>
    20e2:	48 8d 3d 14 15 00 00 	lea    0x1514(%rip),%rdi        # 35fd <array.0+0x39d>
    20e9:	e8 82 ef ff ff       	callq  1070 <puts@plt>
    20ee:	bf 00 00 00 00       	mov    $0x0,%edi
    20f3:	e8 98 f0 ff ff       	callq  1190 <exit@plt>
    20f8:	48 8d 3d 27 15 00 00 	lea    0x1527(%rip),%rdi        # 3626 <array.0+0x3c6>
    20ff:	e8 6c ef ff ff       	callq  1070 <puts@plt>
    2104:	8b 05 2e 46 00 00    	mov    0x462e(%rip),%eax        # 6738 <num_input_strings>
    210a:	8d 50 01             	lea    0x1(%rax),%edx
    210d:	89 15 25 46 00 00    	mov    %edx,0x4625(%rip)        # 6738 <num_input_strings>
    2113:	48 98                	cltq   
    2115:	48 6b c0 78          	imul   $0x78,%rax,%rax
    2119:	48 8d 15 20 46 00 00 	lea    0x4620(%rip),%rdx        # 6740 <input_strings>
    2120:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2127:	75 6e 63 
    212a:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2131:	2a 2a 00 
    2134:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2138:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    213d:	e8 c5 fd ff ff       	callq  1f07 <explode_bomb>

0000000000002142 <phase_defused>:
    2142:	48 83 ec 08          	sub    $0x8,%rsp
    2146:	bf 01 00 00 00       	mov    $0x1,%edi
    214b:	e8 ea fc ff ff       	callq  1e3a <send_msg>
    2150:	83 3d e1 45 00 00 06 	cmpl   $0x6,0x45e1(%rip)        # 6738 <num_input_strings>
    2157:	74 05                	je     215e <phase_defused+0x1c>
    2159:	48 83 c4 08          	add    $0x8,%rsp
    215d:	c3                   	retq   
    215e:	0f b6 0d 33 48 00 00 	movzbl 0x4833(%rip),%ecx        # 6998 <input_strings+0x258>
    2165:	84 c9                	test   %cl,%cl
    2167:	74 34                	je     219d <phase_defused+0x5b>
    2169:	b8 01 00 00 00       	mov    $0x1,%eax
    216e:	ba 00 00 00 00       	mov    $0x0,%edx
    2173:	48 8d 3d 1e 48 00 00 	lea    0x481e(%rip),%rdi        # 6998 <input_strings+0x258>
    217a:	80 f9 20             	cmp    $0x20,%cl
    217d:	0f 94 c1             	sete   %cl
    2180:	0f b6 c9             	movzbl %cl,%ecx
    2183:	01 ca                	add    %ecx,%edx
    2185:	89 c6                	mov    %eax,%esi
    2187:	0f b6 0c 07          	movzbl (%rdi,%rax,1),%ecx
    218b:	48 83 c0 01          	add    $0x1,%rax
    218f:	83 fa 05             	cmp    $0x5,%edx
    2192:	7f 04                	jg     2198 <phase_defused+0x56>
    2194:	84 c9                	test   %cl,%cl
    2196:	75 e2                	jne    217a <phase_defused+0x38>
    2198:	83 fa 06             	cmp    $0x6,%edx
    219b:	74 1a                	je     21b7 <phase_defused+0x75>
    219d:	48 8d 3d 04 12 00 00 	lea    0x1204(%rip),%rdi        # 33a8 <array.0+0x148>
    21a4:	e8 c7 ee ff ff       	callq  1070 <puts@plt>
    21a9:	48 8d 3d 28 12 00 00 	lea    0x1228(%rip),%rdi        # 33d8 <array.0+0x178>
    21b0:	e8 bb ee ff ff       	callq  1070 <puts@plt>
    21b5:	eb a2                	jmp    2159 <phase_defused+0x17>
    21b7:	48 63 f6             	movslq %esi,%rsi
    21ba:	48 8d 05 d7 47 00 00 	lea    0x47d7(%rip),%rax        # 6998 <input_strings+0x258>
    21c1:	48 8d 3c 06          	lea    (%rsi,%rax,1),%rdi
    21c5:	48 8d 35 75 14 00 00 	lea    0x1475(%rip),%rsi        # 3641 <array.0+0x3e1>
    21cc:	e8 d1 fa ff ff       	callq  1ca2 <strings_not_equal>
    21d1:	85 c0                	test   %eax,%eax
    21d3:	75 c8                	jne    219d <phase_defused+0x5b>
    21d5:	48 8d 3d 6c 11 00 00 	lea    0x116c(%rip),%rdi        # 3348 <array.0+0xe8>
    21dc:	e8 8f ee ff ff       	callq  1070 <puts@plt>
    21e1:	48 8d 3d 88 11 00 00 	lea    0x1188(%rip),%rdi        # 3370 <array.0+0x110>
    21e8:	e8 83 ee ff ff       	callq  1070 <puts@plt>
    21ed:	b8 00 00 00 00       	mov    $0x0,%eax
    21f2:	e8 b7 f9 ff ff       	callq  1bae <secret_phase>
    21f7:	eb a4                	jmp    219d <phase_defused+0x5b>

00000000000021f9 <sigalrm_handler>:
    21f9:	48 83 ec 08          	sub    $0x8,%rsp
    21fd:	ba 00 00 00 00       	mov    $0x0,%edx
    2202:	48 8d 35 4f 14 00 00 	lea    0x144f(%rip),%rsi        # 3658 <array.0+0x3f8>
    2209:	48 8b 3d 90 44 00 00 	mov    0x4490(%rip),%rdi        # 66a0 <stderr@@GLIBC_2.2.5>
    2210:	b8 00 00 00 00       	mov    $0x0,%eax
    2215:	e8 16 ef ff ff       	callq  1130 <fprintf@plt>
    221a:	bf 01 00 00 00       	mov    $0x1,%edi
    221f:	e8 6c ef ff ff       	callq  1190 <exit@plt>

0000000000002224 <rio_writen>:
    2224:	41 56                	push   %r14
    2226:	41 55                	push   %r13
    2228:	41 54                	push   %r12
    222a:	55                   	push   %rbp
    222b:	53                   	push   %rbx
    222c:	49 89 d5             	mov    %rdx,%r13
    222f:	48 85 d2             	test   %rdx,%rdx
    2232:	74 3b                	je     226f <rio_writen+0x4b>
    2234:	41 89 fc             	mov    %edi,%r12d
    2237:	48 89 f5             	mov    %rsi,%rbp
    223a:	48 89 d3             	mov    %rdx,%rbx
    223d:	41 be 00 00 00 00    	mov    $0x0,%r14d
    2243:	eb 08                	jmp    224d <rio_writen+0x29>
    2245:	48 01 c5             	add    %rax,%rbp
    2248:	48 29 c3             	sub    %rax,%rbx
    224b:	74 22                	je     226f <rio_writen+0x4b>
    224d:	48 89 da             	mov    %rbx,%rdx
    2250:	48 89 ee             	mov    %rbp,%rsi
    2253:	44 89 e7             	mov    %r12d,%edi
    2256:	e8 25 ee ff ff       	callq  1080 <write@plt>
    225b:	48 85 c0             	test   %rax,%rax
    225e:	7f e5                	jg     2245 <rio_writen+0x21>
    2260:	e8 eb ed ff ff       	callq  1050 <__errno_location@plt>
    2265:	83 38 04             	cmpl   $0x4,(%rax)
    2268:	75 11                	jne    227b <rio_writen+0x57>
    226a:	4c 89 f0             	mov    %r14,%rax
    226d:	eb d6                	jmp    2245 <rio_writen+0x21>
    226f:	4c 89 e8             	mov    %r13,%rax
    2272:	5b                   	pop    %rbx
    2273:	5d                   	pop    %rbp
    2274:	41 5c                	pop    %r12
    2276:	41 5d                	pop    %r13
    2278:	41 5e                	pop    %r14
    227a:	c3                   	retq   
    227b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2282:	eb ee                	jmp    2272 <rio_writen+0x4e>

0000000000002284 <rio_readlineb>:
    2284:	41 56                	push   %r14
    2286:	41 55                	push   %r13
    2288:	41 54                	push   %r12
    228a:	55                   	push   %rbp
    228b:	53                   	push   %rbx
    228c:	49 89 f4             	mov    %rsi,%r12
    228f:	48 83 fa 01          	cmp    $0x1,%rdx
    2293:	0f 86 92 00 00 00    	jbe    232b <rio_readlineb+0xa7>
    2299:	48 89 fb             	mov    %rdi,%rbx
    229c:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    22a1:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    22a7:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    22ab:	eb 56                	jmp    2303 <rio_readlineb+0x7f>
    22ad:	e8 9e ed ff ff       	callq  1050 <__errno_location@plt>
    22b2:	83 38 04             	cmpl   $0x4,(%rax)
    22b5:	75 55                	jne    230c <rio_readlineb+0x88>
    22b7:	ba 00 20 00 00       	mov    $0x2000,%edx
    22bc:	48 89 ee             	mov    %rbp,%rsi
    22bf:	8b 3b                	mov    (%rbx),%edi
    22c1:	e8 1a ee ff ff       	callq  10e0 <read@plt>
    22c6:	89 c2                	mov    %eax,%edx
    22c8:	89 43 04             	mov    %eax,0x4(%rbx)
    22cb:	85 c0                	test   %eax,%eax
    22cd:	78 de                	js     22ad <rio_readlineb+0x29>
    22cf:	85 c0                	test   %eax,%eax
    22d1:	74 42                	je     2315 <rio_readlineb+0x91>
    22d3:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    22d7:	48 8b 43 08          	mov    0x8(%rbx),%rax
    22db:	0f b6 08             	movzbl (%rax),%ecx
    22de:	48 83 c0 01          	add    $0x1,%rax
    22e2:	48 89 43 08          	mov    %rax,0x8(%rbx)
    22e6:	83 ea 01             	sub    $0x1,%edx
    22e9:	89 53 04             	mov    %edx,0x4(%rbx)
    22ec:	49 83 c4 01          	add    $0x1,%r12
    22f0:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    22f5:	80 f9 0a             	cmp    $0xa,%cl
    22f8:	74 3c                	je     2336 <rio_readlineb+0xb2>
    22fa:	41 83 c5 01          	add    $0x1,%r13d
    22fe:	4d 39 f4             	cmp    %r14,%r12
    2301:	74 30                	je     2333 <rio_readlineb+0xaf>
    2303:	8b 53 04             	mov    0x4(%rbx),%edx
    2306:	85 d2                	test   %edx,%edx
    2308:	7e ad                	jle    22b7 <rio_readlineb+0x33>
    230a:	eb cb                	jmp    22d7 <rio_readlineb+0x53>
    230c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2313:	eb 05                	jmp    231a <rio_readlineb+0x96>
    2315:	b8 00 00 00 00       	mov    $0x0,%eax
    231a:	85 c0                	test   %eax,%eax
    231c:	75 29                	jne    2347 <rio_readlineb+0xc3>
    231e:	b8 00 00 00 00       	mov    $0x0,%eax
    2323:	41 83 fd 01          	cmp    $0x1,%r13d
    2327:	75 0d                	jne    2336 <rio_readlineb+0xb2>
    2329:	eb 13                	jmp    233e <rio_readlineb+0xba>
    232b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2331:	eb 03                	jmp    2336 <rio_readlineb+0xb2>
    2333:	4d 89 f4             	mov    %r14,%r12
    2336:	41 c6 04 24 00       	movb   $0x0,(%r12)
    233b:	49 63 c5             	movslq %r13d,%rax
    233e:	5b                   	pop    %rbx
    233f:	5d                   	pop    %rbp
    2340:	41 5c                	pop    %r12
    2342:	41 5d                	pop    %r13
    2344:	41 5e                	pop    %r14
    2346:	c3                   	retq   
    2347:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    234e:	eb ee                	jmp    233e <rio_readlineb+0xba>

0000000000002350 <submitr>:
    2350:	41 57                	push   %r15
    2352:	41 56                	push   %r14
    2354:	41 55                	push   %r13
    2356:	41 54                	push   %r12
    2358:	55                   	push   %rbp
    2359:	53                   	push   %rbx
    235a:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    2361:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    2366:	89 f5                	mov    %esi,%ebp
    2368:	49 89 d4             	mov    %rdx,%r12
    236b:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2370:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    2375:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    237a:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    2381:	00 
    2382:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    2389:	00 
    238a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2391:	00 00 
    2393:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    239a:	00 
    239b:	31 c0                	xor    %eax,%eax
    239d:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    23a4:	00 
    23a5:	ba 00 00 00 00       	mov    $0x0,%edx
    23aa:	be 01 00 00 00       	mov    $0x1,%esi
    23af:	bf 02 00 00 00       	mov    $0x2,%edi
    23b4:	e8 17 ee ff ff       	callq  11d0 <socket@plt>
    23b9:	85 c0                	test   %eax,%eax
    23bb:	0f 88 0d 01 00 00    	js     24ce <submitr+0x17e>
    23c1:	41 89 c6             	mov    %eax,%r14d
    23c4:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    23c9:	e8 52 ed ff ff       	callq  1120 <gethostbyname@plt>
    23ce:	48 85 c0             	test   %rax,%rax
    23d1:	0f 84 47 01 00 00    	je     251e <submitr+0x1ce>
    23d7:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    23dc:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    23e3:	00 00 
    23e5:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    23ec:	00 00 
    23ee:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    23f5:	48 63 50 14          	movslq 0x14(%rax),%rdx
    23f9:	48 8b 40 18          	mov    0x18(%rax),%rax
    23fd:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2402:	48 8b 30             	mov    (%rax),%rsi
    2405:	e8 56 ed ff ff       	callq  1160 <memmove@plt>
    240a:	66 c1 c5 08          	rol    $0x8,%bp
    240e:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    2413:	ba 10 00 00 00       	mov    $0x10,%edx
    2418:	4c 89 ee             	mov    %r13,%rsi
    241b:	44 89 f7             	mov    %r14d,%edi
    241e:	e8 7d ed ff ff       	callq  11a0 <connect@plt>
    2423:	85 c0                	test   %eax,%eax
    2425:	0f 88 5e 01 00 00    	js     2589 <submitr+0x239>
    242b:	48 89 df             	mov    %rbx,%rdi
    242e:	e8 5d ec ff ff       	callq  1090 <strlen@plt>
    2433:	48 89 c5             	mov    %rax,%rbp
    2436:	4c 89 e7             	mov    %r12,%rdi
    2439:	e8 52 ec ff ff       	callq  1090 <strlen@plt>
    243e:	49 89 c5             	mov    %rax,%r13
    2441:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2446:	e8 45 ec ff ff       	callq  1090 <strlen@plt>
    244b:	49 89 c4             	mov    %rax,%r12
    244e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2453:	e8 38 ec ff ff       	callq  1090 <strlen@plt>
    2458:	48 89 c2             	mov    %rax,%rdx
    245b:	4b 8d 84 25 80 00 00 	lea    0x80(%r13,%r12,1),%rax
    2462:	00 
    2463:	48 01 d0             	add    %rdx,%rax
    2466:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    246b:	48 01 d0             	add    %rdx,%rax
    246e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2474:	0f 87 6c 01 00 00    	ja     25e6 <submitr+0x296>
    247a:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    2481:	00 
    2482:	b9 00 04 00 00       	mov    $0x400,%ecx
    2487:	b8 00 00 00 00       	mov    $0x0,%eax
    248c:	48 89 d7             	mov    %rdx,%rdi
    248f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2492:	48 89 df             	mov    %rbx,%rdi
    2495:	e8 f6 eb ff ff       	callq  1090 <strlen@plt>
    249a:	85 c0                	test   %eax,%eax
    249c:	0f 84 13 05 00 00    	je     29b5 <submitr+0x665>
    24a2:	8d 40 ff             	lea    -0x1(%rax),%eax
    24a5:	4c 8d 64 03 01       	lea    0x1(%rbx,%rax,1),%r12
    24aa:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    24b1:	00 
    24b2:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    24b9:	00 
    24ba:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    24bf:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    24c6:	00 20 00 
    24c9:	e9 a5 01 00 00       	jmpq   2673 <submitr+0x323>
    24ce:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24d5:	3a 20 43 
    24d8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24df:	20 75 6e 
    24e2:	49 89 07             	mov    %rax,(%r15)
    24e5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24e9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24f0:	74 6f 20 
    24f3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    24fa:	65 20 73 
    24fd:	49 89 47 10          	mov    %rax,0x10(%r15)
    2501:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2505:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    250c:	65 
    250d:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2514:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2519:	e9 6e 03 00 00       	jmpq   288c <submitr+0x53c>
    251e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2525:	3a 20 44 
    2528:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    252f:	20 75 6e 
    2532:	49 89 07             	mov    %rax,(%r15)
    2535:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2539:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2540:	74 6f 20 
    2543:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    254a:	76 65 20 
    254d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2551:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2555:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    255c:	72 20 61 
    255f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2563:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    256a:	65 
    256b:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2572:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2577:	44 89 f7             	mov    %r14d,%edi
    257a:	e8 51 eb ff ff       	callq  10d0 <close@plt>
    257f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2584:	e9 03 03 00 00       	jmpq   288c <submitr+0x53c>
    2589:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2590:	3a 20 55 
    2593:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    259a:	20 74 6f 
    259d:	49 89 07             	mov    %rax,(%r15)
    25a0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25a4:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    25ab:	65 63 74 
    25ae:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    25b5:	68 65 20 
    25b8:	49 89 47 10          	mov    %rax,0x10(%r15)
    25bc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25c0:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    25c7:	76 
    25c8:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    25cf:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    25d4:	44 89 f7             	mov    %r14d,%edi
    25d7:	e8 f4 ea ff ff       	callq  10d0 <close@plt>
    25dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25e1:	e9 a6 02 00 00       	jmpq   288c <submitr+0x53c>
    25e6:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25ed:	3a 20 52 
    25f0:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25f7:	20 73 74 
    25fa:	49 89 07             	mov    %rax,(%r15)
    25fd:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2601:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2608:	74 6f 6f 
    260b:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2612:	65 2e 20 
    2615:	49 89 47 10          	mov    %rax,0x10(%r15)
    2619:	49 89 57 18          	mov    %rdx,0x18(%r15)
    261d:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2624:	61 73 65 
    2627:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    262e:	49 54 52 
    2631:	49 89 47 20          	mov    %rax,0x20(%r15)
    2635:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2639:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2640:	55 46 00 
    2643:	49 89 47 30          	mov    %rax,0x30(%r15)
    2647:	44 89 f7             	mov    %r14d,%edi
    264a:	e8 81 ea ff ff       	callq  10d0 <close@plt>
    264f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2654:	e9 33 02 00 00       	jmpq   288c <submitr+0x53c>
    2659:	49 0f a3 c5          	bt     %rax,%r13
    265d:	73 1e                	jae    267d <submitr+0x32d>
    265f:	88 55 00             	mov    %dl,0x0(%rbp)
    2662:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2666:	48 83 c3 01          	add    $0x1,%rbx
    266a:	4c 39 e3             	cmp    %r12,%rbx
    266d:	0f 84 42 03 00 00    	je     29b5 <submitr+0x665>
    2673:	0f b6 13             	movzbl (%rbx),%edx
    2676:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    2679:	3c 35                	cmp    $0x35,%al
    267b:	76 dc                	jbe    2659 <submitr+0x309>
    267d:	89 d0                	mov    %edx,%eax
    267f:	83 e0 df             	and    $0xffffffdf,%eax
    2682:	83 e8 41             	sub    $0x41,%eax
    2685:	3c 19                	cmp    $0x19,%al
    2687:	76 d6                	jbe    265f <submitr+0x30f>
    2689:	80 fa 20             	cmp    $0x20,%dl
    268c:	74 50                	je     26de <submitr+0x38e>
    268e:	8d 42 e0             	lea    -0x20(%rdx),%eax
    2691:	3c 5f                	cmp    $0x5f,%al
    2693:	76 09                	jbe    269e <submitr+0x34e>
    2695:	80 fa 09             	cmp    $0x9,%dl
    2698:	0f 85 8a 02 00 00    	jne    2928 <submitr+0x5d8>
    269e:	0f b6 d2             	movzbl %dl,%edx
    26a1:	48 8d 35 87 10 00 00 	lea    0x1087(%rip),%rsi        # 372f <array.0+0x4cf>
    26a8:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    26ad:	b8 00 00 00 00       	mov    $0x0,%eax
    26b2:	e8 c9 ea ff ff       	callq  1180 <sprintf@plt>
    26b7:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    26be:	00 
    26bf:	88 45 00             	mov    %al,0x0(%rbp)
    26c2:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    26c9:	00 
    26ca:	88 45 01             	mov    %al,0x1(%rbp)
    26cd:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    26d4:	00 
    26d5:	88 45 02             	mov    %al,0x2(%rbp)
    26d8:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    26dc:	eb 88                	jmp    2666 <submitr+0x316>
    26de:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    26e2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    26e6:	e9 7b ff ff ff       	jmpq   2666 <submitr+0x316>
    26eb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    26f2:	3a 20 43 
    26f5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    26fc:	20 75 6e 
    26ff:	49 89 07             	mov    %rax,(%r15)
    2702:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2706:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    270d:	74 6f 20 
    2710:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2717:	20 74 6f 
    271a:	49 89 47 10          	mov    %rax,0x10(%r15)
    271e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2722:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2729:	73 65 72 
    272c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2730:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2737:	00 
    2738:	44 89 f7             	mov    %r14d,%edi
    273b:	e8 90 e9 ff ff       	callq  10d0 <close@plt>
    2740:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2745:	e9 42 01 00 00       	jmpq   288c <submitr+0x53c>
    274a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2751:	3a 20 43 
    2754:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    275b:	20 75 6e 
    275e:	49 89 07             	mov    %rax,(%r15)
    2761:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2765:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    276c:	74 6f 20 
    276f:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2776:	20 74 6f 
    2779:	49 89 47 10          	mov    %rax,0x10(%r15)
    277d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2781:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2788:	73 65 72 
    278b:	49 89 47 20          	mov    %rax,0x20(%r15)
    278f:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2796:	00 
    2797:	44 89 f7             	mov    %r14d,%edi
    279a:	e8 31 e9 ff ff       	callq  10d0 <close@plt>
    279f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27a4:	e9 e3 00 00 00       	jmpq   288c <submitr+0x53c>
    27a9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27b0:	3a 20 43 
    27b3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27ba:	20 75 6e 
    27bd:	49 89 07             	mov    %rax,(%r15)
    27c0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27c4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27cb:	74 6f 20 
    27ce:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    27d5:	66 69 72 
    27d8:	49 89 47 10          	mov    %rax,0x10(%r15)
    27dc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27e0:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    27e7:	61 64 65 
    27ea:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    27f1:	6d 20 73 
    27f4:	49 89 47 20          	mov    %rax,0x20(%r15)
    27f8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27fc:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2803:	65 
    2804:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    280b:	44 89 f7             	mov    %r14d,%edi
    280e:	e8 bd e8 ff ff       	callq  10d0 <close@plt>
    2813:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2818:	eb 72                	jmp    288c <submitr+0x53c>
    281a:	48 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%rcx
    2821:	00 
    2822:	48 8d 35 57 0e 00 00 	lea    0xe57(%rip),%rsi        # 3680 <array.0+0x420>
    2829:	4c 89 ff             	mov    %r15,%rdi
    282c:	b8 00 00 00 00       	mov    $0x0,%eax
    2831:	e8 4a e9 ff ff       	callq  1180 <sprintf@plt>
    2836:	44 89 f7             	mov    %r14d,%edi
    2839:	e8 92 e8 ff ff       	callq  10d0 <close@plt>
    283e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2843:	eb 47                	jmp    288c <submitr+0x53c>
    2845:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    284c:	00 
    284d:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2852:	ba 00 20 00 00       	mov    $0x2000,%edx
    2857:	e8 28 fa ff ff       	callq  2284 <rio_readlineb>
    285c:	48 85 c0             	test   %rax,%rax
    285f:	7e 54                	jle    28b5 <submitr+0x565>
    2861:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2868:	00 
    2869:	4c 89 ff             	mov    %r15,%rdi
    286c:	e8 ef e7 ff ff       	callq  1060 <strcpy@plt>
    2871:	44 89 f7             	mov    %r14d,%edi
    2874:	e8 57 e8 ff ff       	callq  10d0 <close@plt>
    2879:	48 8d 35 d4 0e 00 00 	lea    0xed4(%rip),%rsi        # 3754 <array.0+0x4f4>
    2880:	4c 89 ff             	mov    %r15,%rdi
    2883:	e8 78 e8 ff ff       	callq  1100 <strcmp@plt>
    2888:	f7 d8                	neg    %eax
    288a:	19 c0                	sbb    %eax,%eax
    288c:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2893:	00 
    2894:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    289b:	00 00 
    289d:	0f 85 be 02 00 00    	jne    2b61 <submitr+0x811>
    28a3:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    28aa:	5b                   	pop    %rbx
    28ab:	5d                   	pop    %rbp
    28ac:	41 5c                	pop    %r12
    28ae:	41 5d                	pop    %r13
    28b0:	41 5e                	pop    %r14
    28b2:	41 5f                	pop    %r15
    28b4:	c3                   	retq   
    28b5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28bc:	3a 20 43 
    28bf:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28c6:	20 75 6e 
    28c9:	49 89 07             	mov    %rax,(%r15)
    28cc:	49 89 57 08          	mov    %rdx,0x8(%r15)
    28d0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28d7:	74 6f 20 
    28da:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    28e1:	73 74 61 
    28e4:	49 89 47 10          	mov    %rax,0x10(%r15)
    28e8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    28ec:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    28f3:	65 73 73 
    28f6:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    28fd:	72 6f 6d 
    2900:	49 89 47 20          	mov    %rax,0x20(%r15)
    2904:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2908:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    290f:	65 72 00 
    2912:	49 89 47 30          	mov    %rax,0x30(%r15)
    2916:	44 89 f7             	mov    %r14d,%edi
    2919:	e8 b2 e7 ff ff       	callq  10d0 <close@plt>
    291e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2923:	e9 64 ff ff ff       	jmpq   288c <submitr+0x53c>
    2928:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    292f:	3a 20 52 
    2932:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2939:	20 73 74 
    293c:	49 89 07             	mov    %rax,(%r15)
    293f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2943:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    294a:	63 6f 6e 
    294d:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2954:	20 61 6e 
    2957:	49 89 47 10          	mov    %rax,0x10(%r15)
    295b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    295f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2966:	67 61 6c 
    2969:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2970:	6e 70 72 
    2973:	49 89 47 20          	mov    %rax,0x20(%r15)
    2977:	49 89 57 28          	mov    %rdx,0x28(%r15)
    297b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2982:	6c 65 20 
    2985:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    298c:	63 74 65 
    298f:	49 89 47 30          	mov    %rax,0x30(%r15)
    2993:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2997:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    299e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    29a3:	44 89 f7             	mov    %r14d,%edi
    29a6:	e8 25 e7 ff ff       	callq  10d0 <close@plt>
    29ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29b0:	e9 d7 fe ff ff       	jmpq   288c <submitr+0x53c>
    29b5:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    29bc:	00 
    29bd:	4c 8d 8c 24 60 40 00 	lea    0x4060(%rsp),%r9
    29c4:	00 
    29c5:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    29ca:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    29cf:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    29d4:	48 8d 35 d5 0c 00 00 	lea    0xcd5(%rip),%rsi        # 36b0 <array.0+0x450>
    29db:	48 89 df             	mov    %rbx,%rdi
    29de:	b8 00 00 00 00       	mov    $0x0,%eax
    29e3:	e8 98 e7 ff ff       	callq  1180 <sprintf@plt>
    29e8:	48 89 df             	mov    %rbx,%rdi
    29eb:	e8 a0 e6 ff ff       	callq  1090 <strlen@plt>
    29f0:	48 89 c2             	mov    %rax,%rdx
    29f3:	48 89 de             	mov    %rbx,%rsi
    29f6:	44 89 f7             	mov    %r14d,%edi
    29f9:	e8 26 f8 ff ff       	callq  2224 <rio_writen>
    29fe:	48 85 c0             	test   %rax,%rax
    2a01:	0f 88 e4 fc ff ff    	js     26eb <submitr+0x39b>
    2a07:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2a0e:	00 
    2a0f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    2a14:	48 8d 35 1b 0d 00 00 	lea    0xd1b(%rip),%rsi        # 3736 <array.0+0x4d6>
    2a1b:	48 89 df             	mov    %rbx,%rdi
    2a1e:	b8 00 00 00 00       	mov    $0x0,%eax
    2a23:	e8 58 e7 ff ff       	callq  1180 <sprintf@plt>
    2a28:	48 89 df             	mov    %rbx,%rdi
    2a2b:	e8 60 e6 ff ff       	callq  1090 <strlen@plt>
    2a30:	48 89 c2             	mov    %rax,%rdx
    2a33:	48 89 de             	mov    %rbx,%rsi
    2a36:	44 89 f7             	mov    %r14d,%edi
    2a39:	e8 e6 f7 ff ff       	callq  2224 <rio_writen>
    2a3e:	48 85 c0             	test   %rax,%rax
    2a41:	0f 88 03 fd ff ff    	js     274a <submitr+0x3fa>
    2a47:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    2a4c:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2a53:	00 
    2a54:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2a59:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    2a5e:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2a63:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2a6a:	00 
    2a6b:	ba 00 20 00 00       	mov    $0x2000,%edx
    2a70:	e8 0f f8 ff ff       	callq  2284 <rio_readlineb>
    2a75:	48 85 c0             	test   %rax,%rax
    2a78:	0f 8e 2b fd ff ff    	jle    27a9 <submitr+0x459>
    2a7e:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2a83:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2a8a:	00 
    2a8b:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2a92:	00 
    2a93:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2a9a:	00 
    2a9b:	48 8d 35 a1 0c 00 00 	lea    0xca1(%rip),%rsi        # 3743 <array.0+0x4e3>
    2aa2:	b8 00 00 00 00       	mov    $0x0,%eax
    2aa7:	e8 a4 e6 ff ff       	callq  1150 <__isoc99_sscanf@plt>
    2aac:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    2ab0:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    2ab6:	0f 85 5e fd ff ff    	jne    281a <submitr+0x4ca>
    2abc:	48 8d 1d 7d 0c 00 00 	lea    0xc7d(%rip),%rbx        # 3740 <array.0+0x4e0>
    2ac3:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2aca:	00 
    2acb:	48 89 de             	mov    %rbx,%rsi
    2ace:	e8 2d e6 ff ff       	callq  1100 <strcmp@plt>
    2ad3:	85 c0                	test   %eax,%eax
    2ad5:	0f 84 6a fd ff ff    	je     2845 <submitr+0x4f5>
    2adb:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2ae2:	00 
    2ae3:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2ae8:	ba 00 20 00 00       	mov    $0x2000,%edx
    2aed:	e8 92 f7 ff ff       	callq  2284 <rio_readlineb>
    2af2:	48 85 c0             	test   %rax,%rax
    2af5:	7f cc                	jg     2ac3 <submitr+0x773>
    2af7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2afe:	3a 20 43 
    2b01:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2b08:	20 75 6e 
    2b0b:	49 89 07             	mov    %rax,(%r15)
    2b0e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2b12:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2b19:	74 6f 20 
    2b1c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2b23:	68 65 61 
    2b26:	49 89 47 10          	mov    %rax,0x10(%r15)
    2b2a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2b2e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2b35:	66 72 6f 
    2b38:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2b3f:	76 65 72 
    2b42:	49 89 47 20          	mov    %rax,0x20(%r15)
    2b46:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2b4a:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2b4f:	44 89 f7             	mov    %r14d,%edi
    2b52:	e8 79 e5 ff ff       	callq  10d0 <close@plt>
    2b57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2b5c:	e9 2b fd ff ff       	jmpq   288c <submitr+0x53c>
    2b61:	e8 3a e5 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000002b66 <init_timeout>:
    2b66:	85 ff                	test   %edi,%edi
    2b68:	75 01                	jne    2b6b <init_timeout+0x5>
    2b6a:	c3                   	retq   
    2b6b:	53                   	push   %rbx
    2b6c:	89 fb                	mov    %edi,%ebx
    2b6e:	48 8d 35 84 f6 ff ff 	lea    -0x97c(%rip),%rsi        # 21f9 <sigalrm_handler>
    2b75:	bf 0e 00 00 00       	mov    $0xe,%edi
    2b7a:	e8 91 e5 ff ff       	callq  1110 <signal@plt>
    2b7f:	85 db                	test   %ebx,%ebx
    2b81:	b8 00 00 00 00       	mov    $0x0,%eax
    2b86:	0f 49 c3             	cmovns %ebx,%eax
    2b89:	89 c7                	mov    %eax,%edi
    2b8b:	e8 30 e5 ff ff       	callq  10c0 <alarm@plt>
    2b90:	5b                   	pop    %rbx
    2b91:	c3                   	retq   

0000000000002b92 <init_driver>:
    2b92:	41 54                	push   %r12
    2b94:	55                   	push   %rbp
    2b95:	53                   	push   %rbx
    2b96:	48 83 ec 20          	sub    $0x20,%rsp
    2b9a:	48 89 fd             	mov    %rdi,%rbp
    2b9d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ba4:	00 00 
    2ba6:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2bab:	31 c0                	xor    %eax,%eax
    2bad:	be 01 00 00 00       	mov    $0x1,%esi
    2bb2:	bf 0d 00 00 00       	mov    $0xd,%edi
    2bb7:	e8 54 e5 ff ff       	callq  1110 <signal@plt>
    2bbc:	be 01 00 00 00       	mov    $0x1,%esi
    2bc1:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2bc6:	e8 45 e5 ff ff       	callq  1110 <signal@plt>
    2bcb:	be 01 00 00 00       	mov    $0x1,%esi
    2bd0:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2bd5:	e8 36 e5 ff ff       	callq  1110 <signal@plt>
    2bda:	ba 00 00 00 00       	mov    $0x0,%edx
    2bdf:	be 01 00 00 00       	mov    $0x1,%esi
    2be4:	bf 02 00 00 00       	mov    $0x2,%edi
    2be9:	e8 e2 e5 ff ff       	callq  11d0 <socket@plt>
    2bee:	85 c0                	test   %eax,%eax
    2bf0:	0f 88 97 00 00 00    	js     2c8d <init_driver+0xfb>
    2bf6:	89 c3                	mov    %eax,%ebx
    2bf8:	48 8d 3d 58 0b 00 00 	lea    0xb58(%rip),%rdi        # 3757 <array.0+0x4f7>
    2bff:	e8 1c e5 ff ff       	callq  1120 <gethostbyname@plt>
    2c04:	48 85 c0             	test   %rax,%rax
    2c07:	0f 84 cc 00 00 00    	je     2cd9 <init_driver+0x147>
    2c0d:	49 89 e4             	mov    %rsp,%r12
    2c10:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2c17:	00 
    2c18:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    2c1f:	00 00 
    2c21:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2c27:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2c2b:	48 8b 40 18          	mov    0x18(%rax),%rax
    2c2f:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2c34:	48 8b 30             	mov    (%rax),%rsi
    2c37:	e8 24 e5 ff ff       	callq  1160 <memmove@plt>
    2c3c:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    2c43:	ba 10 00 00 00       	mov    $0x10,%edx
    2c48:	4c 89 e6             	mov    %r12,%rsi
    2c4b:	89 df                	mov    %ebx,%edi
    2c4d:	e8 4e e5 ff ff       	callq  11a0 <connect@plt>
    2c52:	85 c0                	test   %eax,%eax
    2c54:	0f 88 e7 00 00 00    	js     2d41 <init_driver+0x1af>
    2c5a:	89 df                	mov    %ebx,%edi
    2c5c:	e8 6f e4 ff ff       	callq  10d0 <close@plt>
    2c61:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2c67:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    2c6b:	b8 00 00 00 00       	mov    $0x0,%eax
    2c70:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2c75:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2c7c:	00 00 
    2c7e:	0f 85 ee 00 00 00    	jne    2d72 <init_driver+0x1e0>
    2c84:	48 83 c4 20          	add    $0x20,%rsp
    2c88:	5b                   	pop    %rbx
    2c89:	5d                   	pop    %rbp
    2c8a:	41 5c                	pop    %r12
    2c8c:	c3                   	retq   
    2c8d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2c94:	3a 20 43 
    2c97:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2c9e:	20 75 6e 
    2ca1:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2ca5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2ca9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2cb0:	74 6f 20 
    2cb3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2cba:	65 20 73 
    2cbd:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2cc1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2cc5:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2ccc:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2cd2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2cd7:	eb 97                	jmp    2c70 <init_driver+0xde>
    2cd9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2ce0:	3a 20 44 
    2ce3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2cea:	20 75 6e 
    2ced:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2cf1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2cf5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2cfc:	74 6f 20 
    2cff:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2d06:	76 65 20 
    2d09:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2d0d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2d11:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2d18:	72 20 61 
    2d1b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2d1f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2d26:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2d2c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2d30:	89 df                	mov    %ebx,%edi
    2d32:	e8 99 e3 ff ff       	callq  10d0 <close@plt>
    2d37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d3c:	e9 2f ff ff ff       	jmpq   2c70 <init_driver+0xde>
    2d41:	b9 50 00 00 00       	mov    $0x50,%ecx
    2d46:	48 8d 15 0a 0a 00 00 	lea    0xa0a(%rip),%rdx        # 3757 <array.0+0x4f7>
    2d4d:	48 8d 35 ac 09 00 00 	lea    0x9ac(%rip),%rsi        # 3700 <array.0+0x4a0>
    2d54:	48 89 ef             	mov    %rbp,%rdi
    2d57:	b8 00 00 00 00       	mov    $0x0,%eax
    2d5c:	e8 1f e4 ff ff       	callq  1180 <sprintf@plt>
    2d61:	89 df                	mov    %ebx,%edi
    2d63:	e8 68 e3 ff ff       	callq  10d0 <close@plt>
    2d68:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2d6d:	e9 fe fe ff ff       	jmpq   2c70 <init_driver+0xde>
    2d72:	e8 29 e3 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000002d77 <driver_post>:
    2d77:	53                   	push   %rbx
    2d78:	4c 89 c3             	mov    %r8,%rbx
    2d7b:	85 c9                	test   %ecx,%ecx
    2d7d:	75 17                	jne    2d96 <driver_post+0x1f>
    2d7f:	48 85 ff             	test   %rdi,%rdi
    2d82:	74 05                	je     2d89 <driver_post+0x12>
    2d84:	80 3f 00             	cmpb   $0x0,(%rdi)
    2d87:	75 31                	jne    2dba <driver_post+0x43>
    2d89:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2d8e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2d92:	89 c8                	mov    %ecx,%eax
    2d94:	5b                   	pop    %rbx
    2d95:	c3                   	retq   
    2d96:	48 89 d6             	mov    %rdx,%rsi
    2d99:	48 8d 3d c2 09 00 00 	lea    0x9c2(%rip),%rdi        # 3762 <array.0+0x502>
    2da0:	b8 00 00 00 00       	mov    $0x0,%eax
    2da5:	e8 06 e3 ff ff       	callq  10b0 <printf@plt>
    2daa:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2daf:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2db3:	b8 00 00 00 00       	mov    $0x0,%eax
    2db8:	eb da                	jmp    2d94 <driver_post+0x1d>
    2dba:	41 50                	push   %r8
    2dbc:	52                   	push   %rdx
    2dbd:	4c 8d 0d b5 09 00 00 	lea    0x9b5(%rip),%r9        # 3779 <array.0+0x519>
    2dc4:	49 89 f0             	mov    %rsi,%r8
    2dc7:	48 89 f9             	mov    %rdi,%rcx
    2dca:	48 8d 15 b0 09 00 00 	lea    0x9b0(%rip),%rdx        # 3781 <array.0+0x521>
    2dd1:	be 50 00 00 00       	mov    $0x50,%esi
    2dd6:	48 8d 3d 7a 09 00 00 	lea    0x97a(%rip),%rdi        # 3757 <array.0+0x4f7>
    2ddd:	e8 6e f5 ff ff       	callq  2350 <submitr>
    2de2:	48 83 c4 10          	add    $0x10,%rsp
    2de6:	eb ac                	jmp    2d94 <driver_post+0x1d>
    2de8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2def:	00 

0000000000002df0 <__libc_csu_init>:
    2df0:	f3 0f 1e fa          	endbr64 
    2df4:	41 57                	push   %r15
    2df6:	4c 8d 3d eb 2f 00 00 	lea    0x2feb(%rip),%r15        # 5de8 <__frame_dummy_init_array_entry>
    2dfd:	41 56                	push   %r14
    2dff:	49 89 d6             	mov    %rdx,%r14
    2e02:	41 55                	push   %r13
    2e04:	49 89 f5             	mov    %rsi,%r13
    2e07:	41 54                	push   %r12
    2e09:	41 89 fc             	mov    %edi,%r12d
    2e0c:	55                   	push   %rbp
    2e0d:	48 8d 2d dc 2f 00 00 	lea    0x2fdc(%rip),%rbp        # 5df0 <__do_global_dtors_aux_fini_array_entry>
    2e14:	53                   	push   %rbx
    2e15:	4c 29 fd             	sub    %r15,%rbp
    2e18:	48 83 ec 08          	sub    $0x8,%rsp
    2e1c:	e8 df e1 ff ff       	callq  1000 <_init>
    2e21:	48 c1 fd 03          	sar    $0x3,%rbp
    2e25:	74 1f                	je     2e46 <__libc_csu_init+0x56>
    2e27:	31 db                	xor    %ebx,%ebx
    2e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2e30:	4c 89 f2             	mov    %r14,%rdx
    2e33:	4c 89 ee             	mov    %r13,%rsi
    2e36:	44 89 e7             	mov    %r12d,%edi
    2e39:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2e3d:	48 83 c3 01          	add    $0x1,%rbx
    2e41:	48 39 dd             	cmp    %rbx,%rbp
    2e44:	75 ea                	jne    2e30 <__libc_csu_init+0x40>
    2e46:	48 83 c4 08          	add    $0x8,%rsp
    2e4a:	5b                   	pop    %rbx
    2e4b:	5d                   	pop    %rbp
    2e4c:	41 5c                	pop    %r12
    2e4e:	41 5d                	pop    %r13
    2e50:	41 5e                	pop    %r14
    2e52:	41 5f                	pop    %r15
    2e54:	c3                   	retq   
    2e55:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2e5c:	00 00 00 00 

0000000000002e60 <__libc_csu_fini>:
    2e60:	f3 0f 1e fa          	endbr64 
    2e64:	c3                   	retq   

Disassembly of section .fini:

0000000000002e68 <_fini>:
    2e68:	f3 0f 1e fa          	endbr64 
    2e6c:	48 83 ec 08          	sub    $0x8,%rsp
    2e70:	48 83 c4 08          	add    $0x8,%rsp
    2e74:	c3                   	retq   
