#include <iostream.h>
#define COUNT 10
extern "C" { long mean(long d[], long num); }
int main()
{
  long array[COUNT] = {675, 354, -34, 198, 267, 0, 9, 2371, -67, 4257};
  cout<<"The mean is \t"<<mean(array,COUNT)<<endl;
  return 0;
}
