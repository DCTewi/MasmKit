#include <iostream.h>
#define COUNT 10
long mean(long d[], long num);
int main()
{
  long array[COUNT] = {675, 354, -34, 198, 267, 0, 9, 2371, -67, 4257};
  cout<<"The mean is \t"<<mean(array,COUNT)<<endl;
  return 0;
}
long mean(long d[], long num)
{
  long temp;	// 定义局部变量，用于返回值
  __asm {	// 嵌入式汇编代码部分（参考例程4-18）
	mov ebx,d	;EBX＝数组地址
	mov ecx,num	;ECX＝数据个数
	xor eax,eax	;EAX保存和值
	xor edx,edx	;EDX＝指向数组元素
mean1:	add eax,[ebx+edx*4]	;求和
	add edx,1	;指向下一个数据
	cmp edx,ecx	;比较个数
	jb mean1	;循环
	cdq	;将累加和EAX符号扩展到EDX
	idiv ecx	;有符号数除法，EAX＝平均值（余数在EDX中）
	mov temp,eax
	}
  return(temp);
}
