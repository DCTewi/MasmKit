#include <iostream.h>
float area(float radius);
int main()
{
  float ftemp;
  cout<<"������Բ�İ뾶��\t";
  cin>>ftemp;
  cout<<endl<<"��Բ������ǣ�\t"<<area(ftemp)<<endl;
return 0;
}
float area(float radius)
{
  float ftemp;	// ����ֲ����������ڷ���ֵ
  __asm {	// Ƕ��ʽ�����벿��
	fldpi	; ��ѹ��ջ��
	fld radius	; �뾶ֵRѹ��ջ��
	fmul st(0),st(0)	; �˻���R��R
	fmul	; ����������R^2������ջ
	fstp ftemp	; �����������R^2
  }
  return(ftemp);
}