
Dump of file eg0606.exe

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
  0040101F: E8 5C 10 00 00     call        _dispsid
  00401024: 6A 00              push        0
  00401026: E8 31 00 00 00     call        _ExitProcess@4
_mean:
  0040102B: 55                 push        ebp
  0040102C: 8B EC              mov         ebp,esp
  0040102E: 53                 push        ebx
  0040102F: 51                 push        ecx
  00401030: 52                 push        edx
  00401031: 8B 5D 08           mov         ebx,dword ptr [ebp+8]
  00401034: 8B 4D 0C           mov         ecx,dword ptr [ebp+0Ch]
  00401037: 33 C0              xor         eax,eax
  00401039: 33 D2              xor         edx,edx
  0040103B: 03 04 93           add         eax,dword ptr [ebx+edx*4]
  0040103E: 83 C2 01           add         edx,1
  00401041: 3B D1              cmp         edx,ecx
  00401043: 72 F6              jb          0040103B
  00401045: 99                 cdq
  00401046: F7 F9              idiv        eax,ecx
  00401048: 5A                 pop         edx
  00401049: 59                 pop         ecx
  0040104A: 5B                 pop         ebx
  0040104B: C9                 leave
  0040104C: C3                 ret
  0040104D: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC     ...............
_ExitProcess@4:
  0040105C: FF 25 84 60 40 00  jmp         dword ptr [__imp__ExitProcess@4]
  00401062: CC CC CC CC CC CC CC CC CC CC CC CC CC CC        ..............
_dispmsg:
  00401070: 50                 push        eax
  00401071: 53                 push        ebx
  00401072: 51                 push        ecx
  00401073: 52                 push        edx
  00401074: 50                 push        eax
  00401075: 6A F5              push        0F5h
  00401077: E8 6E 11 00 00     call        _GetStdHandle@4
  0040107C: A3 30 50 40 00     mov         [00405030],eax
  00401081: 5B                 pop         ebx
  00401082: 33 C9              xor         ecx,ecx
  00401084: 8A 04 19           mov         al,byte ptr [ecx+ebx]
  00401087: 84 C0              test        al,al
  00401089: 74 03              je          0040108E
  0040108B: 41                 inc         ecx
  0040108C: EB F6              jmp         00401084
  0040108E: 6A 00              push        0
  00401090: 68 33 51 40 00     push        405133h
  00401095: 51                 push        ecx
  00401096: 53                 push        ebx
  00401097: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  0040109D: E8 54 11 00 00     call        _WriteConsoleA@20
  004010A2: 5A                 pop         edx
  004010A3: 59                 pop         ecx
  004010A4: 5B                 pop         ebx
  004010A5: 58                 pop         eax
  004010A6: C3                 ret
_dispc:
  004010A7: 60                 pushad
  004010A8: A2 37 51 40 00     mov         [00405137],al
  004010AD: 6A F5              push        0F5h
  004010AF: E8 36 11 00 00     call        _GetStdHandle@4
  004010B4: 6A 00              push        0
  004010B6: 68 33 51 40 00     push        405133h
  004010BB: 6A 01              push        1
  004010BD: 68 37 51 40 00     push        405137h
  004010C2: 50                 push        eax
  004010C3: E8 2E 11 00 00     call        _WriteConsoleA@20
  004010C8: 61                 popad
  004010C9: C3                 ret
_dispcrlf:
  004010CA: 60                 pushad
  004010CB: 6A F5              push        0F5h
  004010CD: E8 18 11 00 00     call        _GetStdHandle@4
  004010D2: 6A 00              push        0
  004010D4: 68 33 51 40 00     push        405133h
  004010D9: 6A 02              push        2
  004010DB: 68 38 51 40 00     push        405138h
  004010E0: 50                 push        eax
  004010E1: E8 10 11 00 00     call        _WriteConsoleA@20
  004010E6: 61                 popad
  004010E7: C3                 ret
_readmsg:
  004010E8: 53                 push        ebx
  004010E9: 51                 push        ecx
  004010EA: 52                 push        edx
  004010EB: 50                 push        eax
  004010EC: 6A F6              push        0F6h
  004010EE: E8 F7 10 00 00     call        _GetStdHandle@4
  004010F3: A3 3A 51 40 00     mov         [0040513A],eax
  004010F8: 6A 00              push        0
  004010FA: 68 3E 51 40 00     push        40513Eh
  004010FF: 68 FF 00 00 00     push        0FFh
  00401104: 68 42 51 40 00     push        405142h
  00401109: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040110F: E8 DC 10 00 00     call        _ReadConsoleA@20
  00401114: 83 2D 3E 51 40 00  sub         dword ptr ds:[40513Eh],2
            02
  0040111B: 72 DB              jb          004010F8
  0040111D: 33 C9              xor         ecx,ecx
  0040111F: 5B                 pop         ebx
  00401120: 8A 81 42 51 40 00  mov         al,byte ptr [ecx+405142h]
  00401126: 88 04 19           mov         byte ptr [ecx+ebx],al
  00401129: 41                 inc         ecx
  0040112A: 3B 0D 3E 51 40 00  cmp         ecx,dword ptr ds:[40513Eh]
  00401130: 72 EE              jb          00401120
  00401132: C6 04 19 00        mov         byte ptr [ecx+ebx],0
  00401136: 8B C1              mov         eax,ecx
  00401138: 5A                 pop         edx
  00401139: 59                 pop         ecx
  0040113A: 5B                 pop         ebx
  0040113B: C3                 ret
_readc:
  0040113C: 53                 push        ebx
  0040113D: 51                 push        ecx
  0040113E: 52                 push        edx
  0040113F: 6A F6              push        0F6h
  00401141: E8 A4 10 00 00     call        _GetStdHandle@4
  00401146: A3 3A 51 40 00     mov         [0040513A],eax
  0040114B: 68 41 52 40 00     push        405241h
  00401150: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401156: E8 A1 10 00 00     call        _GetConsoleMode@8
  0040115B: 6A 00              push        0
  0040115D: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401163: E8 9A 10 00 00     call        _SetConsoleMode@8
  00401168: 6A 00              push        0
  0040116A: 68 3E 51 40 00     push        40513Eh
  0040116F: 6A 01              push        1
  00401171: 68 42 51 40 00     push        405142h
  00401176: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040117C: E8 6F 10 00 00     call        _ReadConsoleA@20
  00401181: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401187: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040118D: E8 70 10 00 00     call        _SetConsoleMode@8
  00401192: 6A F5              push        0F5h
  00401194: E8 51 10 00 00     call        _GetStdHandle@4
  00401199: 6A 00              push        0
  0040119B: 68 33 51 40 00     push        405133h
  004011A0: 6A 01              push        1
  004011A2: 68 42 51 40 00     push        405142h
  004011A7: 50                 push        eax
  004011A8: E8 49 10 00 00     call        _WriteConsoleA@20
  004011AD: A0 42 51 40 00     mov         al,[00405142]
  004011B2: 5A                 pop         edx
  004011B3: 59                 pop         ecx
  004011B4: 5B                 pop         ebx
  004011B5: C3                 ret
_dispbb:
  004011B6: 50                 push        eax
  004011B7: 53                 push        ebx
  004011B8: 51                 push        ecx
  004011B9: 52                 push        edx
  004011BA: B9 07 00 00 00     mov         ecx,7
  004011BF: 33 DB              xor         ebx,ebx
  004011C1: D1 C8              ror         eax,1
  004011C3: 83 D3 30           adc         ebx,30h
  004011C6: 88 99 34 50 40 00  mov         byte ptr [ecx+405034h],bl
  004011CC: 83 E9 01           sub         ecx,1
  004011CF: 73 EE              jae         004011BF
  004011D1: 6A F5              push        0F5h
  004011D3: E8 12 10 00 00     call        _GetStdHandle@4
  004011D8: 6A 00              push        0
  004011DA: 68 33 51 40 00     push        405133h
  004011DF: 6A 08              push        8
  004011E1: 68 34 50 40 00     push        405034h
  004011E6: 50                 push        eax
  004011E7: E8 0A 10 00 00     call        _WriteConsoleA@20
  004011EC: 5A                 pop         edx
  004011ED: 59                 pop         ecx
  004011EE: 5B                 pop         ebx
  004011EF: 58                 pop         eax
  004011F0: C3                 ret
_dispbw:
  004011F1: 50                 push        eax
  004011F2: 53                 push        ebx
  004011F3: 51                 push        ecx
  004011F4: 52                 push        edx
  004011F5: B9 0F 00 00 00     mov         ecx,0Fh
  004011FA: 33 DB              xor         ebx,ebx
  004011FC: D1 C8              ror         eax,1
  004011FE: 83 D3 30           adc         ebx,30h
  00401201: 88 99 34 50 40 00  mov         byte ptr [ecx+405034h],bl
  00401207: 83 E9 01           sub         ecx,1
  0040120A: 73 EE              jae         004011FA
  0040120C: 6A F5              push        0F5h
  0040120E: E8 D7 0F 00 00     call        _GetStdHandle@4
  00401213: 6A 00              push        0
  00401215: 68 33 51 40 00     push        405133h
  0040121A: 6A 10              push        10h
  0040121C: 68 34 50 40 00     push        405034h
  00401221: 50                 push        eax
  00401222: E8 CF 0F 00 00     call        _WriteConsoleA@20
  00401227: 5A                 pop         edx
  00401228: 59                 pop         ecx
  00401229: 5B                 pop         ebx
  0040122A: 58                 pop         eax
  0040122B: C3                 ret
_dispbd:
  0040122C: 50                 push        eax
  0040122D: 53                 push        ebx
  0040122E: 51                 push        ecx
  0040122F: 52                 push        edx
  00401230: B9 1F 00 00 00     mov         ecx,1Fh
  00401235: 33 DB              xor         ebx,ebx
  00401237: D1 C8              ror         eax,1
  00401239: 83 D3 30           adc         ebx,30h
  0040123C: 88 99 34 50 40 00  mov         byte ptr [ecx+405034h],bl
  00401242: 83 E9 01           sub         ecx,1
  00401245: 73 EE              jae         00401235
  00401247: 6A F5              push        0F5h
  00401249: E8 9C 0F 00 00     call        _GetStdHandle@4
  0040124E: 6A 00              push        0
  00401250: 68 33 51 40 00     push        405133h
  00401255: 6A 20              push        20h
  00401257: 68 34 50 40 00     push        405034h
  0040125C: 50                 push        eax
  0040125D: E8 94 0F 00 00     call        _WriteConsoleA@20
  00401262: 5A                 pop         edx
  00401263: 59                 pop         ecx
  00401264: 5B                 pop         ebx
  00401265: 58                 pop         eax
  00401266: C3                 ret
_readbb:
  00401267: 53                 push        ebx
  00401268: 51                 push        ecx
  00401269: 52                 push        edx
  0040126A: 6A F6              push        0F6h
  0040126C: E8 79 0F 00 00     call        _GetStdHandle@4
  00401271: A3 3A 51 40 00     mov         [0040513A],eax
  00401276: 6A F5              push        0F5h
  00401278: E8 6D 0F 00 00     call        _GetStdHandle@4
  0040127D: A3 30 50 40 00     mov         [00405030],eax
  00401282: 68 41 52 40 00     push        405241h
  00401287: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040128D: E8 6A 0F 00 00     call        _GetConsoleMode@8
  00401292: 6A 00              push        0
  00401294: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040129A: E8 63 0F 00 00     call        _SetConsoleMode@8
  0040129F: 33 DB              xor         ebx,ebx
  004012A1: B9 08 00 00 00     mov         ecx,8
  004012A6: 53                 push        ebx
  004012A7: 51                 push        ecx
  004012A8: 6A 00              push        0
  004012AA: 68 3E 51 40 00     push        40513Eh
  004012AF: 6A 01              push        1
  004012B1: 68 42 51 40 00     push        405142h
  004012B6: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004012BC: E8 2F 0F 00 00     call        _ReadConsoleA@20
  004012C1: A0 42 51 40 00     mov         al,[00405142]
  004012C6: 3C 30              cmp         al,30h
  004012C8: 72 DE              jb          004012A8
  004012CA: 3C 31              cmp         al,31h
  004012CC: 77 DA              ja          004012A8
  004012CE: 6A 00              push        0
  004012D0: 68 33 51 40 00     push        405133h
  004012D5: 6A 01              push        1
  004012D7: 68 42 51 40 00     push        405142h
  004012DC: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  004012E2: E8 0F 0F 00 00     call        _WriteConsoleA@20
  004012E7: 59                 pop         ecx
  004012E8: 5B                 pop         ebx
  004012E9: A0 42 51 40 00     mov         al,[00405142]
  004012EE: 2C 30              sub         al,30h
  004012F0: D1 E3              shl         ebx,1
  004012F2: 0A D8              or          bl,al
  004012F4: E2 B0              loop        004012A6
  004012F6: 53                 push        ebx
  004012F7: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  004012FD: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401303: E8 FA 0E 00 00     call        _SetConsoleMode@8
  00401308: 58                 pop         eax
  00401309: 5A                 pop         edx
  0040130A: 59                 pop         ecx
  0040130B: 5B                 pop         ebx
  0040130C: C3                 ret
_readbw:
  0040130D: 53                 push        ebx
  0040130E: 51                 push        ecx
  0040130F: 52                 push        edx
  00401310: 6A F6              push        0F6h
  00401312: E8 D3 0E 00 00     call        _GetStdHandle@4
  00401317: A3 3A 51 40 00     mov         [0040513A],eax
  0040131C: 6A F5              push        0F5h
  0040131E: E8 C7 0E 00 00     call        _GetStdHandle@4
  00401323: A3 30 50 40 00     mov         [00405030],eax
  00401328: 68 41 52 40 00     push        405241h
  0040132D: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401333: E8 C4 0E 00 00     call        _GetConsoleMode@8
  00401338: 6A 00              push        0
  0040133A: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401340: E8 BD 0E 00 00     call        _SetConsoleMode@8
  00401345: 33 DB              xor         ebx,ebx
  00401347: B9 10 00 00 00     mov         ecx,10h
  0040134C: 53                 push        ebx
  0040134D: 51                 push        ecx
  0040134E: 6A 00              push        0
  00401350: 68 3E 51 40 00     push        40513Eh
  00401355: 6A 01              push        1
  00401357: 68 42 51 40 00     push        405142h
  0040135C: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401362: E8 89 0E 00 00     call        _ReadConsoleA@20
  00401367: A0 42 51 40 00     mov         al,[00405142]
  0040136C: 3C 30              cmp         al,30h
  0040136E: 72 DE              jb          0040134E
  00401370: 3C 31              cmp         al,31h
  00401372: 77 DA              ja          0040134E
  00401374: 6A 00              push        0
  00401376: 68 33 51 40 00     push        405133h
  0040137B: 6A 01              push        1
  0040137D: 68 42 51 40 00     push        405142h
  00401382: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401388: E8 69 0E 00 00     call        _WriteConsoleA@20
  0040138D: 59                 pop         ecx
  0040138E: 5B                 pop         ebx
  0040138F: A0 42 51 40 00     mov         al,[00405142]
  00401394: 2C 30              sub         al,30h
  00401396: D1 E3              shl         ebx,1
  00401398: 0A D8              or          bl,al
  0040139A: E2 B0              loop        0040134C
  0040139C: 53                 push        ebx
  0040139D: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  004013A3: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004013A9: E8 54 0E 00 00     call        _SetConsoleMode@8
  004013AE: 58                 pop         eax
  004013AF: 5A                 pop         edx
  004013B0: 59                 pop         ecx
  004013B1: 5B                 pop         ebx
  004013B2: C3                 ret
_readbd:
  004013B3: 53                 push        ebx
  004013B4: 51                 push        ecx
  004013B5: 52                 push        edx
  004013B6: 6A F6              push        0F6h
  004013B8: E8 2D 0E 00 00     call        _GetStdHandle@4
  004013BD: A3 3A 51 40 00     mov         [0040513A],eax
  004013C2: 6A F5              push        0F5h
  004013C4: E8 21 0E 00 00     call        _GetStdHandle@4
  004013C9: A3 30 50 40 00     mov         [00405030],eax
  004013CE: 68 41 52 40 00     push        405241h
  004013D3: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004013D9: E8 1E 0E 00 00     call        _GetConsoleMode@8
  004013DE: 6A 00              push        0
  004013E0: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004013E6: E8 17 0E 00 00     call        _SetConsoleMode@8
  004013EB: 33 DB              xor         ebx,ebx
  004013ED: B9 20 00 00 00     mov         ecx,20h
  004013F2: 53                 push        ebx
  004013F3: 51                 push        ecx
  004013F4: 6A 00              push        0
  004013F6: 68 3E 51 40 00     push        40513Eh
  004013FB: 6A 01              push        1
  004013FD: 68 42 51 40 00     push        405142h
  00401402: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401408: E8 E3 0D 00 00     call        _ReadConsoleA@20
  0040140D: A0 42 51 40 00     mov         al,[00405142]
  00401412: 3C 30              cmp         al,30h
  00401414: 72 DE              jb          004013F4
  00401416: 3C 31              cmp         al,31h
  00401418: 77 DA              ja          004013F4
  0040141A: 6A 00              push        0
  0040141C: 68 33 51 40 00     push        405133h
  00401421: 6A 01              push        1
  00401423: 68 42 51 40 00     push        405142h
  00401428: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  0040142E: E8 C3 0D 00 00     call        _WriteConsoleA@20
  00401433: 59                 pop         ecx
  00401434: 5B                 pop         ebx
  00401435: A0 42 51 40 00     mov         al,[00405142]
  0040143A: 2C 30              sub         al,30h
  0040143C: D1 E3              shl         ebx,1
  0040143E: 0A D8              or          bl,al
  00401440: E2 B0              loop        004013F2
  00401442: 53                 push        ebx
  00401443: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401449: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  0040144F: E8 AE 0D 00 00     call        _SetConsoleMode@8
  00401454: 58                 pop         eax
  00401455: 5A                 pop         edx
  00401456: 59                 pop         ecx
  00401457: 5B                 pop         ebx
  00401458: C3                 ret
_disphb:
  00401459: 60                 pushad
  0040145A: 8A D8              mov         bl,al
  0040145C: 80 E3 0F           and         bl,0Fh
  0040145F: 80 C3 30           add         bl,30h
  00401462: 80 FB 39           cmp         bl,39h
  00401465: 76 03              jbe         0040146A
  00401467: 80 C3 07           add         bl,7
  0040146A: 88 1D 35 50 40 00  mov         byte ptr ds:[405035h],bl
  00401470: C0 E8 04           shr         al,4
  00401473: 24 0F              and         al,0Fh
  00401475: 04 30              add         al,30h
  00401477: 3C 39              cmp         al,39h
  00401479: 76 02              jbe         0040147D
  0040147B: 04 07              add         al,7
  0040147D: A2 34 50 40 00     mov         [00405034],al
  00401482: 6A F5              push        0F5h
  00401484: E8 61 0D 00 00     call        _GetStdHandle@4
  00401489: 6A 00              push        0
  0040148B: 68 33 51 40 00     push        405133h
  00401490: 6A 02              push        2
  00401492: 68 34 50 40 00     push        405034h
  00401497: 50                 push        eax
  00401498: E8 59 0D 00 00     call        _WriteConsoleA@20
  0040149D: 61                 popad
  0040149E: C3                 ret
_disphw:
  0040149F: 50                 push        eax
  004014A0: 53                 push        ebx
  004014A1: 51                 push        ecx
  004014A2: 52                 push        edx
  004014A3: B9 04 00 00 00     mov         ecx,4
  004014A8: 33 DB              xor         ebx,ebx
  004014AA: C1 C0 10           rol         eax,10h
  004014AD: C1 C0 04           rol         eax,4
  004014B0: 8B D0              mov         edx,eax
  004014B2: 83 E2 0F           and         edx,0Fh
  004014B5: 80 C2 30           add         dl,30h
  004014B8: 80 FA 39           cmp         dl,39h
  004014BB: 76 03              jbe         004014C0
  004014BD: 80 C2 07           add         dl,7
  004014C0: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  004014C6: 43                 inc         ebx
  004014C7: 3B D9              cmp         ebx,ecx
  004014C9: 72 E2              jb          004014AD
  004014CB: 6A F5              push        0F5h
  004014CD: E8 18 0D 00 00     call        _GetStdHandle@4
  004014D2: 6A 00              push        0
  004014D4: 68 33 51 40 00     push        405133h
  004014D9: 6A 04              push        4
  004014DB: 68 34 50 40 00     push        405034h
  004014E0: 50                 push        eax
  004014E1: E8 10 0D 00 00     call        _WriteConsoleA@20
  004014E6: 5A                 pop         edx
  004014E7: 59                 pop         ecx
  004014E8: 5B                 pop         ebx
  004014E9: 58                 pop         eax
  004014EA: C3                 ret
_disphd:
  004014EB: 50                 push        eax
  004014EC: 53                 push        ebx
  004014ED: 51                 push        ecx
  004014EE: 52                 push        edx
  004014EF: B9 08 00 00 00     mov         ecx,8
  004014F4: 33 DB              xor         ebx,ebx
  004014F6: C1 C0 04           rol         eax,4
  004014F9: 8B D0              mov         edx,eax
  004014FB: 83 E2 0F           and         edx,0Fh
  004014FE: 80 C2 30           add         dl,30h
  00401501: 80 FA 39           cmp         dl,39h
  00401504: 76 03              jbe         00401509
  00401506: 80 C2 07           add         dl,7
  00401509: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  0040150F: 43                 inc         ebx
  00401510: 3B D9              cmp         ebx,ecx
  00401512: 72 E2              jb          004014F6
  00401514: 6A F5              push        0F5h
  00401516: E8 CF 0C 00 00     call        _GetStdHandle@4
  0040151B: 6A 00              push        0
  0040151D: 68 33 51 40 00     push        405133h
  00401522: 6A 08              push        8
  00401524: 68 34 50 40 00     push        405034h
  00401529: 50                 push        eax
  0040152A: E8 C7 0C 00 00     call        _WriteConsoleA@20
  0040152F: 5A                 pop         edx
  00401530: 59                 pop         ecx
  00401531: 5B                 pop         ebx
  00401532: 58                 pop         eax
  00401533: C3                 ret
_disprb:
  00401534: 60                 pushad
  00401535: 52                 push        edx
  00401536: 8A D0              mov         dl,al
  00401538: 80 E2 0F           and         dl,0Fh
  0040153B: 80 C2 30           add         dl,30h
  0040153E: 80 FA 39           cmp         dl,39h
  00401541: 76 03              jbe         00401546
  00401543: 80 C2 07           add         dl,7
  00401546: 88 15 0B 53 40 00  mov         byte ptr ds:[40530Bh],dl
  0040154C: C0 E8 04           shr         al,4
  0040154F: 04 30              add         al,30h
  00401551: 3C 39              cmp         al,39h
  00401553: 76 02              jbe         00401557
  00401555: 04 07              add         al,7
  00401557: A2 0A 53 40 00     mov         [0040530A],al
  0040155C: 8A D4              mov         dl,ah
  0040155E: 80 E2 0F           and         dl,0Fh
  00401561: 80 C2 30           add         dl,30h
  00401564: 80 FA 39           cmp         dl,39h
  00401567: 76 03              jbe         0040156C
  00401569: 80 C2 07           add         dl,7
  0040156C: 88 15 12 53 40 00  mov         byte ptr ds:[405312h],dl
  00401572: C0 EC 04           shr         ah,4
  00401575: 80 C4 30           add         ah,30h
  00401578: 80 FC 39           cmp         ah,39h
  0040157B: 76 03              jbe         00401580
  0040157D: 80 C4 07           add         ah,7
  00401580: 88 25 11 53 40 00  mov         byte ptr ds:[405311h],ah
  00401586: 8A D3              mov         dl,bl
  00401588: 80 E2 0F           and         dl,0Fh
  0040158B: 80 C2 30           add         dl,30h
  0040158E: 80 FA 39           cmp         dl,39h
  00401591: 76 03              jbe         00401596
  00401593: 80 C2 07           add         dl,7
  00401596: 88 15 19 53 40 00  mov         byte ptr ds:[405319h],dl
  0040159C: C0 EB 04           shr         bl,4
  0040159F: 80 C3 30           add         bl,30h
  004015A2: 80 FB 39           cmp         bl,39h
  004015A5: 76 03              jbe         004015AA
  004015A7: 80 C3 07           add         bl,7
  004015AA: 88 1D 18 53 40 00  mov         byte ptr ds:[405318h],bl
  004015B0: 8A D7              mov         dl,bh
  004015B2: 80 E2 0F           and         dl,0Fh
  004015B5: 80 C2 30           add         dl,30h
  004015B8: 80 FA 39           cmp         dl,39h
  004015BB: 76 03              jbe         004015C0
  004015BD: 80 C2 07           add         dl,7
  004015C0: 88 15 20 53 40 00  mov         byte ptr ds:[405320h],dl
  004015C6: C0 EF 04           shr         bh,4
  004015C9: 80 C7 30           add         bh,30h
  004015CC: 80 FF 39           cmp         bh,39h
  004015CF: 76 03              jbe         004015D4
  004015D1: 80 C7 07           add         bh,7
  004015D4: 88 3D 1F 53 40 00  mov         byte ptr ds:[40531Fh],bh
  004015DA: 8A D1              mov         dl,cl
  004015DC: 80 E2 0F           and         dl,0Fh
  004015DF: 80 C2 30           add         dl,30h
  004015E2: 80 FA 39           cmp         dl,39h
  004015E5: 76 03              jbe         004015EA
  004015E7: 80 C2 07           add         dl,7
  004015EA: 88 15 27 53 40 00  mov         byte ptr ds:[405327h],dl
  004015F0: C0 E9 04           shr         cl,4
  004015F3: 80 C1 30           add         cl,30h
  004015F6: 80 F9 39           cmp         cl,39h
  004015F9: 76 03              jbe         004015FE
  004015FB: 80 C1 07           add         cl,7
  004015FE: 88 0D 26 53 40 00  mov         byte ptr ds:[405326h],cl
  00401604: 8A D5              mov         dl,ch
  00401606: 80 E2 0F           and         dl,0Fh
  00401609: 80 C2 30           add         dl,30h
  0040160C: 80 FA 39           cmp         dl,39h
  0040160F: 76 03              jbe         00401614
  00401611: 80 C2 07           add         dl,7
  00401614: 88 15 2E 53 40 00  mov         byte ptr ds:[40532Eh],dl
  0040161A: C0 ED 04           shr         ch,4
  0040161D: 80 C5 30           add         ch,30h
  00401620: 80 FD 39           cmp         ch,39h
  00401623: 76 03              jbe         00401628
  00401625: 80 C5 07           add         ch,7
  00401628: 88 2D 2D 53 40 00  mov         byte ptr ds:[40532Dh],ch
  0040162E: 58                 pop         eax
  0040162F: 8A D0              mov         dl,al
  00401631: 80 E2 0F           and         dl,0Fh
  00401634: 80 C2 30           add         dl,30h
  00401637: 80 FA 39           cmp         dl,39h
  0040163A: 76 03              jbe         0040163F
  0040163C: 80 C2 07           add         dl,7
  0040163F: 88 15 35 53 40 00  mov         byte ptr ds:[405335h],dl
  00401645: C0 E8 04           shr         al,4
  00401648: 04 30              add         al,30h
  0040164A: 3C 39              cmp         al,39h
  0040164C: 76 02              jbe         00401650
  0040164E: 04 07              add         al,7
  00401650: A2 34 53 40 00     mov         [00405334],al
  00401655: 8A D4              mov         dl,ah
  00401657: 80 E2 0F           and         dl,0Fh
  0040165A: 80 C2 30           add         dl,30h
  0040165D: 80 FA 39           cmp         dl,39h
  00401660: 76 03              jbe         00401665
  00401662: 80 C2 07           add         dl,7
  00401665: 88 15 3C 53 40 00  mov         byte ptr ds:[40533Ch],dl
  0040166B: C0 EC 04           shr         ah,4
  0040166E: 80 C4 30           add         ah,30h
  00401671: 80 FC 39           cmp         ah,39h
  00401674: 76 03              jbe         00401679
  00401676: 80 C4 07           add         ah,7
  00401679: 88 25 3B 53 40 00  mov         byte ptr ds:[40533Bh],ah
  0040167F: 6A F5              push        0F5h
  00401681: E8 64 0B 00 00     call        _GetStdHandle@4
  00401686: 6A 00              push        0
  00401688: 68 33 51 40 00     push        405133h
  0040168D: 68 38 00 00 00     push        38h
  00401692: 68 07 53 40 00     push        405307h
  00401697: 50                 push        eax
  00401698: E8 59 0B 00 00     call        _WriteConsoleA@20
  0040169D: 61                 popad
  0040169E: C3                 ret
_disprw:
  0040169F: 60                 pushad
  004016A0: 52                 push        edx
  004016A1: 51                 push        ecx
  004016A2: 53                 push        ebx
  004016A3: B9 04 00 00 00     mov         ecx,4
  004016A8: 33 DB              xor         ebx,ebx
  004016AA: C1 C0 10           rol         eax,10h
  004016AD: C1 C0 04           rol         eax,4
  004016B0: 8B D0              mov         edx,eax
  004016B2: 80 E2 0F           and         dl,0Fh
  004016B5: 80 C2 30           add         dl,30h
  004016B8: 80 FA 39           cmp         dl,39h
  004016BB: 76 03              jbe         004016C0
  004016BD: 80 C2 07           add         dl,7
  004016C0: 88 93 C2 52 40 00  mov         byte ptr [ebx+4052C2h],dl
  004016C6: 43                 inc         ebx
  004016C7: 3B D9              cmp         ebx,ecx
  004016C9: 72 E2              jb          004016AD
  004016CB: 58                 pop         eax
  004016CC: 33 DB              xor         ebx,ebx
  004016CE: C1 C0 10           rol         eax,10h
  004016D1: C1 C0 04           rol         eax,4
  004016D4: 8B D0              mov         edx,eax
  004016D6: 80 E2 0F           and         dl,0Fh
  004016D9: 80 C2 30           add         dl,30h
  004016DC: 80 FA 39           cmp         dl,39h
  004016DF: 76 03              jbe         004016E4
  004016E1: 80 C2 07           add         dl,7
  004016E4: 88 93 CB 52 40 00  mov         byte ptr [ebx+4052CBh],dl
  004016EA: 43                 inc         ebx
  004016EB: 3B D9              cmp         ebx,ecx
  004016ED: 72 E2              jb          004016D1
  004016EF: 58                 pop         eax
  004016F0: 33 DB              xor         ebx,ebx
  004016F2: C1 C0 10           rol         eax,10h
  004016F5: C1 C0 04           rol         eax,4
  004016F8: 8B D0              mov         edx,eax
  004016FA: 80 E2 0F           and         dl,0Fh
  004016FD: 80 C2 30           add         dl,30h
  00401700: 80 FA 39           cmp         dl,39h
  00401703: 76 03              jbe         00401708
  00401705: 80 C2 07           add         dl,7
  00401708: 88 93 D4 52 40 00  mov         byte ptr [ebx+4052D4h],dl
  0040170E: 43                 inc         ebx
  0040170F: 3B D9              cmp         ebx,ecx
  00401711: 72 E2              jb          004016F5
  00401713: 58                 pop         eax
  00401714: 33 DB              xor         ebx,ebx
  00401716: C1 C0 10           rol         eax,10h
  00401719: C1 C0 04           rol         eax,4
  0040171C: 8B D0              mov         edx,eax
  0040171E: 80 E2 0F           and         dl,0Fh
  00401721: 80 C2 30           add         dl,30h
  00401724: 80 FA 39           cmp         dl,39h
  00401727: 76 03              jbe         0040172C
  00401729: 80 C2 07           add         dl,7
  0040172C: 88 93 DD 52 40 00  mov         byte ptr [ebx+4052DDh],dl
  00401732: 43                 inc         ebx
  00401733: 3B D9              cmp         ebx,ecx
  00401735: 72 E2              jb          00401719
  00401737: 33 DB              xor         ebx,ebx
  00401739: C1 C6 10           rol         esi,10h
  0040173C: C1 C6 04           rol         esi,4
  0040173F: 8B D6              mov         edx,esi
  00401741: 80 E2 0F           and         dl,0Fh
  00401744: 80 C2 30           add         dl,30h
  00401747: 80 FA 39           cmp         dl,39h
  0040174A: 76 03              jbe         0040174F
  0040174C: 80 C2 07           add         dl,7
  0040174F: 88 93 E6 52 40 00  mov         byte ptr [ebx+4052E6h],dl
  00401755: 43                 inc         ebx
  00401756: 3B D9              cmp         ebx,ecx
  00401758: 72 E2              jb          0040173C
  0040175A: 33 DB              xor         ebx,ebx
  0040175C: C1 C7 10           rol         edi,10h
  0040175F: C1 C7 04           rol         edi,4
  00401762: 8B D7              mov         edx,edi
  00401764: 80 E2 0F           and         dl,0Fh
  00401767: 80 C2 30           add         dl,30h
  0040176A: 80 FA 39           cmp         dl,39h
  0040176D: 76 03              jbe         00401772
  0040176F: 80 C2 07           add         dl,7
  00401772: 88 93 EF 52 40 00  mov         byte ptr [ebx+4052EFh],dl
  00401778: 43                 inc         ebx
  00401779: 3B D9              cmp         ebx,ecx
  0040177B: 72 E2              jb          0040175F
  0040177D: 33 DB              xor         ebx,ebx
  0040177F: C1 C5 10           rol         ebp,10h
  00401782: C1 C5 04           rol         ebp,4
  00401785: 8B D5              mov         edx,ebp
  00401787: 80 E2 0F           and         dl,0Fh
  0040178A: 80 C2 30           add         dl,30h
  0040178D: 80 FA 39           cmp         dl,39h
  00401790: 76 03              jbe         00401795
  00401792: 80 C2 07           add         dl,7
  00401795: 88 93 F8 52 40 00  mov         byte ptr [ebx+4052F8h],dl
  0040179B: 43                 inc         ebx
  0040179C: 3B D9              cmp         ebx,ecx
  0040179E: 72 E2              jb          00401782
  004017A0: 8B C4              mov         eax,esp
  004017A2: 83 C0 24           add         eax,24h
  004017A5: 33 DB              xor         ebx,ebx
  004017A7: C1 C0 10           rol         eax,10h
  004017AA: C1 C0 04           rol         eax,4
  004017AD: 8B D0              mov         edx,eax
  004017AF: 80 E2 0F           and         dl,0Fh
  004017B2: 80 C2 30           add         dl,30h
  004017B5: 80 FA 39           cmp         dl,39h
  004017B8: 76 03              jbe         004017BD
  004017BA: 80 C2 07           add         dl,7
  004017BD: 88 93 01 53 40 00  mov         byte ptr [ebx+405301h],dl
  004017C3: 43                 inc         ebx
  004017C4: 3B D9              cmp         ebx,ecx
  004017C6: 72 E2              jb          004017AA
  004017C8: 6A F5              push        0F5h
  004017CA: E8 1B 0A 00 00     call        _GetStdHandle@4
  004017CF: 6A 00              push        0
  004017D1: 68 33 51 40 00     push        405133h
  004017D6: 68 48 00 00 00     push        48h
  004017DB: 68 BF 52 40 00     push        4052BFh
  004017E0: 50                 push        eax
  004017E1: E8 10 0A 00 00     call        _WriteConsoleA@20
  004017E6: 61                 popad
  004017E7: C3                 ret
_disprd:
  004017E8: 60                 pushad
  004017E9: 52                 push        edx
  004017EA: 51                 push        ecx
  004017EB: 53                 push        ebx
  004017EC: B9 08 00 00 00     mov         ecx,8
  004017F1: 33 DB              xor         ebx,ebx
  004017F3: C1 C0 04           rol         eax,4
  004017F6: 8B D0              mov         edx,eax
  004017F8: 80 E2 0F           and         dl,0Fh
  004017FB: 80 C2 30           add         dl,30h
  004017FE: 80 FA 39           cmp         dl,39h
  00401801: 76 03              jbe         00401806
  00401803: 80 C2 07           add         dl,7
  00401806: 88 93 53 52 40 00  mov         byte ptr [ebx+405253h],dl
  0040180C: 43                 inc         ebx
  0040180D: 3B D9              cmp         ebx,ecx
  0040180F: 72 E2              jb          004017F3
  00401811: 58                 pop         eax
  00401812: 33 DB              xor         ebx,ebx
  00401814: C1 C0 04           rol         eax,4
  00401817: 8B D0              mov         edx,eax
  00401819: 80 E2 0F           and         dl,0Fh
  0040181C: 80 C2 30           add         dl,30h
  0040181F: 80 FA 39           cmp         dl,39h
  00401822: 76 03              jbe         00401827
  00401824: 80 C2 07           add         dl,7
  00401827: 88 93 61 52 40 00  mov         byte ptr [ebx+405261h],dl
  0040182D: 43                 inc         ebx
  0040182E: 3B D9              cmp         ebx,ecx
  00401830: 72 E2              jb          00401814
  00401832: 58                 pop         eax
  00401833: 33 DB              xor         ebx,ebx
  00401835: C1 C0 04           rol         eax,4
  00401838: 8B D0              mov         edx,eax
  0040183A: 80 E2 0F           and         dl,0Fh
  0040183D: 80 C2 30           add         dl,30h
  00401840: 80 FA 39           cmp         dl,39h
  00401843: 76 03              jbe         00401848
  00401845: 80 C2 07           add         dl,7
  00401848: 88 93 6F 52 40 00  mov         byte ptr [ebx+40526Fh],dl
  0040184E: 43                 inc         ebx
  0040184F: 3B D9              cmp         ebx,ecx
  00401851: 72 E2              jb          00401835
  00401853: 58                 pop         eax
  00401854: 33 DB              xor         ebx,ebx
  00401856: C1 C0 04           rol         eax,4
  00401859: 8B D0              mov         edx,eax
  0040185B: 80 E2 0F           and         dl,0Fh
  0040185E: 80 C2 30           add         dl,30h
  00401861: 80 FA 39           cmp         dl,39h
  00401864: 76 03              jbe         00401869
  00401866: 80 C2 07           add         dl,7
  00401869: 88 93 7D 52 40 00  mov         byte ptr [ebx+40527Dh],dl
  0040186F: 43                 inc         ebx
  00401870: 3B D9              cmp         ebx,ecx
  00401872: 72 E2              jb          00401856
  00401874: 33 DB              xor         ebx,ebx
  00401876: C1 C6 04           rol         esi,4
  00401879: 8B D6              mov         edx,esi
  0040187B: 80 E2 0F           and         dl,0Fh
  0040187E: 80 C2 30           add         dl,30h
  00401881: 80 FA 39           cmp         dl,39h
  00401884: 76 03              jbe         00401889
  00401886: 80 C2 07           add         dl,7
  00401889: 88 93 8B 52 40 00  mov         byte ptr [ebx+40528Bh],dl
  0040188F: 43                 inc         ebx
  00401890: 3B D9              cmp         ebx,ecx
  00401892: 72 E2              jb          00401876
  00401894: 33 DB              xor         ebx,ebx
  00401896: C1 C7 04           rol         edi,4
  00401899: 8B D7              mov         edx,edi
  0040189B: 80 E2 0F           and         dl,0Fh
  0040189E: 80 C2 30           add         dl,30h
  004018A1: 80 FA 39           cmp         dl,39h
  004018A4: 76 03              jbe         004018A9
  004018A6: 80 C2 07           add         dl,7
  004018A9: 88 93 99 52 40 00  mov         byte ptr [ebx+405299h],dl
  004018AF: 43                 inc         ebx
  004018B0: 3B D9              cmp         ebx,ecx
  004018B2: 72 E2              jb          00401896
  004018B4: 33 DB              xor         ebx,ebx
  004018B6: C1 C5 04           rol         ebp,4
  004018B9: 8B D5              mov         edx,ebp
  004018BB: 80 E2 0F           and         dl,0Fh
  004018BE: 80 C2 30           add         dl,30h
  004018C1: 80 FA 39           cmp         dl,39h
  004018C4: 76 03              jbe         004018C9
  004018C6: 80 C2 07           add         dl,7
  004018C9: 88 93 A7 52 40 00  mov         byte ptr [ebx+4052A7h],dl
  004018CF: 43                 inc         ebx
  004018D0: 3B D9              cmp         ebx,ecx
  004018D2: 72 E2              jb          004018B6
  004018D4: 8B C4              mov         eax,esp
  004018D6: 83 C0 24           add         eax,24h
  004018D9: 33 DB              xor         ebx,ebx
  004018DB: C1 C0 04           rol         eax,4
  004018DE: 8B D0              mov         edx,eax
  004018E0: 80 E2 0F           and         dl,0Fh
  004018E3: 80 C2 30           add         dl,30h
  004018E6: 80 FA 39           cmp         dl,39h
  004018E9: 76 03              jbe         004018EE
  004018EB: 80 C2 07           add         dl,7
  004018EE: 88 93 B5 52 40 00  mov         byte ptr [ebx+4052B5h],dl
  004018F4: 43                 inc         ebx
  004018F5: 3B D9              cmp         ebx,ecx
  004018F7: 72 E2              jb          004018DB
  004018F9: 6A F5              push        0F5h
  004018FB: E8 EA 08 00 00     call        _GetStdHandle@4
  00401900: 6A 00              push        0
  00401902: 68 33 51 40 00     push        405133h
  00401907: 68 70 00 00 00     push        70h
  0040190C: 68 4F 52 40 00     push        40524Fh
  00401911: 50                 push        eax
  00401912: E8 DF 08 00 00     call        _WriteConsoleA@20
  00401917: 61                 popad
  00401918: C3                 ret
_disprf:
  00401919: 50                 push        eax
  0040191A: 53                 push        ebx
  0040191B: 51                 push        ecx
  0040191C: 52                 push        edx
  0040191D: 9C                 pushfd
  0040191E: 58                 pop         eax
  0040191F: 33 DB              xor         ebx,ebx
  00401921: C1 C0 15           rol         eax,15h
  00401924: 83 D3 30           adc         ebx,30h
  00401927: 88 1D 42 53 40 00  mov         byte ptr ds:[405342h],bl
  0040192D: 33 DB              xor         ebx,ebx
  0040192F: C1 C0 04           rol         eax,4
  00401932: 83 D3 30           adc         ebx,30h
  00401935: 88 1D 48 53 40 00  mov         byte ptr ds:[405348h],bl
  0040193B: 33 DB              xor         ebx,ebx
  0040193D: D1 C0              rol         eax,1
  0040193F: 83 D3 30           adc         ebx,30h
  00401942: 88 1D 4E 53 40 00  mov         byte ptr ds:[40534Eh],bl
  00401948: 33 DB              xor         ebx,ebx
  0040194A: C1 C0 02           rol         eax,2
  0040194D: 83 D3 30           adc         ebx,30h
  00401950: 88 1D 54 53 40 00  mov         byte ptr ds:[405354h],bl
  00401956: 33 DB              xor         ebx,ebx
  00401958: C1 C0 02           rol         eax,2
  0040195B: 83 D3 30           adc         ebx,30h
  0040195E: 88 1D 5A 53 40 00  mov         byte ptr ds:[40535Ah],bl
  00401964: 33 DB              xor         ebx,ebx
  00401966: C1 C0 02           rol         eax,2
  00401969: 83 D3 30           adc         ebx,30h
  0040196C: 88 1D 60 53 40 00  mov         byte ptr ds:[405360h],bl
  00401972: 6A F5              push        0F5h
  00401974: E8 71 08 00 00     call        _GetStdHandle@4
  00401979: 6A 00              push        0
  0040197B: 68 33 51 40 00     push        405133h
  00401980: 68 24 00 00 00     push        24h
  00401985: 68 3F 53 40 00     push        40533Fh
  0040198A: 50                 push        eax
  0040198B: E8 66 08 00 00     call        _WriteConsoleA@20
  00401990: 5A                 pop         edx
  00401991: 59                 pop         ecx
  00401992: 5B                 pop         ebx
  00401993: 58                 pop         eax
  00401994: C3                 ret
_readhb:
  00401995: 53                 push        ebx
  00401996: 51                 push        ecx
  00401997: 52                 push        edx
  00401998: 6A F6              push        0F6h
  0040199A: E8 4B 08 00 00     call        _GetStdHandle@4
  0040199F: A3 3A 51 40 00     mov         [0040513A],eax
  004019A4: 6A F5              push        0F5h
  004019A6: E8 3F 08 00 00     call        _GetStdHandle@4
  004019AB: A3 30 50 40 00     mov         [00405030],eax
  004019B0: 68 41 52 40 00     push        405241h
  004019B5: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004019BB: E8 3C 08 00 00     call        _GetConsoleMode@8
  004019C0: 6A 00              push        0
  004019C2: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004019C8: E8 35 08 00 00     call        _SetConsoleMode@8
  004019CD: 33 DB              xor         ebx,ebx
  004019CF: B9 02 00 00 00     mov         ecx,2
  004019D4: 53                 push        ebx
  004019D5: 51                 push        ecx
  004019D6: 6A 00              push        0
  004019D8: 68 3E 51 40 00     push        40513Eh
  004019DD: 6A 01              push        1
  004019DF: 68 42 51 40 00     push        405142h
  004019E4: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  004019EA: E8 01 08 00 00     call        _ReadConsoleA@20
  004019EF: A0 42 51 40 00     mov         al,[00405142]
  004019F4: 3C 30              cmp         al,30h
  004019F6: 72 DE              jb          004019D6
  004019F8: 3C 39              cmp         al,39h
  004019FA: 76 10              jbe         00401A0C
  004019FC: 3C 41              cmp         al,41h
  004019FE: 72 D6              jb          004019D6
  00401A00: 3C 46              cmp         al,46h
  00401A02: 76 08              jbe         00401A0C
  00401A04: 3C 61              cmp         al,61h
  00401A06: 72 CE              jb          004019D6
  00401A08: 3C 66              cmp         al,66h
  00401A0A: 77 CA              ja          004019D6
  00401A0C: 6A 00              push        0
  00401A0E: 68 33 51 40 00     push        405133h
  00401A13: 6A 01              push        1
  00401A15: 68 42 51 40 00     push        405142h
  00401A1A: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401A20: E8 D1 07 00 00     call        _WriteConsoleA@20
  00401A25: 59                 pop         ecx
  00401A26: 5B                 pop         ebx
  00401A27: A0 42 51 40 00     mov         al,[00405142]
  00401A2C: 3C 39              cmp         al,39h
  00401A2E: 76 08              jbe         00401A38
  00401A30: 3C 61              cmp         al,61h
  00401A32: 72 02              jb          00401A36
  00401A34: 2C 20              sub         al,20h
  00401A36: 2C 07              sub         al,7
  00401A38: 2C 30              sub         al,30h
  00401A3A: C1 E3 04           shl         ebx,4
  00401A3D: 0A D8              or          bl,al
  00401A3F: E2 93              loop        004019D4
  00401A41: 53                 push        ebx
  00401A42: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401A48: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401A4E: E8 AF 07 00 00     call        _SetConsoleMode@8
  00401A53: 58                 pop         eax
  00401A54: 5B                 pop         ebx
  00401A55: 59                 pop         ecx
  00401A56: 5A                 pop         edx
  00401A57: C3                 ret
_readhw:
  00401A58: 53                 push        ebx
  00401A59: 51                 push        ecx
  00401A5A: 52                 push        edx
  00401A5B: 6A F6              push        0F6h
  00401A5D: E8 88 07 00 00     call        _GetStdHandle@4
  00401A62: A3 3A 51 40 00     mov         [0040513A],eax
  00401A67: 6A F5              push        0F5h
  00401A69: E8 7C 07 00 00     call        _GetStdHandle@4
  00401A6E: A3 30 50 40 00     mov         [00405030],eax
  00401A73: 68 41 52 40 00     push        405241h
  00401A78: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401A7E: E8 79 07 00 00     call        _GetConsoleMode@8
  00401A83: 6A 00              push        0
  00401A85: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401A8B: E8 72 07 00 00     call        _SetConsoleMode@8
  00401A90: 33 DB              xor         ebx,ebx
  00401A92: B9 04 00 00 00     mov         ecx,4
  00401A97: 53                 push        ebx
  00401A98: 51                 push        ecx
  00401A99: 6A 00              push        0
  00401A9B: 68 3E 51 40 00     push        40513Eh
  00401AA0: 6A 01              push        1
  00401AA2: 68 42 51 40 00     push        405142h
  00401AA7: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401AAD: E8 3E 07 00 00     call        _ReadConsoleA@20
  00401AB2: A0 42 51 40 00     mov         al,[00405142]
  00401AB7: 3C 30              cmp         al,30h
  00401AB9: 72 DE              jb          00401A99
  00401ABB: 3C 39              cmp         al,39h
  00401ABD: 76 10              jbe         00401ACF
  00401ABF: 3C 41              cmp         al,41h
  00401AC1: 72 D6              jb          00401A99
  00401AC3: 3C 46              cmp         al,46h
  00401AC5: 76 08              jbe         00401ACF
  00401AC7: 3C 61              cmp         al,61h
  00401AC9: 72 CE              jb          00401A99
  00401ACB: 3C 66              cmp         al,66h
  00401ACD: 77 CA              ja          00401A99
  00401ACF: 6A 00              push        0
  00401AD1: 68 33 51 40 00     push        405133h
  00401AD6: 6A 01              push        1
  00401AD8: 68 42 51 40 00     push        405142h
  00401ADD: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401AE3: E8 0E 07 00 00     call        _WriteConsoleA@20
  00401AE8: 59                 pop         ecx
  00401AE9: 5B                 pop         ebx
  00401AEA: A0 42 51 40 00     mov         al,[00405142]
  00401AEF: 3C 39              cmp         al,39h
  00401AF1: 76 08              jbe         00401AFB
  00401AF3: 3C 61              cmp         al,61h
  00401AF5: 72 02              jb          00401AF9
  00401AF7: 2C 20              sub         al,20h
  00401AF9: 2C 07              sub         al,7
  00401AFB: 2C 30              sub         al,30h
  00401AFD: C1 E3 04           shl         ebx,4
  00401B00: 0A D8              or          bl,al
  00401B02: E2 93              loop        00401A97
  00401B04: 53                 push        ebx
  00401B05: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401B0B: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B11: E8 EC 06 00 00     call        _SetConsoleMode@8
  00401B16: 58                 pop         eax
  00401B17: 5A                 pop         edx
  00401B18: 59                 pop         ecx
  00401B19: 5B                 pop         ebx
  00401B1A: C3                 ret
_readhd:
  00401B1B: 53                 push        ebx
  00401B1C: 51                 push        ecx
  00401B1D: 52                 push        edx
  00401B1E: 6A F6              push        0F6h
  00401B20: E8 C5 06 00 00     call        _GetStdHandle@4
  00401B25: A3 3A 51 40 00     mov         [0040513A],eax
  00401B2A: 6A F5              push        0F5h
  00401B2C: E8 B9 06 00 00     call        _GetStdHandle@4
  00401B31: A3 30 50 40 00     mov         [00405030],eax
  00401B36: 68 41 52 40 00     push        405241h
  00401B3B: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B41: E8 B6 06 00 00     call        _GetConsoleMode@8
  00401B46: 6A 00              push        0
  00401B48: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B4E: E8 AF 06 00 00     call        _SetConsoleMode@8
  00401B53: 33 DB              xor         ebx,ebx
  00401B55: B9 08 00 00 00     mov         ecx,8
  00401B5A: 53                 push        ebx
  00401B5B: 51                 push        ecx
  00401B5C: 6A 00              push        0
  00401B5E: 68 3E 51 40 00     push        40513Eh
  00401B63: 6A 01              push        1
  00401B65: 68 42 51 40 00     push        405142h
  00401B6A: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401B70: E8 7B 06 00 00     call        _ReadConsoleA@20
  00401B75: A0 42 51 40 00     mov         al,[00405142]
  00401B7A: 3C 30              cmp         al,30h
  00401B7C: 72 DE              jb          00401B5C
  00401B7E: 3C 39              cmp         al,39h
  00401B80: 76 10              jbe         00401B92
  00401B82: 3C 41              cmp         al,41h
  00401B84: 72 D6              jb          00401B5C
  00401B86: 3C 46              cmp         al,46h
  00401B88: 76 08              jbe         00401B92
  00401B8A: 3C 61              cmp         al,61h
  00401B8C: 72 CE              jb          00401B5C
  00401B8E: 3C 66              cmp         al,66h
  00401B90: 77 CA              ja          00401B5C
  00401B92: 6A 00              push        0
  00401B94: 68 33 51 40 00     push        405133h
  00401B99: 6A 01              push        1
  00401B9B: 68 42 51 40 00     push        405142h
  00401BA0: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401BA6: E8 4B 06 00 00     call        _WriteConsoleA@20
  00401BAB: 59                 pop         ecx
  00401BAC: 5B                 pop         ebx
  00401BAD: A0 42 51 40 00     mov         al,[00405142]
  00401BB2: 3C 39              cmp         al,39h
  00401BB4: 76 08              jbe         00401BBE
  00401BB6: 3C 61              cmp         al,61h
  00401BB8: 72 02              jb          00401BBC
  00401BBA: 2C 20              sub         al,20h
  00401BBC: 2C 07              sub         al,7
  00401BBE: 2C 30              sub         al,30h
  00401BC0: C1 E3 04           shl         ebx,4
  00401BC3: 0A D8              or          bl,al
  00401BC5: E2 93              loop        00401B5A
  00401BC7: 53                 push        ebx
  00401BC8: FF 35 41 52 40 00  push        dword ptr ds:[405241h]
  00401BCE: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401BD4: E8 29 06 00 00     call        _SetConsoleMode@8
  00401BD9: 58                 pop         eax
  00401BDA: 5A                 pop         edx
  00401BDB: 59                 pop         ecx
  00401BDC: 5B                 pop         ebx
  00401BDD: C3                 ret
_readuib:
  00401BDE: 53                 push        ebx
  00401BDF: 51                 push        ecx
  00401BE0: 52                 push        edx
  00401BE1: 6A F6              push        0F6h
  00401BE3: E8 02 06 00 00     call        _GetStdHandle@4
  00401BE8: A3 3A 51 40 00     mov         [0040513A],eax
  00401BED: 6A F5              push        0F5h
  00401BEF: E8 F6 05 00 00     call        _GetStdHandle@4
  00401BF4: A3 30 50 40 00     mov         [00405030],eax
  00401BF9: 6A 00              push        0
  00401BFB: 68 3E 51 40 00     push        40513Eh
  00401C00: 68 FF 00 00 00     push        0FFh
  00401C05: 68 42 51 40 00     push        405142h
  00401C0A: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401C10: E8 DB 05 00 00     call        _ReadConsoleA@20
  00401C15: A1 3E 51 40 00     mov         eax,[0040513E]
  00401C1A: 83 E8 02           sub         eax,2
  00401C1D: 74 2C              je          00401C4B
  00401C1F: 83 F8 03           cmp         eax,3
  00401C22: 77 27              ja          00401C4B
  00401C24: BA 42 51 40 00     mov         edx,405142h
  00401C29: 33 DB              xor         ebx,ebx
  00401C2B: 8A 02              mov         al,byte ptr [edx]
  00401C2D: 42                 inc         edx
  00401C2E: 3C 0D              cmp         al,0Dh
  00401C30: 74 34              je          00401C66
  00401C32: 3C 30              cmp         al,30h
  00401C34: 72 15              jb          00401C4B
  00401C36: 3C 39              cmp         al,39h
  00401C38: 77 11              ja          00401C4B
  00401C3A: 2C 30              sub         al,30h
  00401C3C: D0 E3              shl         bl,1
  00401C3E: 8A FB              mov         bh,bl
  00401C40: C0 E3 02           shl         bl,2
  00401C43: 02 DF              add         bl,bh
  00401C45: 72 04              jb          00401C4B
  00401C47: 02 D8              add         bl,al
  00401C49: 73 E0              jae         00401C2B
  00401C4B: 6A 00              push        0
  00401C4D: 68 33 51 40 00     push        405133h
  00401C52: 6A 0A              push        0Ah
  00401C54: 68 45 52 40 00     push        405245h
  00401C59: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401C5F: E8 92 05 00 00     call        _WriteConsoleA@20
  00401C64: EB 93              jmp         00401BF9
  00401C66: 8B C3              mov         eax,ebx
  00401C68: 5A                 pop         edx
  00401C69: 59                 pop         ecx
  00401C6A: 5B                 pop         ebx
  00401C6B: C3                 ret
_readuiw:
  00401C6C: 53                 push        ebx
  00401C6D: 51                 push        ecx
  00401C6E: 52                 push        edx
  00401C6F: 6A F6              push        0F6h
  00401C71: E8 74 05 00 00     call        _GetStdHandle@4
  00401C76: A3 3A 51 40 00     mov         [0040513A],eax
  00401C7B: 6A F5              push        0F5h
  00401C7D: E8 68 05 00 00     call        _GetStdHandle@4
  00401C82: A3 30 50 40 00     mov         [00405030],eax
  00401C87: 6A 00              push        0
  00401C89: 68 3E 51 40 00     push        40513Eh
  00401C8E: 68 FF 00 00 00     push        0FFh
  00401C93: 68 42 51 40 00     push        405142h
  00401C98: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401C9E: E8 4D 05 00 00     call        _ReadConsoleA@20
  00401CA3: A1 3E 51 40 00     mov         eax,[0040513E]
  00401CA8: 83 E8 02           sub         eax,2
  00401CAB: 74 35              je          00401CE2
  00401CAD: 83 F8 05           cmp         eax,5
  00401CB0: 77 30              ja          00401CE2
  00401CB2: BA 42 51 40 00     mov         edx,405142h
  00401CB7: 33 DB              xor         ebx,ebx
  00401CB9: 8A 02              mov         al,byte ptr [edx]
  00401CBB: 42                 inc         edx
  00401CBC: 3C 0D              cmp         al,0Dh
  00401CBE: 74 3D              je          00401CFD
  00401CC0: 3C 30              cmp         al,30h
  00401CC2: 72 1E              jb          00401CE2
  00401CC4: 3C 39              cmp         al,39h
  00401CC6: 77 1A              ja          00401CE2
  00401CC8: 2C 30              sub         al,30h
  00401CCA: 66 D1 E3           shl         bx,1
  00401CCD: 66 8B CB           mov         cx,bx
  00401CD0: 66 C1 E3 02        shl         bx,2
  00401CD4: 66 03 D9           add         bx,cx
  00401CD7: 72 09              jb          00401CE2
  00401CD9: 66 0F B6 C0        movzx       ax,al
  00401CDD: 66 03 D8           add         bx,ax
  00401CE0: 73 D7              jae         00401CB9
  00401CE2: 6A 00              push        0
  00401CE4: 68 33 51 40 00     push        405133h
  00401CE9: 6A 0A              push        0Ah
  00401CEB: 68 45 52 40 00     push        405245h
  00401CF0: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401CF6: E8 FB 04 00 00     call        _WriteConsoleA@20
  00401CFB: EB 8A              jmp         00401C87
  00401CFD: 8B C3              mov         eax,ebx
  00401CFF: 5A                 pop         edx
  00401D00: 59                 pop         ecx
  00401D01: 5B                 pop         ebx
  00401D02: C3                 ret
_readuid:
  00401D03: 53                 push        ebx
  00401D04: 51                 push        ecx
  00401D05: 52                 push        edx
  00401D06: 6A F6              push        0F6h
  00401D08: E8 DD 04 00 00     call        _GetStdHandle@4
  00401D0D: A3 3A 51 40 00     mov         [0040513A],eax
  00401D12: 6A F5              push        0F5h
  00401D14: E8 D1 04 00 00     call        _GetStdHandle@4
  00401D19: A3 30 50 40 00     mov         [00405030],eax
  00401D1E: 6A 00              push        0
  00401D20: 68 3E 51 40 00     push        40513Eh
  00401D25: 68 FF 00 00 00     push        0FFh
  00401D2A: 68 42 51 40 00     push        405142h
  00401D2F: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401D35: E8 B6 04 00 00     call        _ReadConsoleA@20
  00401D3A: A1 3E 51 40 00     mov         eax,[0040513E]
  00401D3F: 83 E8 02           sub         eax,2
  00401D42: 74 2F              je          00401D73
  00401D44: 83 F8 0C           cmp         eax,0Ch
  00401D47: 77 2A              ja          00401D73
  00401D49: BA 42 51 40 00     mov         edx,405142h
  00401D4E: 33 DB              xor         ebx,ebx
  00401D50: 8A 02              mov         al,byte ptr [edx]
  00401D52: 42                 inc         edx
  00401D53: 3C 0D              cmp         al,0Dh
  00401D55: 74 37              je          00401D8E
  00401D57: 3C 30              cmp         al,30h
  00401D59: 72 18              jb          00401D73
  00401D5B: 3C 39              cmp         al,39h
  00401D5D: 77 14              ja          00401D73
  00401D5F: 2C 30              sub         al,30h
  00401D61: D1 E3              shl         ebx,1
  00401D63: 8B CB              mov         ecx,ebx
  00401D65: C1 E3 02           shl         ebx,2
  00401D68: 03 D9              add         ebx,ecx
  00401D6A: 72 07              jb          00401D73
  00401D6C: 0F B6 C0           movzx       eax,al
  00401D6F: 03 D8              add         ebx,eax
  00401D71: 73 DD              jae         00401D50
  00401D73: 6A 00              push        0
  00401D75: 68 33 51 40 00     push        405133h
  00401D7A: 6A 0A              push        0Ah
  00401D7C: 68 45 52 40 00     push        405245h
  00401D81: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401D87: E8 6A 04 00 00     call        _WriteConsoleA@20
  00401D8C: EB 90              jmp         00401D1E
  00401D8E: 8B C3              mov         eax,ebx
  00401D90: 5A                 pop         edx
  00401D91: 59                 pop         ecx
  00401D92: 5B                 pop         ebx
  00401D93: C3                 ret
_readsib:
  00401D94: 53                 push        ebx
  00401D95: 51                 push        ecx
  00401D96: 52                 push        edx
  00401D97: 6A F6              push        0F6h
  00401D99: E8 4C 04 00 00     call        _GetStdHandle@4
  00401D9E: A3 3A 51 40 00     mov         [0040513A],eax
  00401DA3: 6A F5              push        0F5h
  00401DA5: E8 40 04 00 00     call        _GetStdHandle@4
  00401DAA: A3 30 50 40 00     mov         [00405030],eax
  00401DAF: 6A 00              push        0
  00401DB1: 68 3E 51 40 00     push        40513Eh
  00401DB6: 68 FF 00 00 00     push        0FFh
  00401DBB: 68 42 51 40 00     push        405142h
  00401DC0: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401DC6: E8 25 04 00 00     call        _ReadConsoleA@20
  00401DCB: A1 3E 51 40 00     mov         eax,[0040513E]
  00401DD0: 83 E8 02           sub         eax,2
  00401DD3: 74 43              je          00401E18
  00401DD5: 83 F8 04           cmp         eax,4
  00401DD8: 77 3E              ja          00401E18
  00401DDA: BA 42 51 40 00     mov         edx,405142h
  00401DDF: 33 DB              xor         ebx,ebx
  00401DE1: 33 C9              xor         ecx,ecx
  00401DE3: 8A 02              mov         al,byte ptr [edx]
  00401DE5: 3C 2B              cmp         al,2Bh
  00401DE7: 74 09              je          00401DF2
  00401DE9: 3C 2D              cmp         al,2Dh
  00401DEB: 75 0C              jne         00401DF9
  00401DED: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  00401DF2: 42                 inc         edx
  00401DF3: 8A 02              mov         al,byte ptr [edx]
  00401DF5: 3C 0D              cmp         al,0Dh
  00401DF7: 74 3D              je          00401E36
  00401DF9: 3C 30              cmp         al,30h
  00401DFB: 72 1B              jb          00401E18
  00401DFD: 3C 39              cmp         al,39h
  00401DFF: 77 17              ja          00401E18
  00401E01: 2C 30              sub         al,30h
  00401E03: D0 E3              shl         bl,1
  00401E05: 8A FB              mov         bh,bl
  00401E07: C0 E3 02           shl         bl,2
  00401E0A: 02 DF              add         bl,bh
  00401E0C: 80 FB 80           cmp         bl,80h
  00401E0F: 77 07              ja          00401E18
  00401E11: 02 D8              add         bl,al
  00401E13: 80 FB 80           cmp         bl,80h
  00401E16: 76 DA              jbe         00401DF2
  00401E18: 6A 00              push        0
  00401E1A: 68 33 51 40 00     push        405133h
  00401E1F: 6A 0A              push        0Ah
  00401E21: 68 45 52 40 00     push        405245h
  00401E26: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401E2C: E8 C5 03 00 00     call        _WriteConsoleA@20
  00401E31: E9 79 FF FF FF     jmp         00401DAF
  00401E36: 85 C9              test        ecx,ecx
  00401E38: 74 04              je          00401E3E
  00401E3A: F6 DB              neg         bl
  00401E3C: EB 05              jmp         00401E43
  00401E3E: 80 FB 7F           cmp         bl,7Fh
  00401E41: 77 D5              ja          00401E18
  00401E43: 8B C3              mov         eax,ebx
  00401E45: 5A                 pop         edx
  00401E46: 59                 pop         ecx
  00401E47: 5B                 pop         ebx
  00401E48: C3                 ret
_readsiw:
  00401E49: 53                 push        ebx
  00401E4A: 51                 push        ecx
  00401E4B: 52                 push        edx
  00401E4C: 6A F6              push        0F6h
  00401E4E: E8 97 03 00 00     call        _GetStdHandle@4
  00401E53: A3 3A 51 40 00     mov         [0040513A],eax
  00401E58: 6A F5              push        0F5h
  00401E5A: E8 8B 03 00 00     call        _GetStdHandle@4
  00401E5F: A3 30 50 40 00     mov         [00405030],eax
  00401E64: 6A 00              push        0
  00401E66: 68 3E 51 40 00     push        40513Eh
  00401E6B: 68 FF 00 00 00     push        0FFh
  00401E70: 68 42 51 40 00     push        405142h
  00401E75: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401E7B: E8 70 03 00 00     call        _ReadConsoleA@20
  00401E80: A1 3E 51 40 00     mov         eax,[0040513E]
  00401E85: 83 E8 02           sub         eax,2
  00401E88: 74 42              je          00401ECC
  00401E8A: 83 F8 06           cmp         eax,6
  00401E8D: 77 3D              ja          00401ECC
  00401E8F: BA 42 51 40 00     mov         edx,405142h
  00401E94: 33 DB              xor         ebx,ebx
  00401E96: 33 C9              xor         ecx,ecx
  00401E98: 8A 02              mov         al,byte ptr [edx]
  00401E9A: 3C 2B              cmp         al,2Bh
  00401E9C: 74 09              je          00401EA7
  00401E9E: 3C 2D              cmp         al,2Dh
  00401EA0: 75 0C              jne         00401EAE
  00401EA2: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  00401EA7: 42                 inc         edx
  00401EA8: 8A 02              mov         al,byte ptr [edx]
  00401EAA: 3C 0D              cmp         al,0Dh
  00401EAC: 74 3C              je          00401EEA
  00401EAE: 3C 30              cmp         al,30h
  00401EB0: 72 1A              jb          00401ECC
  00401EB2: 3C 39              cmp         al,39h
  00401EB4: 77 16              ja          00401ECC
  00401EB6: 2C 30              sub         al,30h
  00401EB8: 66 6B DB 0A        imul        bx,bx,0Ah
  00401EBC: 72 0E              jb          00401ECC
  00401EBE: 66 0F B6 C0        movzx       ax,al
  00401EC2: 66 03 D8           add         bx,ax
  00401EC5: 66 81 FB 00 80     cmp         bx,8000h
  00401ECA: 76 DB              jbe         00401EA7
  00401ECC: 6A 00              push        0
  00401ECE: 68 33 51 40 00     push        405133h
  00401ED3: 6A 0A              push        0Ah
  00401ED5: 68 45 52 40 00     push        405245h
  00401EDA: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401EE0: E8 11 03 00 00     call        _WriteConsoleA@20
  00401EE5: E9 7A FF FF FF     jmp         00401E64
  00401EEA: 85 C9              test        ecx,ecx
  00401EEC: 74 05              je          00401EF3
  00401EEE: 66 F7 DB           neg         bx
  00401EF1: EB 07              jmp         00401EFA
  00401EF3: 66 81 FB FF 7F     cmp         bx,7FFFh
  00401EF8: 77 D2              ja          00401ECC
  00401EFA: 8B C3              mov         eax,ebx
  00401EFC: 5A                 pop         edx
  00401EFD: 59                 pop         ecx
  00401EFE: 5B                 pop         ebx
  00401EFF: C3                 ret
_readsid:
  00401F00: 53                 push        ebx
  00401F01: 51                 push        ecx
  00401F02: 52                 push        edx
  00401F03: 6A F6              push        0F6h
  00401F05: E8 E0 02 00 00     call        _GetStdHandle@4
  00401F0A: A3 3A 51 40 00     mov         [0040513A],eax
  00401F0F: 6A F5              push        0F5h
  00401F11: E8 D4 02 00 00     call        _GetStdHandle@4
  00401F16: A3 30 50 40 00     mov         [00405030],eax
  00401F1B: 6A 00              push        0
  00401F1D: 68 3E 51 40 00     push        40513Eh
  00401F22: 68 FF 00 00 00     push        0FFh
  00401F27: 68 42 51 40 00     push        405142h
  00401F2C: FF 35 3A 51 40 00  push        dword ptr ds:[40513Ah]
  00401F32: E8 B9 02 00 00     call        _ReadConsoleA@20
  00401F37: A1 3E 51 40 00     mov         eax,[0040513E]
  00401F3C: 83 E8 02           sub         eax,2
  00401F3F: 74 40              je          00401F81
  00401F41: 83 F8 0C           cmp         eax,0Ch
  00401F44: 77 3B              ja          00401F81
  00401F46: BA 42 51 40 00     mov         edx,405142h
  00401F4B: 33 DB              xor         ebx,ebx
  00401F4D: 33 C9              xor         ecx,ecx
  00401F4F: 8A 02              mov         al,byte ptr [edx]
  00401F51: 3C 2B              cmp         al,2Bh
  00401F53: 74 09              je          00401F5E
  00401F55: 3C 2D              cmp         al,2Dh
  00401F57: 75 0C              jne         00401F65
  00401F59: B9 FF FF FF FF     mov         ecx,0FFFFFFFFh
  00401F5E: 42                 inc         edx
  00401F5F: 8A 02              mov         al,byte ptr [edx]
  00401F61: 3C 0D              cmp         al,0Dh
  00401F63: 74 3A              je          00401F9F
  00401F65: 3C 30              cmp         al,30h
  00401F67: 72 18              jb          00401F81
  00401F69: 3C 39              cmp         al,39h
  00401F6B: 77 14              ja          00401F81
  00401F6D: 2C 30              sub         al,30h
  00401F6F: 6B DB 0A           imul        ebx,ebx,0Ah
  00401F72: 72 0D              jb          00401F81
  00401F74: 0F B6 C0           movzx       eax,al
  00401F77: 03 D8              add         ebx,eax
  00401F79: 81 FB 00 00 00 80  cmp         ebx,80000000h
  00401F7F: 76 DD              jbe         00401F5E
  00401F81: 6A 00              push        0
  00401F83: 68 33 51 40 00     push        405133h
  00401F88: 6A 0A              push        0Ah
  00401F8A: 68 45 52 40 00     push        405245h
  00401F8F: FF 35 30 50 40 00  push        dword ptr ds:[405030h]
  00401F95: E8 5C 02 00 00     call        _WriteConsoleA@20
  00401F9A: E9 7C FF FF FF     jmp         00401F1B
  00401F9F: 85 C9              test        ecx,ecx
  00401FA1: 74 04              je          00401FA7
  00401FA3: F7 DB              neg         ebx
  00401FA5: EB 08              jmp         00401FAF
  00401FA7: 81 FB FF FF FF 7F  cmp         ebx,7FFFFFFFh
  00401FAD: 77 D2              ja          00401F81
  00401FAF: 8B C3              mov         eax,ebx
  00401FB1: 5A                 pop         edx
  00401FB2: 59                 pop         ecx
  00401FB3: 5B                 pop         ebx
  00401FB4: C3                 ret
_dispsib:
  00401FB5: 50                 push        eax
  00401FB6: 53                 push        ebx
  00401FB7: 51                 push        ecx
  00401FB8: 52                 push        edx
  00401FB9: 33 DB              xor         ebx,ebx
  00401FBB: 84 C0              test        al,al
  00401FBD: 75 0A              jne         00401FC9
  00401FBF: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  00401FC6: 43                 inc         ebx
  00401FC7: EB 30              jmp         00401FF9
  00401FC9: 79 0A              jns         00401FD5
  00401FCB: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],2Dh
            2D
  00401FD2: 43                 inc         ebx
  00401FD3: F6 D8              neg         al
  00401FD5: B9 0A 00 00 00     mov         ecx,0Ah
  00401FDA: 51                 push        ecx
  00401FDB: 3C 00              cmp         al,0
  00401FDD: 74 0C              je          00401FEB
  00401FDF: 32 E4              xor         ah,ah
  00401FE1: F6 F1              div         al,cl
  00401FE3: 80 C4 30           add         ah,30h
  00401FE6: 8A D4              mov         dl,ah
  00401FE8: 52                 push        edx
  00401FE9: EB F0              jmp         00401FDB
  00401FEB: 5A                 pop         edx
  00401FEC: 3B D1              cmp         edx,ecx
  00401FEE: 74 09              je          00401FF9
  00401FF0: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  00401FF6: 43                 inc         ebx
  00401FF7: EB F2              jmp         00401FEB
  00401FF9: 6A F5              push        0F5h
  00401FFB: E8 EA 01 00 00     call        _GetStdHandle@4
  00402000: 6A 00              push        0
  00402002: 68 33 51 40 00     push        405133h
  00402007: 53                 push        ebx
  00402008: 68 34 50 40 00     push        405034h
  0040200D: 50                 push        eax
  0040200E: E8 E3 01 00 00     call        _WriteConsoleA@20
  00402013: 5A                 pop         edx
  00402014: 59                 pop         ecx
  00402015: 5B                 pop         ebx
  00402016: 58                 pop         eax
  00402017: C3                 ret
_dispsiw:
  00402018: 50                 push        eax
  00402019: 53                 push        ebx
  0040201A: 51                 push        ecx
  0040201B: 52                 push        edx
  0040201C: 33 DB              xor         ebx,ebx
  0040201E: 66 85 C0           test        ax,ax
  00402021: 75 0A              jne         0040202D
  00402023: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  0040202A: 43                 inc         ebx
  0040202B: EB 34              jmp         00402061
  0040202D: 79 0B              jns         0040203A
  0040202F: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],2Dh
            2D
  00402036: 43                 inc         ebx
  00402037: 66 F7 D8           neg         ax
  0040203A: B9 0A 00 00 00     mov         ecx,0Ah
  0040203F: 51                 push        ecx
  00402040: 66 83 F8 00        cmp         ax,0
  00402044: 74 0D              je          00402053
  00402046: 66 33 D2           xor         dx,dx
  00402049: 66 F7 F1           div         ax,cx
  0040204C: 66 83 C2 30        add         dx,30h
  00402050: 52                 push        edx
  00402051: EB ED              jmp         00402040
  00402053: 5A                 pop         edx
  00402054: 3B D1              cmp         edx,ecx
  00402056: 74 09              je          00402061
  00402058: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  0040205E: 43                 inc         ebx
  0040205F: EB F2              jmp         00402053
  00402061: 6A F5              push        0F5h
  00402063: E8 82 01 00 00     call        _GetStdHandle@4
  00402068: 6A 00              push        0
  0040206A: 68 33 51 40 00     push        405133h
  0040206F: 53                 push        ebx
  00402070: 68 34 50 40 00     push        405034h
  00402075: 50                 push        eax
  00402076: E8 7B 01 00 00     call        _WriteConsoleA@20
  0040207B: 5A                 pop         edx
  0040207C: 59                 pop         ecx
  0040207D: 5B                 pop         ebx
  0040207E: 58                 pop         eax
  0040207F: C3                 ret
_dispsid:
  00402080: 50                 push        eax
  00402081: 53                 push        ebx
  00402082: 51                 push        ecx
  00402083: 52                 push        edx
  00402084: 33 DB              xor         ebx,ebx
  00402086: 85 C0              test        eax,eax
  00402088: 75 0A              jne         00402094
  0040208A: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  00402091: 43                 inc         ebx
  00402092: EB 2F              jmp         004020C3
  00402094: 79 0A              jns         004020A0
  00402096: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],2Dh
            2D
  0040209D: 43                 inc         ebx
  0040209E: F7 D8              neg         eax
  004020A0: B9 0A 00 00 00     mov         ecx,0Ah
  004020A5: 51                 push        ecx
  004020A6: 83 F8 00           cmp         eax,0
  004020A9: 74 0A              je          004020B5
  004020AB: 33 D2              xor         edx,edx
  004020AD: F7 F1              div         eax,ecx
  004020AF: 83 C2 30           add         edx,30h
  004020B2: 52                 push        edx
  004020B3: EB F1              jmp         004020A6
  004020B5: 5A                 pop         edx
  004020B6: 3B D1              cmp         edx,ecx
  004020B8: 74 09              je          004020C3
  004020BA: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  004020C0: 43                 inc         ebx
  004020C1: EB F2              jmp         004020B5
  004020C3: 6A F5              push        0F5h
  004020C5: E8 20 01 00 00     call        _GetStdHandle@4
  004020CA: 6A 00              push        0
  004020CC: 68 33 51 40 00     push        405133h
  004020D1: 53                 push        ebx
  004020D2: 68 34 50 40 00     push        405034h
  004020D7: 50                 push        eax
  004020D8: E8 19 01 00 00     call        _WriteConsoleA@20
  004020DD: 5A                 pop         edx
  004020DE: 59                 pop         ecx
  004020DF: 5B                 pop         ebx
  004020E0: 58                 pop         eax
  004020E1: C3                 ret
_dispuib:
  004020E2: 50                 push        eax
  004020E3: 53                 push        ebx
  004020E4: 51                 push        ecx
  004020E5: 52                 push        edx
  004020E6: 33 DB              xor         ebx,ebx
  004020E8: 84 C0              test        al,al
  004020EA: 75 0A              jne         004020F6
  004020EC: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  004020F3: 43                 inc         ebx
  004020F4: EB 24              jmp         0040211A
  004020F6: B9 0A 00 00 00     mov         ecx,0Ah
  004020FB: 51                 push        ecx
  004020FC: 3C 00              cmp         al,0
  004020FE: 74 0C              je          0040210C
  00402100: 32 E4              xor         ah,ah
  00402102: F6 F1              div         al,cl
  00402104: 80 C4 30           add         ah,30h
  00402107: 8A D4              mov         dl,ah
  00402109: 52                 push        edx
  0040210A: EB F0              jmp         004020FC
  0040210C: 5A                 pop         edx
  0040210D: 3B D1              cmp         edx,ecx
  0040210F: 74 09              je          0040211A
  00402111: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  00402117: 43                 inc         ebx
  00402118: EB F2              jmp         0040210C
  0040211A: 6A F5              push        0F5h
  0040211C: E8 C9 00 00 00     call        _GetStdHandle@4
  00402121: 6A 00              push        0
  00402123: 68 33 51 40 00     push        405133h
  00402128: 53                 push        ebx
  00402129: 68 34 50 40 00     push        405034h
  0040212E: 50                 push        eax
  0040212F: E8 C2 00 00 00     call        _WriteConsoleA@20
  00402134: 5A                 pop         edx
  00402135: 59                 pop         ecx
  00402136: 5B                 pop         ebx
  00402137: 58                 pop         eax
  00402138: C3                 ret
_dispuiw:
  00402139: 50                 push        eax
  0040213A: 53                 push        ebx
  0040213B: 51                 push        ecx
  0040213C: 52                 push        edx
  0040213D: 33 DB              xor         ebx,ebx
  0040213F: 66 85 C0           test        ax,ax
  00402142: 75 0A              jne         0040214E
  00402144: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  0040214B: 43                 inc         ebx
  0040214C: EB 27              jmp         00402175
  0040214E: B9 0A 00 00 00     mov         ecx,0Ah
  00402153: 51                 push        ecx
  00402154: 66 83 F8 00        cmp         ax,0
  00402158: 74 0D              je          00402167
  0040215A: 66 33 D2           xor         dx,dx
  0040215D: 66 F7 F1           div         ax,cx
  00402160: 66 83 C2 30        add         dx,30h
  00402164: 52                 push        edx
  00402165: EB ED              jmp         00402154
  00402167: 5A                 pop         edx
  00402168: 3B D1              cmp         edx,ecx
  0040216A: 74 09              je          00402175
  0040216C: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  00402172: 43                 inc         ebx
  00402173: EB F2              jmp         00402167
  00402175: 6A F5              push        0F5h
  00402177: E8 6E 00 00 00     call        _GetStdHandle@4
  0040217C: 6A 00              push        0
  0040217E: 68 33 51 40 00     push        405133h
  00402183: 53                 push        ebx
  00402184: 68 34 50 40 00     push        405034h
  00402189: 50                 push        eax
  0040218A: E8 67 00 00 00     call        _WriteConsoleA@20
  0040218F: 5A                 pop         edx
  00402190: 59                 pop         ecx
  00402191: 5B                 pop         ebx
  00402192: 58                 pop         eax
  00402193: C3                 ret
_dispuid:
  00402194: 50                 push        eax
  00402195: 53                 push        ebx
  00402196: 51                 push        ecx
  00402197: 52                 push        edx
  00402198: 33 DB              xor         ebx,ebx
  0040219A: 85 C0              test        eax,eax
  0040219C: 75 0A              jne         004021A8
  0040219E: C6 83 34 50 40 00  mov         byte ptr [ebx+405034h],30h
            30
  004021A5: 43                 inc         ebx
  004021A6: EB 23              jmp         004021CB
  004021A8: B9 0A 00 00 00     mov         ecx,0Ah
  004021AD: 51                 push        ecx
  004021AE: 83 F8 00           cmp         eax,0
  004021B1: 74 0A              je          004021BD
  004021B3: 33 D2              xor         edx,edx
  004021B5: F7 F1              div         eax,ecx
  004021B7: 83 C2 30           add         edx,30h
  004021BA: 52                 push        edx
  004021BB: EB F1              jmp         004021AE
  004021BD: 5A                 pop         edx
  004021BE: 3B D1              cmp         edx,ecx
  004021C0: 74 09              je          004021CB
  004021C2: 88 93 34 50 40 00  mov         byte ptr [ebx+405034h],dl
  004021C8: 43                 inc         ebx
  004021C9: EB F2              jmp         004021BD
  004021CB: 6A F5              push        0F5h
  004021CD: E8 18 00 00 00     call        _GetStdHandle@4
  004021D2: 6A 00              push        0
  004021D4: 68 33 51 40 00     push        405133h
  004021D9: 53                 push        ebx
  004021DA: 68 34 50 40 00     push        405034h
  004021DF: 50                 push        eax
  004021E0: E8 11 00 00 00     call        _WriteConsoleA@20
  004021E5: 5A                 pop         edx
  004021E6: 59                 pop         ecx
  004021E7: 5B                 pop         ebx
  004021E8: 58                 pop         eax
  004021E9: C3                 ret
_GetStdHandle@4:
  004021EA: FF 25 70 60 40 00  jmp         dword ptr [__imp__GetStdHandle@4]
_ReadConsoleA@20:
  004021F0: FF 25 74 60 40 00  jmp         dword ptr [__imp__ReadConsoleA@20]
_WriteConsoleA@20:
  004021F6: FF 25 78 60 40 00  jmp         dword ptr [__imp__WriteConsoleA@20]
_GetConsoleMode@8:
  004021FC: FF 25 7C 60 40 00  jmp         dword ptr [__imp__GetConsoleMode@8]
_SetConsoleMode@8:
  00402202: FF 25 80 60 40 00  jmp         dword ptr [__imp__SetConsoleMode@8]
  00402208: CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC CC  ................
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
  00403668: CC CC CC CC CC CC CC CC CC 00 00 00 00 00 00 00  ................

  Summary

        1000 .data
        1000 .idata
        1000 .rdata
        1000 .reloc
        3000 .text
