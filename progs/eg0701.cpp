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
  long temp;	// ����ֲ����������ڷ���ֵ
  __asm {	// Ƕ��ʽ�����벿�֣��ο�����4-18��
	mov ebx,d	;EBX�������ַ
	mov ecx,num	;ECX�����ݸ���
	xor eax,eax	;EAX�����ֵ
	xor edx,edx	;EDX��ָ������Ԫ��
mean1:	add eax,[ebx+edx*4]	;���
	add edx,1	;ָ����һ������
	cmp edx,ecx	;�Ƚϸ���
	jb mean1	;ѭ��
	cdq	;���ۼӺ�EAX������չ��EDX
	idiv ecx	;�з�����������EAX��ƽ��ֵ��������EDX�У�
	mov temp,eax
	}
  return(temp);
}
