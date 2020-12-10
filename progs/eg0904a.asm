;eg0904a.asm for DOS
	include io16.inc
	.data
f32d	real4 100.25,0.2	; 单精度浮点数
f64d	real8 -0.2109375	; 双精度浮点数
f80d	real10 100.25e9	; 扩展精度浮点数
varf	real4 ?,?
i32d	dword 3e4ccccdh	; 0.2的编码（参见例题9-3）
	.code
start:	mov ax,@data
	mov ds,ax
	finit	; 初始化FPU
	fld f32d	; 压入单精度浮点数f32d
	fld f64d	; 压入双精度浮点数f64d
	fld f80d	; 压入扩展精度浮点数f80d
	fldpi	; 压入π（3.1415926…）
	fst varf	; 将栈顶数据π传送到变量VARF
	fstp varf+4	; 将栈顶数据π弹出到变量VARF+4
	mov eax,dword ptr f32d+4	; 取0.2（二进制编码）
	cmp eax,i32d	; 比较编码是否相同
	jz dispy
	mov al,'N'	; 不相同，显示N
	jmp dispn
dispy: 	mov al,'Y'	; 相同，显示Y
dispn: 	call dispc

	exit 0
	end start