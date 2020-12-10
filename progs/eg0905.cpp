#include <iostream.h>
float area(float radius);
int main()
{
  float ftemp;
  cout<<"请输入圆的半径：\t";
  cin>>ftemp;
  cout<<endl<<"该圆的面积是：\t"<<area(ftemp)<<endl;
return 0;
}
float area(float radius)
{
  float ftemp;	// 定义局部变量，用于返回值
  __asm {	// 嵌入式汇编代码部分
	fldpi	; π压入栈顶
	fld radius	; 半径值R压入栈顶
	fmul st(0),st(0)	; 乘积：R×R
	fmul	; 求出面积：πR^2，并出栈
	fstp ftemp	; 弹出面积：πR^2
  }
  return(ftemp);
}