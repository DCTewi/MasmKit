;文件名：eg0508.inc，例5-8程序的数据段内容
	.data	;数据段
dvar	dword 1234abcdh	
inmsg	byte 'Enter Memory Address:  ',0
outmsg1	byte 'Memory Data In HexDecimal:  ',0
outmsg2	byte 'Memory Data In Signed Decimal:  ',0
temp	dword ?	;共享变量
writebuf	byte 12 dup(0)	;十进制输出的显示缓冲区