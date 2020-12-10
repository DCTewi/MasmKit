
Dump of file eg0703.exe

File Type: EXECUTABLE IMAGE

  00401000: CC                 int         3
  00401001: CC                 int         3
  00401002: CC                 int         3
  00401003: CC                 int         3
  00401004: CC                 int         3
@ILT+0(_mean):
  00401005: E9 21 00 00 00     jmp         _mean
  0040100A: CC CC CC CC CC CC                                ......
_start:
  00401010: 6A 0A              push        0Ah
  00401012: 68 00 50 40 00     push        405000h
  00401017: E8 0F 00 00 00     call        _mean
  0040101C: 83 C4 08           add         esp,8
  0040101F: E8 6C 10 00 00     call        _dispsid
  00401024: 6A 00              push        0
  00401026: E8 43 00 00 00     call        _ExitProcess@4
_mean:
  0040102B: 55                 push        ebp
  0040102C: 8B EC              mov         ebp,esp
  0040102E: 83 C4 FC           add         esp,0FCh
  00401031: 53                 push        ebx
  00401032: 51                 push        ecx
  00401033: 52                 push        edx
  00401034: 8B 5D 08           mov         ebx,dword ptr [ebp+8]
  00401037: 8B 4D 0C           mov         ecx,dword ptr [ebp+0Ch]
  0040103A: C7 45 FC 00 00 00  mov         dword ptr [ebp-4],0
            00
  00401041: 33 D2              xor         edx,edx
  00401043: 8B 04 93           mov         eax,dword ptr [ebx+edx*4]
  00401046: 01 45 FC           add         dword ptr [ebp-4],eax
  00401049: 83 C2 01           add         edx,1
  0040104C: 3B D1              cmp         edx,ecx
  0040104E: 72 F3              jb          00401043
  00401050: 8B 45 FC           mov         eax,dword ptr [ebp-4]
  00401053: 99                 cdq
  00401054: F7 F9              idiv        eax,ecx
  00401056: 5A                 pop         edx
  00401057: 59                 pop         ecx
  00401058: 5B                 pop         ebx
  00401059: C9                 leave
  0040105A: C3                 ret
  0040105B: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  0040106B: CC CC CC                                         ...
_ExitProcess@4:
  0040106E: FF 25 84 60 40 00  jmp         dword ptr [__imp__ExitProcess@4]
  00401074: CC CC CC CC CC CC CC CC CC CC CC CC              ............
_dispmsg:
  00401080: 50                 push        eax
  00401081: 53                 push        ebx
  00401082: 51                 push        ecx
  00401083: 52                 push        edx
  00401084: 50                 push        eax
  00401085: 6A F5              push        0F5h
  00401087: E8 6E 11 00 00     call        _GetStdHandle@4
  0040108C: A3 30 50 40 00     mov         [00405030],eax
  00401091: 5B                 pop         ebx
  00401092: 33 C9              xor         ecx,ecx
  00401094: 8A 04 19           mov         al,byte ptr [ecx+ebx]
  00401097: 84 C0              test        al,al
  00401099: 74 03              je          0040109E
  0040109B: 41                 inc         ecx
  0040109C: EB F6              jmp         00401094
  0040109E: 6A 00              push        0
  004010A0: 68 33 51 40 00     push        405133h
  004010A5: 51                 push        ecx
  004010A6: 53                 push        ebx
  004010A7: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  004010AD: E8 54 11 00 00     call        _WriteConsoleA@20
  004010B2: 5A                 pop         edx
  004010B3: 59                 pop         ecx
  004010B4: 5B                 pop         ebx
  004010B5: 58                 pop         eax
  004010B6: C3                 ret
_dispc:
  004010B7: 60                 pushad
  004010B8: A2 37 51 40 00     mov         [00405137],al
  004010BD: 6A F5              push        0F5h
  004010BF: E8 36 11 00 00     call        _GetStdHandle@4
  004010C4: 6A 00              push        0
  004010C6: 68 33 51 40 00     push        405133h
  004010CB: 6A 01              push        1
  004010CD: 68 37 51 40 00     push        405137h
  004010D2: 50                 push        eax
  004010D3: E8 2E 11 00 00     call        _WriteConsoleA@20
  004010D8: 61                 popad
  004010D9: C3                 ret
_dispcrlf:
  004010DA: 60                 pushad
  004010DB: 6A F5              push        0F5h
  004010DD: E8 18 11 00 00     call        _GetStdHandle@4
  004010E2: 6A 00              push        0
  004010E4: 68 33 51 40 00     push        405133h
  004010E9: 6A 02              push        2
  004010EB: 68 38 51 40 00     push        405138h
  004010F0: 50                 push        eax
  004010F1: E8 10 11 00 00     call        _WriteConsoleA@20
  004010F6: 61                 popad
  004010F7: C3                 ret
_readmsg:
  004010F8: 53                 push        ebx
  004010F9: 51                 push        ecx
  004010FA: 52                 push        edx
  004010FB: 50                 push        eax
  004010FC: 6A F6              push        0F6h
  004010FE: E8 F7 10 00 00     call        _GetStdHandle@4
  00401103: A3 3A 51 40 00     mov         [0040513A],eax
  00401108: 6A 00              push        0
  0040110A: 68 3E 51 40 00     push        40513Eh
  0040110F: 68 FF 00 00 00     push        0FFh
  00401114: 68 42 51 40 00     push        405142h
  00401119: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040111F: E8 DC 10 00 00     call        _ReadConsoleA@20
  00401124: 83 2D 3E 51 40 00  sub         dword ptr ds:[40513Eh],2
            02
  0040112B: 72 DB              jb          00401108
  0040112D: 33 C9              xor         ecx,ecx
  0040112F: 5B                 pop         ebx
  00401130: 8A 81 42 51 40 00  mov         al,byte ptr [ecx+405142h]
  00401136: 88 04 19           mov         byte ptr [ecx+ebx],al
  00401139: 41                 inc         ecx
  0040113A: 3B 0D 3E 51 40 00  cmp         ecx,dword ptr ds:[40513Eh]
  00401140: 72 EE              jb          00401130
  00401142: C6 04 19 00        mov         byte ptr [ecx+ebx],0
  00401146: 8B C1              mov         eax,ecx
  00401148: 5A                 pop         edx
  00401149: 59                 pop         ecx
  0040114A: 5B                 pop         ebx
  0040114B: C3                 ret
_readc:
  0040114C: 53                 push        ebx
  0040114D: 51                 push        ecx
  0040114E: 52                 push        edx
  0040114F: 6A F6              push        0F6h
  00401151: E8 A4 10 00 00     call        _GetStdHandle@4
  00401156: A3 3A 51 40 00     mov         [0040513A],eax
  0040115B: 68 41 52 40 00     push        405241h
  00401160: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401166: E8 A1 10 00 00     call        _GetConsoleMode@8
  0040116B: 6A 00              push        0
  0040116D: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401173: E8 9A 10 00 00     call        _SetConsoleMode@8
  00401178: 6A 00              push        0
  0040117A: 68 3E 51 40 00     push        40513Eh
  0040117F: 6A 01              push        1
  00401181: 68 42 51 40 00     push        405142h
  00401186: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040118C: E8 6F 10 00 00     call        _ReadConsoleA@20
  00401191: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401197: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040119D: E8 70 10 00 00     call        _SetConsoleMode@8
  004011A2: 6A F5              push        0F5h
  004011A4: E8 51 10 00 00     call        _GetStdHandle@4
  004011A9: 6A 00              push        0
  004011AB: 68 33 51 40 00     push        405133h
  004011B0: 6A 01              push        1
  004011B2: 68 42 51 40 00     push        405142h
  004011B7: 50                 push        eax
  004011B8: E8 49 10 00 00     call        _WriteConsoleA@20
  004011BD: A0 42 51 40 00     mov         al,[00405142]
  004011C2: 5A                 pop         edx
  004011C3: 59                 pop         ecx
  004011C4: 5B                 pop         ebx
  004011C5: C3                 ret
_dispbb:
  004011C6: 50                 push        eax
  004011C7: 53                 push        ebx
  004011C8: 51                 push        ecx
  004011C9: 52                 push        edx
  004011CA: B9 07 00 00 00     mov         ecx,7
  004011CF: 33 DB              xor         ebx,ebx
  004011D1: D1 C8              ror         eax,1
  004011D3: 83 D3 30           adc         ebx,30h
  004011D6: 88 99 34 50 40 00  mov         byte ptr [ecx+405034h],bl
  004011DC: 83 E9 01           sub         ecx,1
  004011DF: 73 EE              jae         004011CF
  004011E1: 6A F5              push        0F5h
  004011E3: E8 12 10 00 00     call        _GetStdHandle@4
  004011E8: 6A 00              push        0
  004011EA: 68 33 51 40 00     push        405133h
  004011EF: 6A 08              push        8
  004011F1: 68 34 50 40 00     push        405034h
  004011F6: 50                 push        eax
  004011F7: E8 0A 10 00 00     call        _WriteConsoleA@20
  004011FC: 5A                 pop         edx
  004011FD: 59                 pop         ecx
  004011FE: 5B                 pop         ebx
  004011FF: 58                 pop         eax
  00401200: C3                 ret
_dispbw:
  00401201: 50                 push        eax
  00401202: 53                 push        ebx
  00401203: 51                 push        ecx
  00401204: 52                 push        edx
  00401205: B9 0F 00 00 00     mov         ecx,0Fh
  0040120A: 33 DB              xor         ebx,ebx
  0040120C: D1 C8              ror         eax,1
  0040120E: 83 D3 30           adc         ebx,30h
  00401211: 88 99 34 50 40 00  mov         byte ptr [ecx+405034h],bl
  00401217: 83 E9 01           sub         ecx,1
  0040121A: 73 EE              jae         0040120A
  0040121C: 6A F5              push        0F5h
  0040121E: E8 D7 0F 00 00     call        _GetStdHandle@4
  00401223: 6A 00              push        0
  00401225: 68 33 51 40 00     push        405133h
  0040122A: 6A 10              push        10h
  0040122C: 68 34 50 40 00     push        405034h
  00401231: 50                 push        eax
  00401232: E8 CF 0F 00 00     call        _WriteConsoleA@20
  00401237: 5A                 pop         edx
  00401238: 59                 pop         ecx
  00401239: 5B                 pop         ebx
  0040123A: 58                 pop         eax
  0040123B: C3                 ret
_dispbd:
  0040123C: 50                 push        eax
  0040123D: 53                 push        ebx
  0040123E: 51                 push        ecx
  0040123F: 52                 push        edx
  00401240: B9 1F 00 00 00     mov         ecx,1Fh
  00401245: 33 DB              xor         ebx,ebx
  00401247: D1 C8              ror         eax,1
  00401249: 83 D3 30           adc         ebx,30h
  0040124C: 88 99 34 50 40 00  mov         byte ptr [ecx+405034h],bl
  00401252: 83 E9 01           sub         ecx,1
  00401255: 73 EE              jae         00401245
  00401257: 6A F5              push        0F5h
  00401259: E8 9C 0F 00 00     call        _GetStdHandle@4
  0040125E: 6A 00              push        0
  00401260: 68 33 51 40 00     push        405133h
  00401265: 6A 20              push        20h
  00401267: 68 34 50 40 00     push        405034h
  0040126C: 50                 push        eax
  0040126D: E8 94 0F 00 00     call        _WriteConsoleA@20
  00401272: 5A                 pop         edx
  00401273: 59                 pop         ecx
  00401274: 5B                 pop         ebx
  00401275: 58                 pop         eax
  00401276: C3                 ret
_readbb:
  00401277: 53                 push        ebx
  00401278: 51                 push        ecx
  00401279: 52                 push        edx
  0040127A: 6A F6              push        0F6h
  0040127C: E8 79 0F 00 00     call        _GetStdHandle@4
  00401281: A3 3A 51 40 00     mov         [0040513A],eax
  00401286: 6A F5              push        0F5h
  00401288: E8 6D 0F 00 00     call        _GetStdHandle@4
  0040128D: A3 30 50 40 00     mov         [00405030],eax
  00401292: 68 41 52 40 00     push        405241h
  00401297: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040129D: E8 6A 0F 00 00     call        _GetConsoleMode@8
  004012A2: 6A 00              push        0
  004012A4: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004012AA: E8 63 0F 00 00     call        _SetConsoleMode@8
  004012AF: 33 DB              xor         ebx,ebx
  004012B1: B9 08 00 00 00     mov         ecx,8
  004012B6: 53                 push        ebx
  004012B7: 51                 push        ecx
  004012B8: 6A 00              push        0
  004012BA: 68 3E 51 40 00     push        40513Eh
  004012BF: 6A 01              push        1
  004012C1: 68 42 51 40 00     push        405142h
  004012C6: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004012CC: E8 2F 0F 00 00     call        _ReadConsoleA@20
  004012D1: A0 42 51 40 00     mov         al,[00405142]
  004012D6: 3C 30              cmp         al,30h
  004012D8: 72 DE              jb          004012B8
  004012DA: 3C 31              cmp         al,31h
  004012DC: 77 DA              ja          004012B8
  004012DE: 6A 00              push        0
  004012E0: 68 33 51 40 00     push        405133h
  004012E5: 6A 01              push        1
  004012E7: 68 42 51 40 00     push        405142h
  004012EC: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  004012F2: E8 0F 0F 00 00     call        _WriteConsoleA@20
  004012F7: 59                 pop         ecx
  004012F8: 5B                 pop         ebx
  004012F9: A0 42 51 40 00     mov         al,[00405142]
  004012FE: 2C 30              sub         al,30h
  00401300: D1 E3              shl         ebx,1
  00401302: 0A D8              or          bl,al
  00401304: E2 B0              loop        004012B6
  00401306: 53                 push        ebx
  00401307: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  0040130D: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401313: E8 FA 0E 00 00     call        _SetConsoleMode@8
  00401318: 58                 pop         eax
  00401319: 5A                 pop         edx
  0040131A: 59                 pop         ecx
  0040131B: 5B                 pop         ebx
  0040131C: C3                 ret
_readbw:
  0040131D: 53                 push        ebx
  0040131E: 51                 push        ecx
  0040131F: 52                 push        edx
  00401320: 6A F6              push        0F6h
  00401322: E8 D3 0E 00 00     call        _GetStdHandle@4
  00401327: A3 3A 51 40 00     mov         [0040513A],eax
  0040132C: 6A F5              push        0F5h
  0040132E: E8 C7 0E 00 00     call        _GetStdHandle@4
  00401333: A3 30 50 40 00     mov         [00405030],eax
  00401338: 68 41 52 40 00     push        405241h
  0040133D: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401343: E8 C4 0E 00 00     call        _GetConsoleMode@8
  00401348: 6A 00              push        0
  0040134A: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401350: E8 BD 0E 00 00     call        _SetConsoleMode@8
  00401355: 33 DB              xor         ebx,ebx
  00401357: B9 10 00 00 00     mov         ecx,10h
  0040135C: 53                 push        ebx
  0040135D: 51                 push        ecx
  0040135E: 6A 00              push        0
  00401360: 68 3E 51 40 00     push        40513Eh
  00401365: 6A 01              push        1
  00401367: 68 42 51 40 00     push        405142h
  0040136C: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401372: E8 89 0E 00 00     call        _ReadConsoleA@20
  00401377: A0 42 51 40 00     mov         al,[00405142]
  0040137C: 3C 30              cmp         al,30h
  0040137E: 72 DE              jb          0040135E
  00401380: 3C 31              cmp         al,31h
  00401382: 77 DA              ja          0040135E
  00401384: 6A 00              push        0
  00401386: 68 33 51 40 00     push        405133h
  0040138B: 6A 01              push        1
  0040138D: 68 42 51 40 00     push        405142h
  00401392: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401398: E8 69 0E 00 00     call        _WriteConsoleA@20
  0040139D: 59                 pop         ecx
  0040139E: 5B                 pop         ebx
  0040139F: A0 42 51 40 00     mov         al,[00405142]
  004013A4: 2C 30              sub         al,30h
  004013A6: D1 E3              shl         ebx,1
  004013A8: 0A D8              or          bl,al
  004013AA: E2 B0              loop        0040135C
  004013AC: 53                 push        ebx
  004013AD: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  004013B3: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004013B9: E8 54 0E 00 00     call        _SetConsoleMode@8
  004013BE: 58                 pop         eax
  004013BF: 5A                 pop         edx
  004013C0: 59                 pop         ecx
  004013C1: 5B                 pop         ebx
  004013C2: C3                 ret
_readbd:
  004013C3: 53                 push        ebx
  004013C4: 51                 push        ecx
  004013C5: 52                 push        edx
  004013C6: 6A F6              push        0F6h
  004013C8: E8 2D 0E 00 00     call        _GetStdHandle@4
  004013CD: A3 3A 51 40 00     mov         [0040513A],eax
  004013D2: 6A F5              push        0F5h
  004013D4: E8 21 0E 00 00     call        _GetStdHandle@4
  004013D9: A3 30 50 40 00     mov         [00405030],eax
  004013DE: 68 41 52 40 00     push        405241h
  004013E3: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004013E9: E8 1E 0E 00 00     call        _GetConsoleMode@8
  004013EE: 6A 00              push        0
  004013F0: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004013F6: E8 17 0E 00 00     call        _SetConsoleMode@8
  004013FB: 33 DB              xor         ebx,ebx
  004013FD: B9 20 00 00 00     mov         ecx,20h
  00401402: 53                 push        ebx
  00401403: 51                 push        ecx
  00401404: 6A 00              push        0
  00401406: 68 3E 51 40 00     push        40513Eh
  0040140B: 6A 01              push        1
  0040140D: 68 42 51 40 00     push        405142h
  00401412: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401418: E8 E3 0D 00 00     call        _ReadConsoleA@20
  0040141D: A0 42 51 40 00     mov         al,[00405142]
  00401422: 3C 30              cmp         al,30h
  00401424: 72 DE              jb          00401404
  00401426: 3C 31              cmp         al,31h
  00401428: 77 DA              ja          00401404
  0040142A: 6A 00              push        0
  0040142C: 68 33 51 40 00     push        405133h
  00401431: 6A 01              push        1
  00401433: 68 42 51 40 00     push        405142h
  00401438: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  0040143E: E8 C3 0D 00 00     call        _WriteConsoleA@20
  00401443: 59                 pop         ecx
  00401444: 5B                 pop         ebx
  00401445: A0 42 51 40 00     mov         al,[00405142]
  0040144A: 2C 30              sub         al,30h
  0040144C: D1 E3              shl         ebx,1
  0040144E: 0A D8              or          bl,al
  00401450: E2 B0              loop        00401402
  00401452: 53                 push        ebx
  00401453: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401459: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040145F: E8 AE 0D 00 00     call        _SetConsoleMode@8
  00401464: 58                 pop         eax
  00401465: 5A                 pop         edx
  00401466: 59                 pop         ecx
  00401467: 5B                 pop         ebx
  00401468: C3                 ret
_disphb:
  00401469: 60                 pushad
  0040146A: 8A D8              mov         bl,al
  0040146C: 80 E3 0F           and         bl,0Fh
  0040146F: 80 C3 30           add         bl,30h
  00401472: 80 FB 39           cmp         bl,39h
  00401475: 76 03              jbe         0040147A
  00401477: 80 C3 07           add         bl,7
  0040147A: 88 1D 35 50 40 00  mov         byte ptr ds:[405035h],bl
  00401480: C0 E8 04           shr         al,4
  00401483: 24 0F              and         al,0Fh
  00401485: 04 30              add         al,30h
  00401487: 3C 39              cmp         al,39h
  00401489: 76 02              jbe         0040148D
  0040148B: 04 07              add         al,7
  0040148D: A2 34 50 40 00     mov         [00405034],al
  00401492: 6A F5              push        0F5h
  00401494: E8 61 0D 00 00     call        _GetStdHandle@4
  00401499: 6A 00              push        0
  0040149B: 68 33 51 40 00     push        405133h
  004014A0: 6A 02              push        2
  004014A2: 68 34 50 40 00     push        405034h
  004014A7: 50                 push        eax
  004014A8: E8 59 0D 00 00     call        _WriteConsoleA@20
  004014AD: 61                 popad
  004014AE: C3                 ret
_disphw:
  004014AF: 50                 push        eax
  004014B0: 53                 push        ebx
  004014B1: 51                 push        ecx
  004014B2: 52                 push        edx
  004014B3: B9 04 00 00 00     mov         ecx,4
  004014B8: 33 DB              xor         ebx,ebx
  004014BA: C1 C0 10           rol         eax,10h
  004014BD: C1 C0 04           rol         eax,4
  004014C0: 8B D0              mov         edx,eax
  004014C2: 83 E2 0F           and         edx,0Fh
  004014C5: 80 C2 30           add         dl,30h
  004014C8: 80 FA 39           cmp         dl,39h
  004014CB: 76 03              jbe         004014D0
  004014CD: 80 C2 07           add         dl,7
  004014D0: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  004014D6: 43                 inc         ebx
  004014D7: 3B D9              cmp         ebx,ecx
  004014D9: 72 E2              jb          004014BD
  004014DB: 6A F5              push        0F5h
  004014DD: E8 18 0D 00 00     call        _GetStdHandle@4
  004014E2: 6A 00              push        0
  004014E4: 68 33 51 40 00     push        405133h
  004014E9: 6A 04              push        4
  004014EB: 68 34 50 40 00     push        405034h
  004014F0: 50                 push        eax
  004014F1: E8 10 0D 00 00     call        _WriteConsoleA@20
  004014F6: 5A                 pop         edx
  004014F7: 59                 pop         ecx
  004014F8: 5B                 pop         ebx
  004014F9: 58                 pop         eax
  004014FA: C3                 ret
_disphd:
  004014FB: 50                 push        eax
  004014FC: 53                 push        ebx
  004014FD: 51                 push        ecx
  004014FE: 52                 push        edx
  004014FF: B9 08 00 00 00     mov         ecx,8
  00401504: 33 DB              xor         ebx,ebx
  00401506: C1 C0 04           rol         eax,4
  00401509: 8B D0              mov         edx,eax
  0040150B: 83 E2 0F           and         edx,0Fh
  0040150E: 80 C2 30           add         dl,30h
  00401511: 80 FA 39           cmp         dl,39h
  00401514: 76 03              jbe         00401519
  00401516: 80 C2 07           add         dl,7
  00401519: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  0040151F: 43                 inc         ebx
  00401520: 3B D9              cmp         ebx,ecx
  00401522: 72 E2              jb          00401506
  00401524: 6A F5              push        0F5h
  00401526: E8 CF 0C 00 00     call        _GetStdHandle@4
  0040152B: 6A 00              push        0
  0040152D: 68 33 51 40 00     push        405133h
  00401532: 6A 08              push        8
  00401534: 68 34 50 40 00     push        405034h
  00401539: 50                 push        eax
  0040153A: E8 C7 0C 00 00     call        _WriteConsoleA@20
  0040153F: 5A                 pop         edx
  00401540: 59                 pop         ecx
  00401541: 5B                 pop         ebx
  00401542: 58                 pop         eax
  00401543: C3                 ret
_disprb:
  00401544: 60                 pushad
  00401545: 52                 push        edx
  00401546: 8A D0              mov         dl,al
  00401548: 80 E2 0F           and         dl,0Fh
  0040154B: 80 C2 30           add         dl,30h
  0040154E: 80 FA 39           cmp         dl,39h
  00401551: 76 03              jbe         00401556
  00401553: 80 C2 07           add         dl,7
  00401556: 88 15 0B 53 40 00  mov         byte ptr ds:[40530Bh],dl
  0040155C: C0 E8 04           shr         al,4
  0040155F: 04 30              add         al,30h
  00401561: 3C 39              cmp         al,39h
  00401563: 76 02              jbe         00401567
  00401565: 04 07              add         al,7
  00401567: A2 0A 53 40 00     mov         [0040530A],al
  0040156C: 8A D4              mov         dl,ah
  0040156E: 80 E2 0F           and         dl,0Fh
  00401571: 80 C2 30           add         dl,30h
  00401574: 80 FA 39           cmp         dl,39h
  00401577: 76 03              jbe         0040157C
  00401579: 80 C2 07           add         dl,7
  0040157C: 88 15 12 53 40 00  mov         byte ptr ds:[405312h],dl
  00401582: C0 EC 04           shr         ah,4
  00401585: 80 C4 30           add         ah,30h
  00401588: 80 FC 39           cmp         ah,39h
  0040158B: 76 03              jbe         00401590
  0040158D: 80 C4 07           add         ah,7
  00401590: 88 25 11 53 40 00  mov         byte ptr ds:[405311h],ah
  00401596: 8A D3              mov         dl,bl
  00401598: 80 E2 0F           and         dl,0Fh
  0040159B: 80 C2 30           add         dl,30h
  0040159E: 80 FA 39           cmp         dl,39h
  004015A1: 76 03              jbe         004015A6
  004015A3: 80 C2 07           add         dl,7
  004015A6: 88 15 19 53 40 00  mov         byte ptr ds:[405319h],dl
  004015AC: C0 EB 04           shr         bl,4
  004015AF: 80 C3 30           add         bl,30h
  004015B2: 80 FB 39           cmp         bl,39h
  004015B5: 76 03              jbe         004015BA
  004015B7: 80 C3 07           add         bl,7
  004015BA: 88 1D 18 53 40 00  mov         byte ptr ds:[405318h],bl
  004015C0: 8A D7              mov         dl,bh
  004015C2: 80 E2 0F           and         dl,0Fh
  004015C5: 80 C2 30           add         dl,30h
  004015C8: 80 FA 39           cmp         dl,39h
  004015CB: 76 03              jbe         004015D0
  004015CD: 80 C2 07           add         dl,7
  004015D0: 88 15 20 53 40 00  mov         byte ptr ds:[405320h],dl
  004015D6: C0 EF 04           shr         bh,4
  004015D9: 80 C7 30           add         bh,30h
  004015DC: 80 FF 39           cmp         bh,39h
  004015DF: 76 03              jbe         004015E4
  004015E1: 80 C7 07           add         bh,7
  004015E4: 88 3D 1F 53 40 00  mov         byte ptr ds:[40531Fh],bh
  004015EA: 8A D1              mov         dl,cl
  004015EC: 80 E2 0F           and         dl,0Fh
  004015EF: 80 C2 30           add         dl,30h
  004015F2: 80 FA 39           cmp         dl,39h
  004015F5: 76 03              jbe         004015FA
  004015F7: 80 C2 07           add         dl,7
  004015FA: 88 15 27 53 40 00  mov         byte ptr ds:[405327h],dl
  00401600: C0 E9 04           shr         cl,4
  00401603: 80 C1 30           add         cl,30h
  00401606: 80 F9 39           cmp         cl,39h
  00401609: 76 03              jbe         0040160E
  0040160B: 80 C1 07           add         cl,7
  0040160E: 88 0D 26 53 40 00  mov         byte ptr ds:[405326h],cl
  00401614: 8A D5              mov         dl,ch
  00401616: 80 E2 0F           and         dl,0Fh
  00401619: 80 C2 30           add         dl,30h
  0040161C: 80 FA 39           cmp         dl,39h
  0040161F: 76 03              jbe         00401624
  00401621: 80 C2 07           add         dl,7
  00401624: 88 15 2E 53 40 00  mov         byte ptr ds:[40532Eh],dl
  0040162A: C0 ED 04           shr         ch,4
  0040162D: 80 C5 30           add         ch,30h
  00401630: 80 FD 39           cmp         ch,39h
  00401633: 76 03              jbe         00401638
  00401635: 80 C5 07           add         ch,7
  00401638: 88 2D 2D 53 40 00  mov         byte ptr ds:[40532Dh],ch
  0040163E: 58                 pop         eax
  0040163F: 8A D0              mov         dl,al
  00401641: 80 E2 0F           and         dl,0Fh
  00401644: 80 C2 30           add         dl,30h
  00401647: 80 FA 39           cmp         dl,39h
  0040164A: 76 03              jbe         0040164F
  0040164C: 80 C2 07           add         dl,7
  0040164F: 88 15 35 53 40 00  mov         byte ptr ds:[405335h],dl
  00401655: C0 E8 04           shr         al,4
  00401658: 04 30              add         al,30h
  0040165A: 3C 39              cmp         al,39h
  0040165C: 76 02              jbe         00401660
  0040165E: 04 07              add         al,7
  00401660: A2 34 53 40 00     mov         [00405334],al
  00401665: 8A D4              mov         dl,ah
  00401667: 80 E2 0F           and         dl,0Fh
  0040166A: 80 C2 30           add         dl,30h
  0040166D: 80 FA 39           cmp         dl,39h
  00401670: 76 03              jbe         00401675
  00401672: 80 C2 07           add         dl,7
  00401675: 88 15 3C 53 40 00  mov         byte ptr ds:[40533Ch],dl
  0040167B: C0 EC 04           shr         ah,4
  0040167E: 80 C4 30           add         ah,30h
  00401681: 80 FC 39           cmp         ah,39h
  00401684: 76 03              jbe         00401689
  00401686: 80 C4 07           add         ah,7
  00401689: 88 25 3B 53 40 00  mov         byte ptr ds:[40533Bh],ah
  0040168F: 6A F5              push        0F5h
  00401691: E8 64 0B 00 00     call        _GetStdHandle@4
  00401696: 6A 00              push        0
  00401698: 68 33 51 40 00     push        405133h
  0040169D: 68 38 00 00 00     push        38h
  004016A2: 68 07 53 40 00     push        405307h
  004016A7: 50                 push        eax
  004016A8: E8 59 0B 00 00     call        _WriteConsoleA@20
  004016AD: 61                 popad
  004016AE: C3                 ret
_disprw:
  004016AF: 60                 pushad
  004016B0: 52                 push        edx
  004016B1: 51                 push        ecx
  004016B2: 53                 push        ebx
  004016B3: B9 04 00 00 00     mov         ecx,4
  004016B8: 33 DB              xor         ebx,ebx
  004016BA: C1 C0 10           rol         eax,10h
  004016BD: C1 C0 04           rol         eax,4
  004016C0: 8B D0              mov         edx,eax
  004016C2: 80 E2 0F           and         dl,0Fh
  004016C5: 80 C2 30           add         dl,30h
  004016C8: 80 FA 39           cmp         dl,39h
  004016CB: 76 03              jbe         004016D0
  004016CD: 80 C2 07           add         dl,7
  004016D0: 88 93 C2 52 40 00  mov         byte ptr [ebx+4052C2h],dl
  004016D6: 43                 inc         ebx
  004016D7: 3B D9              cmp         ebx,ecx
  004016D9: 72 E2              jb          004016BD
  004016DB: 58                 pop         eax
  004016DC: 33 DB              xor         ebx,ebx
  004016DE: C1 C0 10           rol         eax,10h
  004016E1: C1 C0 04           rol         eax,4
  004016E4: 8B D0              mov         edx,eax
  004016E6: 80 E2 0F           and         dl,0Fh
  004016E9: 80 C2 30           add         dl,30h
  004016EC: 80 FA 39           cmp         dl,39h
  004016EF: 76 03              jbe         004016F4
  004016F1: 80 C2 07           add         dl,7
  004016F4: 88 93 CB 52 40 00  mov         byte ptr [ebx+4052CBh],dl
  004016FA: 43                 inc         ebx
  004016FB: 3B D9              cmp         ebx,ecx
  004016FD: 72 E2              jb          004016E1
  004016FF: 58                 pop         eax
  00401700: 33 DB              xor         ebx,ebx
  00401702: C1 C0 10           rol         eax,10h
  00401705: C1 C0 04           rol         eax,4
  00401708: 8B D0              mov         edx,eax
  0040170A: 80 E2 0F           and         dl,0Fh
  0040170D: 80 C2 30           add         dl,30h
  00401710: 80 FA 39           cmp         dl,39h
  00401713: 76 03              jbe         00401718
  00401715: 80 C2 07           add         dl,7
  00401718: 88 93 D4 52 40 00  mov         byte ptr [ebx+4052D4h],dl
  0040171E: 43                 inc         ebx
  0040171F: 3B D9              cmp         ebx,ecx
  00401721: 72 E2              jb          00401705
  00401723: 58                 pop         eax
  00401724: 33 DB              xor         ebx,ebx
  00401726: C1 C0 10           rol         eax,10h
  00401729: C1 C0 04           rol         eax,4
  0040172C: 8B D0              mov         edx,eax
  0040172E: 80 E2 0F           and         dl,0Fh
  00401731: 80 C2 30           add         dl,30h
  00401734: 80 FA 39           cmp         dl,39h
  00401737: 76 03              jbe         0040173C
  00401739: 80 C2 07           add         dl,7
  0040173C: 88 93 DD 52 40 00  mov         byte ptr [ebx+4052DDh],dl
  00401742: 43                 inc         ebx
  00401743: 3B D9              cmp         ebx,ecx
  00401745: 72 E2              jb          00401729
  00401747: 33 DB              xor         ebx,ebx
  00401749: C1 C6 10           rol         esi,10h
  0040174C: C1 C6 04           rol         esi,4
  0040174F: 8B D6              mov         edx,esi
  00401751: 80 E2 0F           and         dl,0Fh
  00401754: 80 C2 30           add         dl,30h
  00401757: 80 FA 39           cmp         dl,39h
  0040175A: 76 03              jbe         0040175F
  0040175C: 80 C2 07           add         dl,7
  0040175F: 88 93 E6 52 40 00  mov         byte ptr [ebx+4052E6h],dl
  00401765: 43                 inc         ebx
  00401766: 3B D9              cmp         ebx,ecx
  00401768: 72 E2              jb          0040174C
  0040176A: 33 DB              xor         ebx,ebx
  0040176C: C1 C7 10           rol         edi,10h
  0040176F: C1 C7 04           rol         edi,4
  00401772: 8B D7              mov         edx,edi
  00401774: 80 E2 0F           and         dl,0Fh
  00401777: 80 C2 30           add         dl,30h
  0040177A: 80 FA 39           cmp         dl,39h
  0040177D: 76 03              jbe         00401782
  0040177F: 80 C2 07           add         dl,7
  00401782: 88 93 EF 52 40 00  mov         byte ptr [ebx+4052EFh],dl
  00401788: 43                 inc         ebx
  00401789: 3B D9              cmp         ebx,ecx
  0040178B: 72 E2              jb          0040176F
  0040178D: 33 DB              xor         ebx,ebx
  0040178F: C1 C5 10           rol         ebp,10h
  00401792: C1 C5 04           rol         ebp,4
  00401795: 8B D5              mov         edx,ebp
  00401797: 80 E2 0F           and         dl,0Fh
  0040179A: 80 C2 30           add         dl,30h
  0040179D: 80 FA 39           cmp         dl,39h
  004017A0: 76 03              jbe         004017A5
  004017A2: 80 C2 07           add         dl,7
  004017A5: 88 93 F8 52 40 00  mov         byte ptr [ebx+4052F8h],dl
  004017AB: 43                 inc         ebx
  004017AC: 3B D9              cmp         ebx,ecx
  004017AE: 72 E2              jb          00401792
  004017B0: 8B C4              mov         eax,esp
  004017B2: 83 C0 24           add         eax,24h
  004017B5: 33 DB              xor         ebx,ebx
  004017B7: C1 C0 10           rol         eax,10h
  004017BA: C1 C0 04           rol         eax,4
  004017BD: 8B D0              mov         edx,eax
  004017BF: 80 E2 0F           and         dl,0Fh
  004017C2: 80 C2 30           add         dl,30h
  004017C5: 80 FA 39           cmp         dl,39h
  004017C8: 76 03              jbe         004017CD
  004017CA: 80 C2 07           add         dl,7
  004017CD: 88 93 01 53 40 00  mov         byte ptr [ebx+405301h],dl
  004017D3: 43                 inc         ebx
  004017D4: 3B D9              cmp         ebx,ecx
  004017D6: 72 E2              jb          004017BA
  004017D8: 6A F5              push        0F5h
  004017DA: E8 1B 0A 00 00     call        _GetStdHandle@4
  004017DF: 6A 00              push        0
  004017E1: 68 33 51 40 00     push        405133h
  004017E6: 68 48 00 00 00     push        48h
  004017EB: 68 BF 52 40 00     push        4052BFh
  004017F0: 50                 push        eax
  004017F1: E8 10 0A 00 00     call        _WriteConsoleA@20
  004017F6: 61                 popad
  004017F7: C3                 ret
_disprd:
  004017F8: 60                 pushad
  004017F9: 52                 push        edx
  004017FA: 51                 push        ecx
  004017FB: 53                 push        ebx
  004017FC: B9 08 00 00 00     mov         ecx,8
  00401801: 33 DB              xor         ebx,ebx
  00401803: C1 C0 04           rol         eax,4
  00401806: 8B D0              mov         edx,eax
  00401808: 80 E2 0F           and         dl,0Fh
  0040180B: 80 C2 30           add         dl,30h
  0040180E: 80 FA 39           cmp         dl,39h
  00401811: 76 03              jbe         00401816
  00401813: 80 C2 07           add         dl,7
  00401816: 88 93 53 52 40 00  mov         byte ptr [ebx+405253h],dl
  0040181C: 43                 inc         ebx
  0040181D: 3B D9              cmp         ebx,ecx
  0040181F: 72 E2              jb          00401803
  00401821: 58                 pop         eax
  00401822: 33 DB              xor         ebx,ebx
  00401824: C1 C0 04           rol         eax,4
  00401827: 8B D0              mov         edx,eax
  00401829: 80 E2 0F           and         dl,0Fh
  0040182C: 80 C2 30           add         dl,30h
  0040182F: 80 FA 39           cmp         dl,39h
  00401832: 76 03              jbe         00401837
  00401834: 80 C2 07           add         dl,7
  00401837: 88 93 61 52 40 00  mov         byte ptr [ebx+405261h],dl
  0040183D: 43                 inc         ebx
  0040183E: 3B D9              cmp         ebx,ecx
  00401840: 72 E2              jb          00401824
  00401842: 58                 pop         eax
  00401843: 33 DB              xor         ebx,ebx
  00401845: C1 C0 04           rol         eax,4
  00401848: 8B D0              mov         edx,eax
  0040184A: 80 E2 0F           and         dl,0Fh
  0040184D: 80 C2 30           add         dl,30h
  00401850: 80 FA 39           cmp         dl,39h
  00401853: 76 03              jbe         00401858
  00401855: 80 C2 07           add         dl,7
  00401858: 88 93 6F 52 40 00  mov         byte ptr [ebx+40526Fh],dl
  0040185E: 43                 inc         ebx
  0040185F: 3B D9              cmp         ebx,ecx
  00401861: 72 E2              jb          00401845
  00401863: 58                 pop         eax
  00401864: 33 DB              xor         ebx,ebx
  00401866: C1 C0 04           rol         eax,4
  00401869: 8B D0              mov         edx,eax
  0040186B: 80 E2 0F           and         dl,0Fh
  0040186E: 80 C2 30           add         dl,30h
  00401871: 80 FA 39           cmp         dl,39h
  00401874: 76 03              jbe         00401879
  00401876: 80 C2 07           add         dl,7
  00401879: 88 93 7D 52 40 00  mov         byte ptr [ebx+40527Dh],dl
  0040187F: 43                 inc         ebx
  00401880: 3B D9              cmp         ebx,ecx
  00401882: 72 E2              jb          00401866
  00401884: 33 DB              xor         ebx,ebx
  00401886: C1 C6 04           rol         esi,4
  00401889: 8B D6              mov         edx,esi
  0040188B: 80 E2 0F           and         dl,0Fh
  0040188E: 80 C2 30           add         dl,30h
  00401891: 80 FA 39           cmp         dl,39h
  00401894: 76 03              jbe         00401899
  00401896: 80 C2 07           add         dl,7
  00401899: 88 93 8B 52 40 00  mov         byte ptr [ebx+40528Bh],dl
  0040189F: 43                 inc         ebx
  004018A0: 3B D9              cmp         ebx,ecx
  004018A2: 72 E2              jb          00401886
  004018A4: 33 DB              xor         ebx,ebx
  004018A6: C1 C7 04           rol         edi,4
  004018A9: 8B D7              mov         edx,edi
  004018AB: 80 E2 0F           and         dl,0Fh
  004018AE: 80 C2 30           add         dl,30h
  004018B1: 80 FA 39           cmp         dl,39h
  004018B4: 76 03              jbe         004018B9
  004018B6: 80 C2 07           add         dl,7
  004018B9: 88 93 99 52 40 00  mov         byte ptr [ebx+405299h],dl
  004018BF: 43                 inc         ebx
  004018C0: 3B D9              cmp         ebx,ecx
  004018C2: 72 E2              jb          004018A6
  004018C4: 33 DB              xor         ebx,ebx
  004018C6: C1 C5 04           rol         ebp,4
  004018C9: 8B D5              mov         edx,ebp
  004018CB: 80 E2 0F           and         dl,0Fh
  004018CE: 80 C2 30           add         dl,30h
  004018D1: 80 FA 39           cmp         dl,39h
  004018D4: 76 03              jbe         004018D9
  004018D6: 80 C2 07           add         dl,7
  004018D9: 88 93 A7 52 40 00  mov         byte ptr [ebx+4052A7h],dl
  004018DF: 43                 inc         ebx
  004018E0: 3B D9              cmp         ebx,ecx
  004018E2: 72 E2              jb          004018C6
  004018E4: 8B C4              mov         eax,esp
  004018E6: 83 C0 24           add         eax,24h
  004018E9: 33 DB              xor         ebx,ebx
  004018EB: C1 C0 04           rol         eax,4
  004018EE: 8B D0              mov         edx,eax
  004018F0: 80 E2 0F           and         dl,0Fh
  004018F3: 80 C2 30           add         dl,30h
  004018F6: 80 FA 39           cmp         dl,39h
  004018F9: 76 03              jbe         004018FE
  004018FB: 80 C2 07           add         dl,7
  004018FE: 88 93 B5 52 40 00  mov         byte ptr [ebx+4052B5h],dl
  00401904: 43                 inc         ebx
  00401905: 3B D9              cmp         ebx,ecx
  00401907: 72 E2              jb          004018EB
  00401909: 6A F5              push        0F5h
  0040190B: E8 EA 08 00 00     call        _GetStdHandle@4
  00401910: 6A 00              push        0
  00401912: 68 33 51 40 00     push        405133h
  00401917: 68 70 00 00 00     push        70h
  0040191C: 68 4F 52 40 00     push        40524Fh
  00401921: 50                 push        eax
  00401922: E8 DF 08 00 00     call        _WriteConsoleA@20
  00401927: 61                 popad
  00401928: C3                 ret
_disprf:
  00401929: 50                 push        eax
  0040192A: 53                 push        ebx
  0040192B: 51                 push        ecx
  0040192C: 52                 push        edx
  0040192D: 9C                 pushfd
  0040192E: 58                 pop         eax
  0040192F: 33 DB              xor         ebx,ebx
  00401931: C1 C0 15           rol         eax,15h
  00401934: 83 D3 30           adc         ebx,30h
  00401937: 88 1D 42 53 40 00  mov         byte ptr ds:[405342h],bl
  0040193D: 33 DB              xor         ebx,ebx
  0040193F: C1 C0 04           rol         eax,4
  00401942: 83 D3 30           adc         ebx,30h
  00401945: 88 1D 48 53 40 00  mov         byte ptr ds:[405348h],bl
  0040194B: 33 DB              xor         ebx,ebx
  0040194D: D1 C0              rol         eax,1
  0040194F: 83 D3 30           adc         ebx,30h
  00401952: 88 1D 4E 53 40 00  mov         byte ptr ds:[40534Eh],bl
  00401958: 33 DB              xor         ebx,ebx
  0040195A: C1 C0 02           rol         eax,2
  0040195D: 83 D3 30           adc         ebx,30h
  00401960: 88 1D 54 53 40 00  mov         byte ptr ds:[405354h],bl
  00401966: 33 DB              xor         ebx,ebx
  00401968: C1 C0 02           rol         eax,2
  0040196B: 83 D3 30           adc         ebx,30h
  0040196E: 88 1D 5A 53 40 00  mov         byte ptr ds:[40535Ah],bl
  00401974: 33 DB              xor         ebx,ebx
  00401976: C1 C0 02           rol         eax,2
  00401979: 83 D3 30           adc         ebx,30h
  0040197C: 88 1D 60 53 40 00  mov         byte ptr ds:[405360h],bl
  00401982: 6A F5              push        0F5h
  00401984: E8 71 08 00 00     call        _GetStdHandle@4
  00401989: 6A 00              push        0
  0040198B: 68 33 51 40 00     push        405133h
  00401990: 68 24 00 00 00     push        24h
  00401995: 68 3F 53 40 00     push        40533Fh
  0040199A: 50                 push        eax
  0040199B: E8 66 08 00 00     call        _WriteConsoleA@20
  004019A0: 5A                 pop         edx
  004019A1: 59                 pop         ecx
  004019A2: 5B                 pop         ebx
  004019A3: 58                 pop         eax
  004019A4: C3                 ret
_readhb:
  004019A5: 53                 push        ebx
  004019A6: 51                 push        ecx
  004019A7: 52                 push        edx
  004019A8: 6A F6              push        0F6h
  004019AA: E8 4B 08 00 00     call        _GetStdHandle@4
  004019AF: A3 3A 51 40 00     mov         [0040513A],eax
  004019B4: 6A F5              push        0F5h
  004019B6: E8 3F 08 00 00     call        _GetStdHandle@4
  004019BB: A3 30 50 40 00     mov         [00405030],eax
  004019C0: 68 41 52 40 00     push        405241h
  004019C5: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004019CB: E8 3C 08 00 00     call        _GetConsoleMode@8
  004019D0: 6A 00              push        0
  004019D2: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004019D8: E8 35 08 00 00     call        _SetConsoleMode@8
  004019DD: 33 DB              xor         ebx,ebx
  004019DF: B9 02 00 00 00     mov         ecx,2
  004019E4: 53                 push        ebx
  004019E5: 51                 push        ecx
  004019E6: 6A 00              push        0
  004019E8: 68 3E 51 40 00     push        40513Eh
  004019ED: 6A 01              push        1
  004019EF: 68 42 51 40 00     push        405142h
  004019F4: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004019FA: E8 01 08 00 00     call        _ReadConsoleA@20
  004019FF: A0 42 51 40 00     mov         al,[00405142]
  00401A04: 3C 30              cmp         al,30h
  00401A06: 72 DE              jb          004019E6
  00401A08: 3C 39              cmp         al,39h
  00401A0A: 76 10              jbe         00401A1C
  00401A0C: 3C 41              cmp         al,41h
  00401A0E: 72 D6              jb          004019E6
  00401A10: 3C 46              cmp         al,46h
  00401A12: 76 08              jbe         00401A1C
  00401A14: 3C 61              cmp         al,61h
  00401A16: 72 CE              jb          004019E6
  00401A18: 3C 66              cmp         al,66h
  00401A1A: 77 CA              ja          004019E6
  00401A1C: 6A 00              push        0
  00401A1E: 68 33 51 40 00     push        405133h
  00401A23: 6A 01              push        1
  00401A25: 68 42 51 40 00     push        405142h
  00401A2A: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401A30: E8 D1 07 00 00     call        _WriteConsoleA@20
  00401A35: 59                 pop         ecx
  00401A36: 5B                 pop         ebx
  00401A37: A0 42 51 40 00     mov         al,[00405142]
  00401A3C: 3C 39              cmp         al,39h
  00401A3E: 76 08              jbe         00401A48
  00401A40: 3C 61              cmp         al,61h
  00401A42: 72 02              jb          00401A46
  00401A44: 2C 20              sub         al,20h
  00401A46: 2C 07              sub         al,7
  00401A48: 2C 30              sub         al,30h
  00401A4A: C1 E3 04           shl         ebx,4
  00401A4D: 0A D8              or          bl,al
  00401A4F: E2 93              loop        004019E4
  00401A51: 53                 push        ebx
  00401A52: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401A58: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401A5E: E8 AF 07 00 00     call        _SetConsoleMode@8
  00401A63: 58                 pop         eax
  00401A64: 5B                 pop         ebx
  00401A65: 59                 pop         ecx
  00401A66: 5A                 pop         edx
  00401A67: C3                 ret
_readhw:
  00401A68: 53                 push        ebx
  00401A69: 51                 push        ecx
  00401A6A: 52                 push        edx
  00401A6B: 6A F6              push        0F6h
  00401A6D: E8 88 07 00 00     call        _GetStdHandle@4
  00401A72: A3 3A 51 40 00     mov         [0040513A],eax
  00401A77: 6A F5              push        0F5h
  00401A79: E8 7C 07 00 00     call        _GetStdHandle@4
  00401A7E: A3 30 50 40 00     mov         [00405030],eax
  00401A83: 68 41 52 40 00     push        405241h
  00401A88: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401A8E: E8 79 07 00 00     call        _GetConsoleMode@8
  00401A93: 6A 00              push        0
  00401A95: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401A9B: E8 72 07 00 00     call        _SetConsoleMode@8
  00401AA0: 33 DB              xor         ebx,ebx
  00401AA2: B9 04 00 00 00     mov         ecx,4
  00401AA7: 53                 push        ebx
  00401AA8: 51                 push        ecx
  00401AA9: 6A 00              push        0
  00401AAB: 68 3E 51 40 00     push        40513Eh
  00401AB0: 6A 01              push        1
  00401AB2: 68 42 51 40 00     push        405142h
  00401AB7: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401ABD: E8 3E 07 00 00     call        _ReadConsoleA@20
  00401AC2: A0 42 51 40 00     mov         al,[00405142]
  00401AC7: 3C 30              cmp         al,30h
  00401AC9: 72 DE              jb          00401AA9
  00401ACB: 3C 39              cmp         al,39h
  00401ACD: 76 10              jbe         00401ADF
  00401ACF: 3C 41              cmp         al,41h
  00401AD1: 72 D6              jb          00401AA9
  00401AD3: 3C 46              cmp         al,46h
  00401AD5: 76 08              jbe         00401ADF
  00401AD7: 3C 61              cmp         al,61h
  00401AD9: 72 CE              jb          00401AA9
  00401ADB: 3C 66              cmp         al,66h
  00401ADD: 77 CA              ja          00401AA9
  00401ADF: 6A 00              push        0
  00401AE1: 68 33 51 40 00     push        405133h
  00401AE6: 6A 01              push        1
  00401AE8: 68 42 51 40 00     push        405142h
  00401AED: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401AF3: E8 0E 07 00 00     call        _WriteConsoleA@20
  00401AF8: 59                 pop         ecx
  00401AF9: 5B                 pop         ebx
  00401AFA: A0 42 51 40 00     mov         al,[00405142]
  00401AFF: 3C 39              cmp         al,39h
  00401B01: 76 08              jbe         00401B0B
  00401B03: 3C 61              cmp         al,61h
  00401B05: 72 02              jb          00401B09
  00401B07: 2C 20              sub         al,20h
  00401B09: 2C 07              sub         al,7
  00401B0B: 2C 30              sub         al,30h
  00401B0D: C1 E3 04           shl         ebx,4
  00401B10: 0A D8              or          bl,al
  00401B12: E2 93              loop        00401AA7
  00401B14: 53                 push        ebx
  00401B15: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401B1B: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B21: E8 EC 06 00 00     call        _SetConsoleMode@8
  00401B26: 58                 pop         eax
  00401B27: 5A                 pop         edx
  00401B28: 59                 pop         ecx
  00401B29: 5B                 pop         ebx
  00401B2A: C3                 ret
_readhd:
  00401B2B: 53                 push        ebx
  00401B2C: 51                 push        ecx
  00401B2D: 52                 push        edx
  00401B2E: 6A F6              push        0F6h
  00401B30: E8 C5 06 00 00     call        _GetStdHandle@4
  00401B35: A3 3A 51 40 00     mov         [0040513A],eax
  00401B3A: 6A F5              push        0F5h
  00401B3C: E8 B9 06 00 00     call        _GetStdHandle@4
  00401B41: A3 30 50 40 00     mov         [00405030],eax
  00401B46: 68 41 52 40 00     push        405241h
  00401B4B: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B51: E8 B6 06 00 00     call        _GetConsoleMode@8
  00401B56: 6A 00              push        0
  00401B58: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B5E: E8 AF 06 00 00     call        _SetConsoleMode@8
  00401B63: 33 DB              xor         ebx,ebx
  00401B65: B9 08 00 00 00     mov         ecx,8
  00401B6A: 53                 push        ebx
  00401B6B: 51                 push        ecx
  00401B6C: 6A 00              push        0
  00401B6E: 68 3E 51 40 00     push        40513Eh
  00401B73: 6A 01              push        1
  00401B75: 68 42 51 40 00     push        405142h
  00401B7A: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B80: E8 7B 06 00 00     call        _ReadConsoleA@20
  00401B85: A0 42 51 40 00     mov         al,[00405142]
  00401B8A: 3C 30              cmp         al,30h
  00401B8C: 72 DE              jb          00401B6C
  00401B8E: 3C 39              cmp         al,39h
  00401B90: 76 10              jbe         00401BA2
  00401B92: 3C 41              cmp         al,41h
  00401B94: 72 D6              jb          00401B6C
  00401B96: 3C 46              cmp         al,46h
  00401B98: 76 08              jbe         00401BA2
  00401B9A: 3C 61              cmp         al,61h
  00401B9C: 72 CE              jb          00401B6C
  00401B9E: 3C 66              cmp         al,66h
  00401BA0: 77 CA              ja          00401B6C
  00401BA2: 6A 00              push        0
  00401BA4: 68 33 51 40 00     push        405133h
  00401BA9: 6A 01              push        1
  00401BAB: 68 42 51 40 00     push        405142h
  00401BB0: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401BB6: E8 4B 06 00 00     call        _WriteConsoleA@20
  00401BBB: 59                 pop         ecx
  00401BBC: 5B                 pop         ebx
  00401BBD: A0 42 51 40 00     mov         al,[00405142]
  00401BC2: 3C 39              cmp         al,39h
  00401BC4: 76 08              jbe         00401BCE
  00401BC6: 3C 61              cmp         al,61h
  00401BC8: 72 02              jb          00401BCC
  00401BCA: 2C 20              sub         al,20h
  00401BCC: 2C 07              sub         al,7
  00401BCE: 2C 30              sub         al,30h
  00401BD0: C1 E3 04           shl         ebx,4
  00401BD3: 0A D8              or          bl,al
  00401BD5: E2 93              loop        00401B6A
  00401BD7: 53                 push        ebx
  00401BD8: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401BDE: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401BE4: E8 29 06 00 00     call        _SetConsoleMode@8
  00401BE9: 58                 pop         eax
  00401BEA: 5A                 pop         edx
  00401BEB: 59                 pop         ecx
  00401BEC: 5B                 pop         ebx
  00401BED: C3                 ret
_readuib:
  00401BEE: 53                 push        ebx
  00401BEF: 51                 push        ecx
  00401BF0: 52                 push        edx
  00401BF1: 6A F6              push        0F6h
  00401BF3: E8 02 06 00 00     call        _GetStdHandle@4
  00401BF8: A3 3A 51 40 00     mov         [0040513A],eax
  00401BFD: 6A F5              push        0F5h
  00401BFF: E8 F6 05 00 00     call        _GetStdHandle@4
  00401C04: A3 30 50 40 00     mov         [00405030],eax
  00401C09: 6A 00              push        0
  00401C0B: 68 3E 51 40 00     push        40513Eh
  00401C10: 68 FF 00 00 00     push        0FFh
  00401C15: 68 42 51 40 00     push        405142h
  00401C1A: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401C20: E8 DB 05 00 00     call        _ReadConsoleA@20
  00401C25: A1 3E 51 40 00     mov         eax,[0040513E]
  00401C2A: 83 E8 02           sub         eax,2
  00401C2D: 74 2C              je          00401C5B
  00401C2F: 83 F8 03           cmp         eax,3
  00401C32: 77 27              ja          00401C5B
  00401C34: BA 42 51 40 00     mov         edx,405142h
  00401C39: 33 DB              xor         ebx,ebx
  00401C3B: 8A 02              mov         al,byte ptr [edx]
  00401C3D: 42                 inc         edx
  00401C3E: 3C 0D              cmp         al,0Dh
  00401C40: 74 34              je          00401C76
  00401C42: 3C 30              cmp         al,30h
  00401C44: 72 15              jb          00401C5B
  00401C46: 3C 39              cmp         al,39h
  00401C48: 77 11              ja          00401C5B
  00401C4A: 2C 30              sub         al,30h
  00401C4C: D0 E3              shl         bl,1
  00401C4E: 8A FB              mov         bh,bl
  00401C50: C0 E3 02           shl         bl,2
  00401C53: 02 DF              add         bl,bh
  00401C55: 72 04              jb          00401C5B
  00401C57: 02 D8              add         bl,al
  00401C59: 73 E0              jae         00401C3B
  00401C5B: 6A 00              push        0
  00401C5D: 68 33 51 40 00     push        405133h
  00401C62: 6A 0A              push        0Ah
  00401C64: 68 45 52 40 00     push        405245h
  00401C69: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401C6F: E8 92 05 00 00     call        _WriteConsoleA@20
  00401C74: EB 93              jmp         00401C09
  00401C76: 8B C3              mov         eax,ebx
  00401C78: 5A                 pop         edx
  00401C79: 59                 pop         ecx
  00401C7A: 5B                 pop         ebx
  00401C7B: C3                 ret
_readuiw:
  00401C7C: 53                 push        ebx
  00401C7D: 51                 push        ecx
  00401C7E: 52                 push        edx
  00401C7F: 6A F6              push        0F6h
  00401C81: E8 74 05 00 00     call        _GetStdHandle@4
  00401C86: A3 3A 51 40 00     mov         [0040513A],eax
  00401C8B: 6A F5              push        0F5h
  00401C8D: E8 68 05 00 00     call        _GetStdHandle@4
  00401C92: A3 30 50 40 00     mov         [00405030],eax
  00401C97: 6A 00              push        0
  00401C99: 68 3E 51 40 00     push        40513Eh
  00401C9E: 68 FF 00 00 00     push        0FFh
  00401CA3: 68 42 51 40 00     push        405142h
  00401CA8: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401CAE: E8 4D 05 00 00     call        _ReadConsoleA@20
  00401CB3: A1 3E 51 40 00     mov         eax,[0040513E]
  00401CB8: 83 E8 02           sub         eax,2
  00401CBB: 74 35              je          00401CF2
  00401CBD: 83 F8 05           cmp         eax,5
  00401CC0: 77 30              ja          00401CF2
  00401CC2: BA 42 51 40 00     mov         edx,405142h
  00401CC7: 33 DB              xor         ebx,ebx
  00401CC9: 8A 02              mov         al,byte ptr [edx]
  00401CCB: 42                 inc         edx
  00401CCC: 3C 0D              cmp         al,0Dh
  00401CCE: 74 3D              je          00401D0D
  00401CD0: 3C 30              cmp         al,30h
  00401CD2: 72 1E              jb          00401CF2
  00401CD4: 3C 39              cmp         al,39h
  00401CD6: 77 1A              ja          00401CF2
  00401CD8: 2C 30              sub         al,30h
  00401CDA: 66 D1 E3           shl         bx,1
  00401CDD: 66 8B CB           mov         cx,bx
  00401CE0: 66 C1 E3 02        shl         bx,2
  00401CE4: 66 03 D9           add         bx,cx
  00401CE7: 72 09              jb          00401CF2
  00401CE9: 66 0F B6 C0        movzx       ax,al
  00401CED: 66 03 D8           add         bx,ax
  00401CF0: 73 D7              jae         00401CC9
  00401CF2: 6A 00              push        0
  00401CF4: 68 33 51 40 00     push        405133h
  00401CF9: 6A 0A              push        0Ah
  00401CFB: 68 45 52 40 00     push        405245h
  00401D00: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401D06: E8 FB 04 00 00     call        _WriteConsoleA@20
  00401D0B: EB 8A              jmp         00401C97
  00401D0D: 8B C3              mov         eax,ebx
  00401D0F: 5A                 pop         edx
  00401D10: 59                 pop         ecx
  00401D11: 5B                 pop         ebx
  00401D12: C3                 ret
_readuid:
  00401D13: 53                 push        ebx
  00401D14: 51                 push        ecx
  00401D15: 52                 push        edx
  00401D16: 6A F6              push        0F6h
  00401D18: E8 DD 04 00 00     call        _GetStdHandle@4
  00401D1D: A3 3A 51 40 00     mov         [0040513A],eax
  00401D22: 6A F5              push        0F5h
  00401D24: E8 D1 04 00 00     call        _GetStdHandle@4
  00401D29: A3 30 50 40 00     mov         [00405030],eax
  00401D2E: 6A 00              push        0
  00401D30: 68 3E 51 40 00     push        40513Eh
  00401D35: 68 FF 00 00 00     push        0FFh
  00401D3A: 68 42 51 40 00     push        405142h
  00401D3F: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401D45: E8 B6 04 00 00     call        _ReadConsoleA@20
  00401D4A: A1 3E 51 40 00     mov         eax,[0040513E]
  00401D4F: 83 E8 02           sub         eax,2
  00401D52: 74 2F              je          00401D83
  00401D54: 83 F8 0C           cmp         eax,0Ch
  00401D57: 77 2A              ja          00401D83
  00401D59: BA 42 51 40 00     mov         edx,405142h
  00401D5E: 33 DB              xor         ebx,ebx
  00401D60: 8A 02              mov         al,byte ptr [edx]
  00401D62: 42                 inc         edx
  00401D63: 3C 0D              cmp         al,0Dh
  00401D65: 74 37              je          00401D9E
  00401D67: 3C 30              cmp         al,30h
  00401D69: 72 18              jb          00401D83
  00401D6B: 3C 39              cmp         al,39h
  00401D6D: 77 14              ja          00401D83
  00401D6F: 2C 30              sub         al,30h
  00401D71: D1 E3              shl         ebx,1
  00401D73: 8B CB              mov         ecx,ebx
  00401D75: C1 E3 02           shl         ebx,2
  00401D78: 03 D9              add         ebx,ecx
  00401D7A: 72 07              jb          00401D83
  00401D7C: 0F B6 C0           movzx       eax,al
  00401D7F: 03 D8              add         ebx,eax
  00401D81: 73 DD              jae         00401D60
  00401D83: 6A 00              push        0
  00401D85: 68 33 51 40 00     push        405133h
  00401D8A: 6A 0A              push        0Ah
  00401D8C: 68 45 52 40 00     push        405245h
  00401D91: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401D97: E8 6A 04 00 00     call        _WriteConsoleA@20
  00401D9C: EB 90              jmp         00401D2E
  00401D9E: 8B C3              mov         eax,ebx
  00401DA0: 5A                 pop         edx
  00401DA1: 59                 pop         ecx
  00401DA2: 5B                 pop         ebx
  00401DA3: C3                 ret
_readsib:
  00401DA4: 53                 push        ebx
  00401DA5: 51                 push        ecx
  00401DA6: 52                 push        edx
  00401DA7: 6A F6              push        0F6h
  00401DA9: E8 4C 04 00 00     call        _GetStdHandle@4
  00401DAE: A3 3A 51 40 00     mov         [0040513A],eax
  00401DB3: 6A F5              push        0F5h
  00401DB5: E8 40 04 00 00     call        _GetStdHandle@4
  00401DBA: A3 30 50 40 00     mov         [00405030],eax
  00401DBF: 6A 00              push        0
  00401DC1: 68 3E 51 40 00     push        40513Eh
  00401DC6: 68 FF 00 00 00     push        0FFh
  00401DCB: 68 42 51 40 00     push        405142h
  00401DD0: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401DD6: E8 25 04 00 00     call        _ReadConsoleA@20
  00401DDB: A1 3E 51 40 00     mov         eax,[0040513E]
  00401DE0: 83 E8 02           sub         eax,2
  00401DE3: 74 43              je          00401E28
  00401DE5: 83 F8 04           cmp         eax,4
  00401DE8: 77 3E              ja          00401E28
  00401DEA: BA 42 51 40 00     mov         edx,405142h
  00401DEF: 33 DB              xor         ebx,ebx
  00401DF1: 33 C9              xor         ecx,ecx
  00401DF3: 8A 02              mov         al,byte ptr [edx]
  00401DF5: 3C 2B              cmp         al,2Bh
  00401DF7: 74 09              je          00401E02
  00401DF9: 3C 2D              cmp         al,2Dh
  00401DFB: 75 0C              jne         00401E09
  00401DFD: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  00401E02: 42                 inc         edx
  00401E03: 8A 02              mov         al,byte ptr [edx]
  00401E05: 3C 0D              cmp         al,0Dh
  00401E07: 74 3D              je          00401E46
  00401E09: 3C 30              cmp         al,30h
  00401E0B: 72 1B              jb          00401E28
  00401E0D: 3C 39              cmp         al,39h
  00401E0F: 77 17              ja          00401E28
  00401E11: 2C 30              sub         al,30h
  00401E13: D0 E3              shl         bl,1
  00401E15: 8A FB              mov         bh,bl
  00401E17: C0 E3 02           shl         bl,2
  00401E1A: 02 DF              add         bl,bh
  00401E1C: 80 FB 80           cmp         bl,80h
  00401E1F: 77 07              ja          00401E28
  00401E21: 02 D8              add         bl,al
  00401E23: 80 FB 80           cmp         bl,80h
  00401E26: 76 DA              jbe         00401E02
  00401E28: 6A 00              push        0
  00401E2A: 68 33 51 40 00     push        405133h
  00401E2F: 6A 0A              push        0Ah
  00401E31: 68 45 52 40 00     push        405245h
  00401E36: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401E3C: E8 C5 03 00 00     call        _WriteConsoleA@20
  00401E41: E9 79 FF FF FF     jmp         00401DBF
  00401E46: 85 C9              test        ecx,ecx
  00401E48: 74 04              je          00401E4E
  00401E4A: F6 DB              neg         bl
  00401E4C: EB 05              jmp         00401E53
  00401E4E: 80 FB 7F           cmp         bl,7Fh
  00401E51: 77 D5              ja          00401E28
  00401E53: 8B C3              mov         eax,ebx
  00401E55: 5A                 pop         edx
  00401E56: 59                 pop         ecx
  00401E57: 5B                 pop         ebx
  00401E58: C3                 ret
_readsiw:
  00401E59: 53                 push        ebx
  00401E5A: 51                 push        ecx
  00401E5B: 52                 push        edx
  00401E5C: 6A F6              push        0F6h
  00401E5E: E8 97 03 00 00     call        _GetStdHandle@4
  00401E63: A3 3A 51 40 00     mov         [0040513A],eax
  00401E68: 6A F5              push        0F5h
  00401E6A: E8 8B 03 00 00     call        _GetStdHandle@4
  00401E6F: A3 30 50 40 00     mov         [00405030],eax
  00401E74: 6A 00              push        0
  00401E76: 68 3E 51 40 00     push        40513Eh
  00401E7B: 68 FF 00 00 00     push        0FFh
  00401E80: 68 42 51 40 00     push        405142h
  00401E85: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401E8B: E8 70 03 00 00     call        _ReadConsoleA@20
  00401E90: A1 3E 51 40 00     mov         eax,[0040513E]
  00401E95: 83 E8 02           sub         eax,2
  00401E98: 74 42              je          00401EDC
  00401E9A: 83 F8 06           cmp         eax,6
  00401E9D: 77 3D              ja          00401EDC
  00401E9F: BA 42 51 40 00     mov         edx,405142h
  00401EA4: 33 DB              xor         ebx,ebx
  00401EA6: 33 C9              xor         ecx,ecx
  00401EA8: 8A 02              mov         al,byte ptr [edx]
  00401EAA: 3C 2B              cmp         al,2Bh
  00401EAC: 74 09              je          00401EB7
  00401EAE: 3C 2D              cmp         al,2Dh
  00401EB0: 75 0C              jne         00401EBE
  00401EB2: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  00401EB7: 42                 inc         edx
  00401EB8: 8A 02              mov         al,byte ptr [edx]
  00401EBA: 3C 0D              cmp         al,0Dh
  00401EBC: 74 3C              je          00401EFA
  00401EBE: 3C 30              cmp         al,30h
  00401EC0: 72 1A              jb          00401EDC
  00401EC2: 3C 39              cmp         al,39h
  00401EC4: 77 16              ja          00401EDC
  00401EC6: 2C 30              sub         al,30h
  00401EC8: 66 6B DB 0A        imul        bx,bx,0Ah
  00401ECC: 72 0E              jb          00401EDC
  00401ECE: 66 0F B6 C0        movzx       ax,al
  00401ED2: 66 03 D8           add         bx,ax
  00401ED5: 66 81 FB 00 80     cmp         bx,8000h
  00401EDA: 76 DB              jbe         00401EB7
  00401EDC: 6A 00              push        0
  00401EDE: 68 33 51 40 00     push        405133h
  00401EE3: 6A 0A              push        0Ah
  00401EE5: 68 45 52 40 00     push        405245h
  00401EEA: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401EF0: E8 11 03 00 00     call        _WriteConsoleA@20
  00401EF5: E9 7A FF FF FF     jmp         00401E74
  00401EFA: 85 C9              test        ecx,ecx
  00401EFC: 74 05              je          00401F03
  00401EFE: 66 F7 DB           neg         bx
  00401F01: EB 07              jmp         00401F0A
  00401F03: 66 81 FB FF 7F     cmp         bx,7FFFh
  00401F08: 77 D2              ja          00401EDC
  00401F0A: 8B C3              mov         eax,ebx
  00401F0C: 5A                 pop         edx
  00401F0D: 59                 pop         ecx
  00401F0E: 5B                 pop         ebx
  00401F0F: C3                 ret
_readsid:
  00401F10: 53                 push        ebx
  00401F11: 51                 push        ecx
  00401F12: 52                 push        edx
  00401F13: 6A F6              push        0F6h
  00401F15: E8 E0 02 00 00     call        _GetStdHandle@4
  00401F1A: A3 3A 51 40 00     mov         [0040513A],eax
  00401F1F: 6A F5              push        0F5h
  00401F21: E8 D4 02 00 00     call        _GetStdHandle@4
  00401F26: A3 30 50 40 00     mov         [00405030],eax
  00401F2B: 6A 00              push        0
  00401F2D: 68 3E 51 40 00     push        40513Eh
  00401F32: 68 FF 00 00 00     push        0FFh
  00401F37: 68 42 51 40 00     push        405142h
  00401F3C: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401F42: E8 B9 02 00 00     call        _ReadConsoleA@20
  00401F47: A1 3E 51 40 00     mov         eax,[0040513E]
  00401F4C: 83 E8 02           sub         eax,2
  00401F4F: 74 40              je          00401F91
  00401F51: 83 F8 0C           cmp         eax,0Ch
  00401F54: 77 3B              ja          00401F91
  00401F56: BA 42 51 40 00     mov         edx,405142h
  00401F5B: 33 DB              xor         ebx,ebx
  00401F5D: 33 C9              xor         ecx,ecx
  00401F5F: 8A 02              mov         al,byte ptr [edx]
  00401F61: 3C 2B              cmp         al,2Bh
  00401F63: 74 09              je          00401F6E
  00401F65: 3C 2D              cmp         al,2Dh
  00401F67: 75 0C              jne         00401F75
  00401F69: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  00401F6E: 42                 inc         edx
  00401F6F: 8A 02              mov         al,byte ptr [edx]
  00401F71: 3C 0D              cmp         al,0Dh
  00401F73: 74 3A              je          00401FAF
  00401F75: 3C 30              cmp         al,30h
  00401F77: 72 18              jb          00401F91
  00401F79: 3C 39              cmp         al,39h
  00401F7B: 77 14              ja          00401F91
  00401F7D: 2C 30              sub         al,30h
  00401F7F: 6B DB 0A           imul        ebx,ebx,0Ah
  00401F82: 72 0D              jb          00401F91
  00401F84: 0F B6 C0           movzx       eax,al
  00401F87: 03 D8              add         ebx,eax
  00401F89: 81 FB 00 00 00 80  cmp         ebx,80000000h
  00401F8F: 76 DD              jbe         00401F6E
  00401F91: 6A 00              push        0
  00401F93: 68 33 51 40 00     push        405133h
  00401F98: 6A 0A              push        0Ah
  00401F9A: 68 45 52 40 00     push        405245h
  00401F9F: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401FA5: E8 5C 02 00 00     call        _WriteConsoleA@20
  00401FAA: E9 7C FF FF FF     jmp         00401F2B
  00401FAF: 85 C9              test        ecx,ecx
  00401FB1: 74 04              je          00401FB7
  00401FB3: F7 DB              neg         ebx
  00401FB5: EB 08              jmp         00401FBF
  00401FB7: 81 FB FF FF FF 7F  cmp         ebx,7FFFFFFFh
  00401FBD: 77 D2              ja          00401F91
  00401FBF: 8B C3              mov         eax,ebx
  00401FC1: 5A                 pop         edx
  00401FC2: 59                 pop         ecx
  00401FC3: 5B                 pop         ebx
  00401FC4: C3                 ret
_dispsib:
  00401FC5: 50                 push        eax
  00401FC6: 53                 push        ebx
  00401FC7: 51                 push        ecx
  00401FC8: 52                 push        edx
  00401FC9: 33 DB              xor         ebx,ebx
  00401FCB: 84 C0              test        al,al
  00401FCD: 75 0A              jne         00401FD9
  00401FCF: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  00401FD6: 43                 inc         ebx
  00401FD7: EB 30              jmp         00402009
  00401FD9: 79 0A              jns         00401FE5
  00401FDB: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],2Dh
            2D
  00401FE2: 43                 inc         ebx
  00401FE3: F6 D8              neg         al
  00401FE5: B9 0A 00 00 00     mov         ecx,0Ah
  00401FEA: 51                 push        ecx
  00401FEB: 3C 00              cmp         al,0
  00401FED: 74 0C              je          00401FFB
  00401FEF: 32 E4              xor         ah,ah
  00401FF1: F6 F1              div         al,cl
  00401FF3: 80 C4 30           add         ah,30h
  00401FF6: 8A D4              mov         dl,ah
  00401FF8: 52                 push        edx
  00401FF9: EB F0              jmp         00401FEB
  00401FFB: 5A                 pop         edx
  00401FFC: 3B D1              cmp         edx,ecx
  00401FFE: 74 09              je          00402009
  00402000: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  00402006: 43                 inc         ebx
  00402007: EB F2              jmp         00401FFB
  00402009: 6A F5              push        0F5h
  0040200B: E8 EA 01 00 00     call        _GetStdHandle@4
  00402010: 6A 00              push        0
  00402012: 68 33 51 40 00     push        405133h
  00402017: 53                 push        ebx
  00402018: 68 34 50 40 00     push        405034h
  0040201D: 50                 push        eax
  0040201E: E8 E3 01 00 00     call        _WriteConsoleA@20
  00402023: 5A                 pop         edx
  00402024: 59                 pop         ecx
  00402025: 5B                 pop         ebx
  00402026: 58                 pop         eax
  00402027: C3                 ret
_dispsiw:
  00402028: 50                 push        eax
  00402029: 53                 push        ebx
  0040202A: 51                 push        ecx
  0040202B: 52                 push        edx
  0040202C: 33 DB              xor         ebx,ebx
  0040202E: 66 85 C0           test        ax,ax
  00402031: 75 0A              jne         0040203D
  00402033: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  0040203A: 43                 inc         ebx
  0040203B: EB 34              jmp         00402071
  0040203D: 79 0B              jns         0040204A
  0040203F: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],2Dh
            2D
  00402046: 43                 inc         ebx
  00402047: 66 F7 D8           neg         ax
  0040204A: B9 0A 00 00 00     mov         ecx,0Ah
  0040204F: 51                 push        ecx
  00402050: 66 83 F8 00        cmp         ax,0
  00402054: 74 0D              je          00402063
  00402056: 66 33 D2           xor         dx,dx
  00402059: 66 F7 F1           div         ax,cx
  0040205C: 66 83 C2 30        add         dx,30h
  00402060: 52                 push        edx
  00402061: EB ED              jmp         00402050
  00402063: 5A                 pop         edx
  00402064: 3B D1              cmp         edx,ecx
  00402066: 74 09              je          00402071
  00402068: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  0040206E: 43                 inc         ebx
  0040206F: EB F2              jmp         00402063
  00402071: 6A F5              push        0F5h
  00402073: E8 82 01 00 00     call        _GetStdHandle@4
  00402078: 6A 00              push        0
  0040207A: 68 33 51 40 00     push        405133h
  0040207F: 53                 push        ebx
  00402080: 68 34 50 40 00     push        405034h
  00402085: 50                 push        eax
  00402086: E8 7B 01 00 00     call        _WriteConsoleA@20
  0040208B: 5A                 pop         edx
  0040208C: 59                 pop         ecx
  0040208D: 5B                 pop         ebx
  0040208E: 58                 pop         eax
  0040208F: C3                 ret
_dispsid:
  00402090: 50                 push        eax
  00402091: 53                 push        ebx
  00402092: 51                 push        ecx
  00402093: 52                 push        edx
  00402094: 33 DB              xor         ebx,ebx
  00402096: 85 C0              test        eax,eax
  00402098: 75 0A              jne         004020A4
  0040209A: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  004020A1: 43                 inc         ebx
  004020A2: EB 2F              jmp         004020D3
  004020A4: 79 0A              jns         004020B0
  004020A6: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],2Dh
            2D
  004020AD: 43                 inc         ebx
  004020AE: F7 D8              neg         eax
  004020B0: B9 0A 00 00 00     mov         ecx,0Ah
  004020B5: 51                 push        ecx
  004020B6: 83 F8 00           cmp         eax,0
  004020B9: 74 0A              je          004020C5
  004020BB: 33 D2              xor         edx,edx
  004020BD: F7 F1              div         eax,ecx
  004020BF: 83 C2 30           add         edx,30h
  004020C2: 52                 push        edx
  004020C3: EB F1              jmp         004020B6
  004020C5: 5A                 pop         edx
  004020C6: 3B D1              cmp         edx,ecx
  004020C8: 74 09              je          004020D3
  004020CA: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  004020D0: 43                 inc         ebx
  004020D1: EB F2              jmp         004020C5
  004020D3: 6A F5              push        0F5h
  004020D5: E8 20 01 00 00     call        _GetStdHandle@4
  004020DA: 6A 00              push        0
  004020DC: 68 33 51 40 00     push        405133h
  004020E1: 53                 push        ebx
  004020E2: 68 34 50 40 00     push        405034h
  004020E7: 50                 push        eax
  004020E8: E8 19 01 00 00     call        _WriteConsoleA@20
  004020ED: 5A                 pop         edx
  004020EE: 59                 pop         ecx
  004020EF: 5B                 pop         ebx
  004020F0: 58                 pop         eax
  004020F1: C3                 ret
_dispuib:
  004020F2: 50                 push        eax
  004020F3: 53                 push        ebx
  004020F4: 51                 push        ecx
  004020F5: 52                 push        edx
  004020F6: 33 DB              xor         ebx,ebx
  004020F8: 84 C0              test        al,al
  004020FA: 75 0A              jne         00402106
  004020FC: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  00402103: 43                 inc         ebx
  00402104: EB 24              jmp         0040212A
  00402106: B9 0A 00 00 00     mov         ecx,0Ah
  0040210B: 51                 push        ecx
  0040210C: 3C 00              cmp         al,0
  0040210E: 74 0C              je          0040211C
  00402110: 32 E4              xor         ah,ah
  00402112: F6 F1              div         al,cl
  00402114: 80 C4 30           add         ah,30h
  00402117: 8A D4              mov         dl,ah
  00402119: 52                 push        edx
  0040211A: EB F0              jmp         0040210C
  0040211C: 5A                 pop         edx
  0040211D: 3B D1              cmp         edx,ecx
  0040211F: 74 09              je          0040212A
  00402121: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  00402127: 43                 inc         ebx
  00402128: EB F2              jmp         0040211C
  0040212A: 6A F5              push        0F5h
  0040212C: E8 C9 00 00 00     call        _GetStdHandle@4
  00402131: 6A 00              push        0
  00402133: 68 33 51 40 00     push        405133h
  00402138: 53                 push        ebx
  00402139: 68 34 50 40 00     push        405034h
  0040213E: 50                 push        eax
  0040213F: E8 C2 00 00 00     call        _WriteConsoleA@20
  00402144: 5A                 pop         edx
  00402145: 59                 pop         ecx
  00402146: 5B                 pop         ebx
  00402147: 58                 pop         eax
  00402148: C3                 ret
_dispuiw:
  00402149: 50                 push        eax
  0040214A: 53                 push        ebx
  0040214B: 51                 push        ecx
  0040214C: 52                 push        edx
  0040214D: 33 DB              xor         ebx,ebx
  0040214F: 66 85 C0           test        ax,ax
  00402152: 75 0A              jne         0040215E
  00402154: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  0040215B: 43                 inc         ebx
  0040215C: EB 27              jmp         00402185
  0040215E: B9 0A 00 00 00     mov         ecx,0Ah
  00402163: 51                 push        ecx
  00402164: 66 83 F8 00        cmp         ax,0
  00402168: 74 0D              je          00402177
  0040216A: 66 33 D2           xor         dx,dx
  0040216D: 66 F7 F1           div         ax,cx
  00402170: 66 83 C2 30        add         dx,30h
  00402174: 52                 push        edx
  00402175: EB ED              jmp         00402164
  00402177: 5A                 pop         edx
  00402178: 3B D1              cmp         edx,ecx
  0040217A: 74 09              je          00402185
  0040217C: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  00402182: 43                 inc         ebx
  00402183: EB F2              jmp         00402177
  00402185: 6A F5              push        0F5h
  00402187: E8 6E 00 00 00     call        _GetStdHandle@4
  0040218C: 6A 00              push        0
  0040218E: 68 33 51 40 00     push        405133h
  00402193: 53                 push        ebx
  00402194: 68 34 50 40 00     push        405034h
  00402199: 50                 push        eax
  0040219A: E8 67 00 00 00     call        _WriteConsoleA@20
  0040219F: 5A                 pop         edx
  004021A0: 59                 pop         ecx
  004021A1: 5B                 pop         ebx
  004021A2: 58                 pop         eax
  004021A3: C3                 ret
_dispuid:
  004021A4: 50                 push        eax
  004021A5: 53                 push        ebx
  004021A6: 51                 push        ecx
  004021A7: 52                 push        edx
  004021A8: 33 DB              xor         ebx,ebx
  004021AA: 85 C0              test        eax,eax
  004021AC: 75 0A              jne         004021B8
  004021AE: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  004021B5: 43                 inc         ebx
  004021B6: EB 23              jmp         004021DB
  004021B8: B9 0A 00 00 00     mov         ecx,0Ah
  004021BD: 51                 push        ecx
  004021BE: 83 F8 00           cmp         eax,0
  004021C1: 74 0A              je          004021CD
  004021C3: 33 D2              xor         edx,edx
  004021C5: F7 F1              div         eax,ecx
  004021C7: 83 C2 30           add         edx,30h
  004021CA: 52                 push        edx
  004021CB: EB F1              jmp         004021BE
  004021CD: 5A                 pop         edx
  004021CE: 3B D1              cmp         edx,ecx
  004021D0: 74 09              je          004021DB
  004021D2: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  004021D8: 43                 inc         ebx
  004021D9: EB F2              jmp         004021CD
  004021DB: 6A F5              push        0F5h
  004021DD: E8 18 00 00 00     call        _GetStdHandle@4
  004021E2: 6A 00              push        0
  004021E4: 68 33 51 40 00     push        405133h
  004021E9: 53                 push        ebx
  004021EA: 68 34 50 40 00     push        405034h
  004021EF: 50                 push        eax
  004021F0: E8 11 00 00 00     call        _WriteConsoleA@20
  004021F5: 5A                 pop         edx
  004021F6: 59                 pop         ecx
  004021F7: 5B                 pop         ebx
  004021F8: 58                 pop         eax
  004021F9: C3                 ret
_GetStdHandle@4:
  004021FA: FF 25 70 60 40 00  jmp         dword ptr [__imp__GetStdHandle@4]
_ReadConsoleA@20:
  00402200: FF 25 74 60 40 00  jmp         dword ptr [__imp__ReadConsoleA@20]
_WriteConsoleA@20:
  00402206: FF 25 78 60 40 00  jmp         dword ptr [__imp__WriteConsoleA@20]
_GetConsoleMode@8:
  0040220C: FF 25 7C 60 40 00  jmp         dword ptr [__imp__GetConsoleMode@8]
_SetConsoleMode@8:
  00402212: FF 25 80 60 40 00  jmp         dword ptr [__imp__SetConsoleMode@8]
  00402218: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402228: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402238: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402248: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402258: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402268: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402278: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402288: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402298: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004022A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004022B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004022C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004022D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004022E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004022F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402308: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402318: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402328: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402338: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402348: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402358: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402368: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402378: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402388: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402398: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004023A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004023B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004023C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004023D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004023E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004023F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402408: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402418: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402428: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402438: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402448: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402458: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402468: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402478: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402488: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402498: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004024A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004024B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004024C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004024D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004024E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004024F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402508: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402518: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402528: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402538: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402548: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402558: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402568: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402578: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402588: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402598: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004025A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004025B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004025C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004025D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004025E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004025F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402608: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402618: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402628: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402638: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402648: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402658: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402668: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402678: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402688: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402698: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004026A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004026B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004026C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004026D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004026E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004026F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402708: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402718: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402728: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402738: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402748: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402758: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402768: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402778: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402788: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402798: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004027A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004027B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004027C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004027D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004027E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004027F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402808: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402818: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402828: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402838: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402848: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402858: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402868: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402878: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402888: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402898: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004028A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004028B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004028C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004028D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004028E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004028F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402908: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402918: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402928: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402938: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402948: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402958: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402968: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402978: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402988: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402998: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004029A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004029B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004029C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004029D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004029E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004029F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A08: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A18: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A28: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A38: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A48: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A58: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A68: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A78: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A88: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402A98: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402AA8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402AB8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402AC8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402AD8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402AE8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402AF8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B08: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B18: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B28: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B38: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B48: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B58: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B68: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B78: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B88: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402B98: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402BA8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402BB8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402BC8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402BD8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402BE8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402BF8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C08: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C18: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C28: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C38: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C48: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C58: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C68: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C78: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C88: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402C98: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402CA8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402CB8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402CC8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402CD8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402CE8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402CF8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D08: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D18: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D28: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D38: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D48: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D58: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D68: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D78: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D88: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402D98: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402DA8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402DB8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402DC8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402DD8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402DE8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402DF8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E08: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E18: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E28: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E38: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E48: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E58: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E68: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E78: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E88: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402E98: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402EA8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402EB8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402EC8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402ED8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402EE8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402EF8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F08: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F18: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F28: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F38: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F48: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F58: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F68: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F78: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F88: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402F98: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402FA8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402FB8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402FC8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402FD8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402FE8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00402FF8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403008: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403018: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403028: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403038: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403048: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403058: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403068: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403078: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403088: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403098: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004030A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004030B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004030C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004030D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004030E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004030F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403108: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403118: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403128: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403138: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403148: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403158: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403168: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403178: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403188: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403198: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004031A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004031B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004031C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004031D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004031E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004031F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403208: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403218: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403228: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403238: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403248: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403258: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403268: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403278: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403288: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403298: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004032A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004032B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004032C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004032D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004032E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004032F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403308: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403318: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403328: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403338: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403348: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403358: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403368: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403378: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403388: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403398: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004033A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004033B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004033C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004033D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004033E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004033F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403408: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403418: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403428: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403438: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403448: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403458: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403468: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403478: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403488: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403498: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004034A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004034B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004034C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004034D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004034E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004034F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403508: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403518: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403528: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403538: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403548: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403558: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403568: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403578: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403588: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403598: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004035A8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004035B8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004035C8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004035D8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004035E8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  004035F8: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403608: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403618: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403628: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403638: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403648: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403658: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403668: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
  00403678: CC CC CC CC CC CC CC CC CC 00 00 00 00 00 00 00  ................

  Summary

        1000 .data
        1000 .idata
        1000 .rdata
        1000 .reloc
        3000 .text
