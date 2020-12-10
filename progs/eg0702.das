
Dump of file eg0702.obj

File Type: COFF OBJECT

_mean:
  00000000: 55                 push        ebp
  00000001: 8B EC              mov         ebp,esp
  00000003: 53                 push        ebx
  00000004: 51                 push        ecx
  00000005: 52                 push        edx
  00000006: 8B 5D 08           mov         ebx,dword ptr [ebp+8]
  00000009: 8B 4D 0C           mov         ecx,dword ptr [ebp+0Ch]
  0000000C: 33 C0              xor         eax,eax
  0000000E: 33 D2              xor         edx,edx
  00000010: 03 04 93           add         eax,dword ptr [ebx+edx*4]
  00000013: 83 C2 01           add         edx,1
  00000016: 3B D1              cmp         edx,ecx
  00000018: 72 F6              jb          00000010
  0000001A: 99                 cdq
  0000001B: F7 F9              idiv        eax,ecx
  0000001D: 5A                 pop         edx
  0000001E: 59                 pop         ecx
  0000001F: 5B                 pop         ebx
  00000020: C9                 leave
  00000021: C3                 ret

  Summary

           0 .data
          4F .debug$S
          22 .text
