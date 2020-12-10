;eg0508e.asm
	include io32.inc	;源文件包含：32位输入输出说明文件
	.data	;数据段
dvar	dword 1234abcdh	
inmsg	byte 'Enter Memory Address:  ',0
outmsg1	byte 'Memory Data In HexDecimal:  ',0
outmsg2	byte 'Memory Data In Signed Decimal:  ',0
temp	dword ?	;共享变量
    extern rdhd:near,dphd:near,write:near
    public temp
	.code	;代码段，主程序
start:
    mov temp,offset dvar
	call dphd	;十六进制输出，显示变量DVAR地址以便输入
	call dispcrlf
	mov eax,offset inmsg
	call dispmsg
	call rdhd	;输入存储器地址，结果返回EAX
	call dispcrlf
	mov ebx,[eax]	;EBX=存储器数据
	mov eax,offset outmsg1
	call dispmsg 
	mov temp,ebx	;共享变量传递参数
	call dphd	;十六进制输出
	call dispcrlf
	mov eax,offset outmsg2
	call dispmsg
	mov eax,ebx	;寄存器传递参数
	call write	;十进制输出
	exit 0	;主程序结束，退出
	end start
