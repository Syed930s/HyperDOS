00000000  EB1B              jmp short 0x1d
00000002  43                inc bx
00000003  4F                dec di
00000004  4E                dec si
00000005  46                inc si
00000006  49                dec cx
00000007  47                inc di
00000008  06                push es
00000009  0000              add [bx+si],al
0000000B  0102              add [bp+si],ax
0000000D  0001              add [bx+di],al
0000000F  006E75            add [bp+0x75],ch
00000012  7365              jnc 0x79
00000014  640807            or [fs:bx],al
00000017  06                push es
00000018  050403            add ax,0x304
0000001B  0201              add al,[bx+di]
0000001D  E96EB4            jmp 0xb48e
00000020  B90D5A            mov cx,0x5a0d
00000023  BE18B4            mov si,0xb418
00000026  89F7              mov di,si
00000028  1E                push ds
00000029  A9B580            test ax,0x80b5
0000002C  8CC8              mov ax,cs
0000002E  050500            add ax,0x5
00000031  8ED8              mov ds,ax
00000033  05A306            add ax,0x6a3
00000036  8EC0              mov es,ax
00000038  FD                std
00000039  F3A5              rep movsw
0000003B  FC                cld
0000003C  2E806C1210        sub byte [cs:si+0x12],0x10
00000041  73E7              jnc 0x2a
00000043  92                xchg ax,dx
00000044  AF                scasw
00000045  AD                lodsw
00000046  0E                push cs
00000047  0E                push cs
00000048  06                push es
00000049  1F                pop ds
0000004A  07                pop es
0000004B  16                push ss
0000004C  BD0B00            mov bp,0xb
0000004F  BBAF80            mov bx,0x80af
00000052  55                push bp
00000053  CB                retf
00000054  005550            add [di+0x50],dl
00000057  58                pop ax
00000058  210D              and [di],cx
0000005A  0303              add ax,[bp+di]
0000005C  0A24              or ah,[si]
0000005E  E7AE              out 0xae,ax
00000060  CB                retf
00000061  FB                sti
00000062  EBF5              jmp short 0x59
00000064  DC08              fmul qword [bx+si]
00000066  0A01              or al,[bx+di]
00000068  8AB30028          mov dh,[bp+di+0x2800]
0000006C  0A01              or al,[bx+di]
0000006E  0003              add [bp+di],al
00000070  FF                db 0xff
00000071  EB14              jmp short 0x87
00000073  43                inc bx
00000074  4F                dec di
00000075  4E                dec si
00000076  46                inc si
00000077  49                dec cx
00000078  47                inc di
00000079  FB                sti
0000007A  0C00              or al,0x0
0000007C  0001              add [bx+di],al
0000007E  0202              add al,[bp+si]
00000080  7D00              jnl 0x82
00000082  FD                std
00000083  0229              add ch,[bx+di]
00000085  DF05              fild word [di]
00000087  50                push ax
00000088  53                push bx
00000089  9C                pushf
0000008A  B831FF            mov ax,0xff31
0000008D  0E                push cs
0000008E  BBF000            mov bx,0xf0
00000091  CD10              int 0x10
00000093  9D                popf
00000094  5B                pop bx
00000095  FB                sti
00000096  58                pop ax
00000097  EA909E691B        jmp 0x1b69:0x9e90
0000009C  59                pop cx
0000009D  0014              add [si],dl
0000009F  5F                pop di
000000A0  E8EA04            call 0x58d
000000A3  6306E327          arpl [0x27e3],ax
000000A7  DC27              fsub qword [bx]
000000A9  D527              aad 0x27
000000AB  CE                into
000000AC  BF0435            mov di,0x3504
000000AF  CB                retf
000000B0  EB9F              jmp short 0x51
000000B2  104B42            adc [bp+di+0x42],cl
000000B5  E400              in al,0x0
000000B7  EBF4              jmp short 0xad
000000B9  3DBD04            cmp ax,0x4bd
000000BC  97                xchg ax,di
000000BD  14DF              adc al,0xdf
000000BF  21C8              and ax,cx
000000C1  A80C              test al,0xc
000000C3  CA8793            retf 0x9387
000000C6  2032              and [bp+si],dh
000000C8  B51C              mov ch,0x1c
000000CA  7E80              jng 0x4c
000000CC  C8A07269          enter 0x72a0,0x69
000000D0  035E21            add bx,[bp+0x21]
000000D3  C8540C49          enter 0xc54,0x49
000000D7  873F              xchg [bx],di
000000D9  2032              and [bp+si],dh
000000DB  341C              xor al,0x1c
000000DD  2A80C81F          sub al,[bx+si+0x1fc8]
000000E1  7215              jc 0xf8
000000E3  030A              add cx,[bp+si]
000000E5  21FC              and sp,di
000000E7  0004              add [si],al
000000E9  CB                retf
000000EA  0010              add [bx+si],dl
000000EC  3C1E              cmp al,0x1e
000000EE  13F3              adc si,bx
000000F0  15CF19            adc ax,0x19cf
000000F3  1B25              sbb sp,[di]
000000F5  77D9              ja 0xd0
000000F7  127F31            adc bh,[bx+0x31]
000000FA  C08ED8A096        ror byte [bp-0x5f28],byte 0x96
000000FF  04FF              add al,0xff
00000101  2410              and al,0x10
00000103  2EA22A01          mov [cs:0x12a],al
00000107  E995FF            jmp 0x9f
0000010A  01E3              add bx,sp
0000010C  06                push es
0000010D  E81800            call 0x128
00000110  AA                stosb
00000111  E2FE              loop 0x111
00000113  FA                cli
00000114  E98A01            jmp 0x2a1
00000117  2E8A265FCD        mov ah,[cs:0xcd5f]
0000011C  16                push ss
0000011D  3CE0              cmp al,0xe0
0000011F  FF7506            push word [di+0x6]
00000122  08E4              or ah,ah
00000124  7402              jz 0x128
00000126  B000              mov al,0x0
00000128  B7C3              mov bh,0xc3
0000012A  2C2E              sub al,0x2e
0000012C  86FF              xchg bh,bh
0000012E  06                push es
0000012F  2901              sub [bx+di],ax
00000131  08C0              or al,al
00000133  7517              jnz 0x14c
00000135  E8FFE0            call 0xe237
00000138  FF09              dec word [bx+di]
0000013A  C0                db 0xc0
0000013B  74EE              jz 0x12b
0000013D  3D00DB            cmp ax,0xdb00
00000140  7275              jc 0x1b7
00000142  1910              sbb [bx+si],dx
00000144  7711              ja 0x157
00000146  052E88            add ax,0x882e
00000149  B726              mov bh,0x26
0000014B  1AC3              sbb al,bl
0000014D  2EB1A0            cs mov cl,0xa0
00000150  1F                pop ds
00000151  DB1EB43E          fistp dword [0x3eb4]
00000155  0223              add ah,[bp+di]
00000157  74EE              jz 0x147
00000159  24E8              and al,0xe8
0000015B  BC2A6F            mov sp,0x6f2a
0000015E  1F                pop ds
0000015F  E8AEFF            call 0x110
00000162  D8EB              fsubr st3
00000164  E12F              loope 0x195
00000166  3F                aas
00000167  2EC51E0902        lds bx,[cs:0x209]
0000016C  FF807F02          inc word [bx+si+0x27f]
00000170  06                push es
00000171  7403              jz 0x176
00000173  8847ED            mov [bx-0x13],al
00000176  0DE91E            or ax,0x1ee9
00000179  79FF              jns 0x17a
0000017B  2F                das
0000017C  01E8              add ax,bp
0000017E  0300              add ax,[bx+si]
00000180  E91501            jmp 0x298
00000183  7562              jnz 0x1e7
00000185  A2AC41            mov [0x41ac],al
00000188  3DB636            cmp ax,0x36b6
0000018B  CB                retf
0000018C  77F0              ja 0x17e
0000018E  6F                outsw
0000018F  0F                db 0x0f
00000190  C3                ret
00000191  E3D9              jcxz 0x16c
00000193  FF268A05          jmp [0x58a]
00000197  47                inc di
00000198  CD29              int 0x29
0000019A  E2F8              loop 0x194
0000019C  FB                sti
0000019D  E9EF00            jmp 0x28f
000001A0  2EC686BF03CF      mov byte [cs:bp+0x3bf],0xcf
000001A6  50                push ax
000001A7  56                push si
000001A8  57                push di
000001A9  55                push bp
000001AA  C6                db 0xc6
000001AB  53                push bx
000001AC  B4D2              mov ah,0xd2
000001AE  CD07              int 0x7
000001B0  5B                pop bx
000001B1  FF5D5F            call far [di+0x5f]
000001B4  5E                pop si
000001B5  58                pop ax
000001B6  CF                iret
000001B7  1E                push ds
000001B8  50                push ax
000001B9  B8FF40            mov ax,0x40ff
000001BC  008ED880          add [bp-0x7f28],cl
000001C0  0E                push cs
000001C1  7100              jno 0x1c3
000001C3  F280581FCF        repne sbb byte [bx+si+0x1f],0xcf
000001C8  7B2E              jpo 0x1f8
000001CA  896DBF            mov [di-0x41],bp
000001CD  2E8C060B02        mov [cs:0x20b],es
000001D2  CB                retf
000001D3  FF56BE            call [bp-0x42]
000001D6  2206EB47          and al,[0x47eb]
000001DA  56                push si
000001DB  50                push ax
000001DC  6E                outsb
000001DD  66EB16            o32 jmp short 0x1f6
000001E0  DD05              fld qword [di]
000001E2  30C0              xor al,al
000001E4  BB58EB            mov bx,0xeb58
000001E7  0E                push cs
000001E8  07                pop es
000001E9  7FB0              jg 0x19b
000001EB  01B402EB          add [si-0x14fe],si
000001EF  06                push es
000001F0  37                aaa
000001F1  02B403EE          add dh,[si-0x11fd]
000001F5  BE5206            mov si,0x652
000001F8  C9                leave
000001F9  8511              test [bx+di],dx
000001FB  5A                pop dx
000001FC  BF221F            mov di,0x1f22
000001FF  EB12              jmp short 0x213
00000201  7E1D              jng 0x220
00000203  EB0C              jmp short 0x211
00000205  F61B              neg byte [bp+di]
00000207  213F              and [bx],di
00000209  03EB              add bp,bx
0000020B  00BE3A6D          add [bp+0x6d3a],bh
0000020F  42                inc dx
00000210  05BF48            add ax,0x48bf
00000213  20065051          and [0x5150],al
00000217  52                push dx
00000218  6F                outsw
00000219  7F1E              jg 0x239
0000021B  06                push es
0000021C  53                push bx
0000021D  6E                outsb
0000021E  B10D              mov cl,0xd
00000220  02C7              add al,bh
00000222  D12EF6FD          shr word [0xfdf6],1
00000226  0480              add al,0x80
00000228  7420              jz 0x24a
0000022A  8A47BF            mov al,[bx-0x41]
0000022D  083A              or [bp+si],bh
0000022F  0477              add al,0x77
00000231  6298FFD1          bound bx,[bx+si-0x2e01]
00000235  E001              loopne 0x238
00000237  C6                db 0xc6
00000238  97                xchg ax,di
00000239  1E                push ds
0000023A  53                push bx
0000023B  89FF              mov di,di
0000023D  E52E              in ax,0x2e
0000023F  8E1E2701          mov ds,[0x127]
00000243  FC                cld
00000244  2EF8              cs clc
00000246  FF5401            call [si+0x1]
00000249  59                pop cx
0000024A  59                pop cx
0000024B  56                push si
0000024C  D31F              rcr word [bx],cl
0000024E  FF01              inc word [bx+di]
00000250  8A670D            mov ah,[bx+0xd]
00000253  8B4F12            mov cx,[bx+0x12]
00000256  F6                db 0xf6
00000257  8B5714            mov dx,[bx+0x14]
0000025A  97                xchg ax,di
0000025B  2C0C              sub al,0xc
0000025D  359FC4            xor ax,0xc49f
00000260  7F0E              jg 0x270
00000262  61                popa
00000263  2BEC              sub bp,sp
00000265  6401525B          add [fs:bp+si+0x5b],dx
00000269  A889              test al,0x89
0000026B  EC                in al,dx
0000026C  47                inc di
0000026D  12B40BDB          adc dh,[si-0x24f5]
00000271  0903              or [bp+di],ax
00000273  ED                in ax,dx
00000274  5B                pop bx
00000275  07                pop es
00000276  1F                pop ds
00000277  E7FB              out 0xfb,ax
00000279  5A                pop dx
0000027A  59                pop cx
0000027B  58                pop ax
0000027C  5E                pop si
0000027D  CB                retf
0000027E  A976EB            test ax,0xeb76
00000281  EA8DB117B7        jmp 0xb717:0xb18d
00000286  294AB4            sub [bp+si-0x4c],cx
00000289  81FBEBDC          cmp bx,0xdceb
0000028D  2E8B16877E        mov dx,[cs:0x7e87]
00000292  C3                ret
00000293  56                push si
00000294  0FDA12            pminub mm2,[bp+si]
00000297  17                pop ss
00000298  D85610            fcom dword [bp+0x10]
0000029B  BBE205            mov bx,0x5e2
0000029E  9C                pushf
0000029F  53                push bx
000002A0  DBBB0226          fstp tword [bp+di+0x2602]
000002A4  057606            add ax,0x676
000002A7  FC                cld
000002A8  02EF              add ch,bh
000002AA  AC                lodsb
000002AB  89E0              mov ax,sp
000002AD  8CD2              mov dx,ss
000002AF  ED                in ax,dx
000002B0  9C                pushf
000002B1  59                pop cx
000002B2  FA                cli
000002B3  61                popa
000002B4  95                xchg ax,bp
000002B5  16                push ss
000002B6  BF2C27            mov di,0x272c
000002B9  51                push cx
000002BA  9D                popf
000002BB  50                push ax
000002BC  52                push dx
000002BD  C21E55            ret 0x551e
000002C0  42                inc dx
000002C1  FD                std
000002C2  06                push es
000002C3  0FA0              push fs
000002C5  0FA8              push gs
000002C7  8B7675            mov si,[bp+0x75]
000002CA  61                popa
000002CB  36235D04          and bx,[ss:di+0x4]
000002CF  09365F02          or [0x25f],si
000002D3  DD                db 0xdd
000002D4  AB                stosw
000002D5  2E                cs
000002D6  C4                db 0xc4
000002D7  D7                xlatb
000002D8  5D                pop bp
000002D9  26767C            es jna 0x358
000002DC  0FA9              pop gs
000002DE  0FA1              pop fs
000002E0  07                pop es
000002E1  2F                das
000002E2  5F                pop di
000002E3  5D                pop bp
000002E4  1F                pop ds
000002E5  5A                pop dx
000002E6  FD                std
000002E7  58                pop ax
000002E8  FA                cli
000002E9  8ED2              mov ss,dx
000002EB  89C4              mov sp,ax
000002ED  DF815B9D          fild word [bx+di-0x62a5]
000002F1  CB                retf
000002F2  E315              jcxz 0x309
000002F4  C7                db 0xc7
000002F5  E89B40            call 0x4393
000002F8  61                popa
000002F9  8607              xchg [bx],al
000002FB  F0B107            lock mov cl,0x7
000002FE  E8A381            call 0x84a4
00000301  257178            and ax,0x7871
00000304  F9                stc
00000305  BE3AF6            mov si,0xf63a
00000308  E94FFF            jmp 0x25a
0000030B  17                pop ss
0000030C  4E                dec si
0000030D  E858FF            call 0x268
00000310  00F6              add dh,dh
00000312  C40E740A          les cx,[0xa74]
00000316  83C485            add sp,byte -0x7b
00000319  0245FF            add al,[di-0x1]
0000031C  0CB0              or al,0xb0
0000031E  E955FF            jmp 0x276
00000321  C3                ret
00000322  E86EDF            call 0xe293
00000325  008A2A08          add [bp+si+0x82a],cl
00000329  DDE8              fucomp st0
0000032B  361B01            sbb ax,[ss:bx+di]
0000032E  FE                db 0xfe
0000032F  741F              jz 0x350
00000331  E926FF            jmp 0x25a
00000334  E85ACF            call 0xd291
00000337  1310              adc dx,[bx+si]
00000339  E89122            call 0x25cd
0000033C  E50B              in ax,0xb
0000033E  E8C3FF            call 0x304
00000341  46                inc si
00000342  008807E9          add [bx+si-0x16f9],cl
00000346  B5FD              mov ch,0xfd
00000348  E9B51B            jmp 0x1f00
0000034B  0A6FC1            or ch,[bx-0x3f]
0000034E  A820              test al,0x20
00000350  74B5              jz 0x307
00000352  F619              neg byte [bx+di]
00000354  BE04F1            mov si,0xf104
00000357  E9F8FE            jmp 0x252
0000035A  DA                db 0xda
0000035B  F3E8D6C6          rep call 0xca35
0000035F  47                inc di
00000360  FB                sti
00000361  15FFCD            adc ax,0xcdff
00000364  1405              adc al,0x5
00000366  7820              js 0x388
00000368  00C6              add dh,al
0000036A  5F                pop di
0000036B  F7E9              imul cx
0000036D  E3FE              jcxz 0x36d
0000036F  E38F              jcxz 0x300
00000371  8F                db 0x8f
00000372  180B              sbb [bp+di],cl
00000374  22E8              and ch,al
00000376  DA                db 0xda
00000377  E6FF              out 0xff,al
00000379  27                daa
0000037A  17                pop ss
0000037B  7E05              jng 0x382
0000037D  B0FF              mov al,0xff
0000037F  0AE9              or ch,cl
00000381  E8FEE2            call 0xe682
00000384  EBE9              jmp short 0x36f
00000386  C9                leave
00000387  FE                db 0xfe
00000388  FE                db 0xfe
00000389  E8ECFE            call 0x278
0000038C  89D3              mov bx,dx
0000038E  81171111          adc word [bx],0x1111
00000392  C3                ret
00000393  5A                pop dx
00000394  FB                sti
00000395  C101C2            rol word [bx+di],byte 0xc2
00000398  E317              jcxz 0x3b1
0000039A  11DD              adc bp,bx
0000039C  009D2EB5          add [di-0x4ad2],bl
000003A0  0072D4            add [bp+si-0x2c],dh
000003A3  36B4B6            ss mov ah,0xb6
000003A6  2F                das
000003A7  2409              and al,0x9
000003A9  FF0647E2          inc word [0xe247]
000003AD  E9E99A            jmp 0x9e99
000003B0  FE                db 0xfe
000003B1  FB                sti
000003B2  4B                dec bx
000003B3  75E6              jnz 0x39b
000003B5  E9AE34            jmp 0x3866
000003B8  6D                insw
000003B9  1110              adc [bx+si],dx
000003BB  EE                out dx,al
000003BC  F8                clc
000003BD  B009              mov al,0x9
000003BF  72DC              jc 0x39d
000003C1  75F1              jnz 0x3b4
000003C3  4F                dec di
000003C4  ED                in ax,dx
000003C5  1394FEDF          adc dx,[si-0x2002]
000003C9  30A1FECD          xor [bx+di-0x3202],ah
000003CD  17                pop ss
000003CE  88FB              mov bl,bh
000003D0  E024              loopne 0x3f6
000003D2  303C              xor [si],bh
000003D4  305F76            xor [bx+0x76],bl
000003D7  7410              jz 0x3e9
000003D9  18C6              sbb dh,al
000003DB  290F              sub [bx],cx
000003DD  DE7424            fidiv word [si+0x24]
000003E0  EB0D              jmp short 0x3ef
000003E2  022D              add ch,[di]
000003E4  61                popa
000003E5  3C77              cmp al,0x77
000003E7  46                inc si
000003E8  07                pop es
000003E9  FF1F              call far [bx]
000003EB  89FE              mov si,di
000003ED  51                push cx
000003EE  53                push bx
000003EF  31DB              xor bx,bx
000003F1  4B                dec bx
000003F2  361E              ss push ds
000003F4  1B3D              sbb di,[di]
000003F6  D185E360          rol word [di+0x60e3],1
000003FA  F7                db 0xf7
000003FB  8F                db 0x8f
000003FC  1204              adc al,[si]
000003FE  5B                pop bx
000003FF  CE                into
00000400  250B77            and ax,0x770b
00000403  46                inc si
00000404  E1F6              loope 0x3fc
00000406  59                pop cx
00000407  FE                db 0xfe
00000408  7417              jz 0x421
0000040A  AC                lodsb
0000040B  30E4              xor ah,ah
0000040D  E8B5DF            call 0xe3c5
00000410  0F                db 0x0f
00000411  0FE2D8            psrad mm3,mm0
00000414  1F                pop ds
00000415  08B77EE9          or [bx-0x1682],dh
00000419  23FE              and di,si
0000041B  59                pop cx
0000041C  CB                retf
0000041D  0CC2              or al,0xc2
0000041F  38FE              cmp dh,bh
00000421  71CD              jno 0x3f0
00000423  3E80E97D          ds sub cl,0x7d
00000427  0D0519            or ax,0x1905
0000042A  7BE9              jpo 0x415
0000042C  1F                pop ds
0000042D  FE                db 0xfe
0000042E  A27F45            mov [0x457f],al
00000431  0E                push cs
00000432  26C47D13          les di,[es:di+0x13]
00000436  61                popa
00000437  55                push bp
00000438  7F3C              jg 0x476
0000043A  657407            gs jz 0x444
0000043D  3CFC              cmp al,0xfc
0000043F  45                inc bp
00000440  75DF              jnz 0x421
00000442  268B0D            mov cx,[es:di]
00000445  6BDA0F            imul bx,dx,byte +0xf
00000448  82                db 0x82
00000449  A1A542            mov ax,[0x42a5]
0000044C  C6                db 0xc6
0000044D  DB                db 0xdb
0000044E  FD                std
0000044F  67F0E336          lock jecxz 0x489
00000453  8BABB509          mov bp,[bp+di+0x9b5]
00000457  58                pop ax
00000458  083F              or [bx],bh
0000045A  83EB13            sub bx,byte +0x13
0000045D  52                push dx
0000045E  50                push ax
0000045F  E91E8C            jmp 0x9080
00000462  C80D6DA1          enter 0x6d0d,0xa1
00000466  F2D6              repne salc
00000468  3B06EDE1          cmp ax,[0xe1ed]
0000046C  762B              jna 0x499
0000046E  FE4602            inc byte [bp+0x2]
00000471  85FC              test sp,di
00000473  F606008B26        test byte [0x8b00],0x26
00000478  11B61BA1          adc [bp-0x5ee5],si
0000047C  97                xchg ax,di
0000047D  1929              sbb [bx+di],bp
0000047F  06                push es
00000480  6F                outsw
00000481  089CFF1F          or [si+0x1fff],bl
00000485  DD                db 0xdd
00000486  FA                cli
00000487  0107              add [bx],ax
00000489  58                pop ax
0000048A  875AD9            xchg [bp+si-0x27],bx
0000048D  B61F              mov dh,0x1f
0000048F  06                push es
00000490  5B                pop bx
00000491  1AB3CFEF          sbb dh,[bp+di-0x1031]
00000495  15EBF3            adc ax,0xf3eb
00000498  5A                pop dx
00000499  05AD70            add ax,0x70ad
0000049C  46                inc si
0000049D  F8                clc
0000049E  800F02            or byte [bx],0x2
000004A1  1A02              sbb al,[bp+si]
000004A3  3A4F20            cmp cl,[bx+0x20]
000004A6  FB                sti
000004A7  006C11            add [si+0x11],ch
000004AA  B240              mov dl,0x40
000004AC  A0F920            mov al,[0x20f9]
000004AF  025052            add dl,[bx+si+0x52]
000004B2  3B7E23            cmp di,[bp+0x23]
000004B5  A6                cmpsb
000004B6  00F9              add cl,bh
000004B8  46                inc si
000004B9  024155            add al,[bx+di+0x55]
000004BC  58                pop ax
000004BD  199005BE          sbb [bx+si-0x41fb],dx
000004C1  644C              fs dec sp
000004C3  50                push ax
000004C4  54                push sp
000004C5  31F9              xor cx,di
000004C7  11A2062E          adc [bp+si+0x2e06],sp
000004CB  7932              jns 0x4ff
000004CD  E4B4              in al,0xb4
000004CF  1936EF33          sbb [0x33ef],si
000004D3  47                inc di
000004D4  92                xchg ax,dx
000004D5  C6                db 0xc6
000004D6  5B                pop bx
000004D7  6B4DBE31          imul cx,[di-0x42],byte +0x31
000004DB  11D8              adc ax,bx
000004DD  41                inc cx
000004DE  9E                sahf
000004DF  4C                dec sp
000004E0  3279EA            xor bh,[bx+di-0x16]
000004E3  06                push es
000004E4  52                push dx
000004E5  7933              jns 0x51a
000004E7  E4FC              in al,0xfc
000004E9  1958E7            sbb [bx+si-0x19],bx
000004EC  34CB              xor al,0xcb
000004EE  0E                push cs
000004EF  06                push es
000004F0  0837              or [bx],dh
000004F2  0803              or [bp+di],al
000004F4  43                inc bx
000004F5  F9                stc
000004F6  4C                dec sp
000004F7  4F                dec di
000004F8  43                inc bx
000004F9  4B                dec bx
000004FA  246E              and al,0x6e
000004FC  FF00              inc word [bx+si]
000004FE  DBC2              fcmovnb st2
00000500  0811              or [bx+di],dl
00000502  0F8103F1          jno near 0xf609
00000506  D901              fld dword [bx+di]
00000508  FC                cld
00000509  0A2B              or ch,[bp+di]
0000050B  01D0              add ax,dx
0000050D  02BFE802          add bh,[bx+0x2e8]
00000511  3B01              cmp ax,[bx+di]
00000513  7B37              jpo 0x54c
00000515  B501              mov ch,0x1
00000517  D433              aam 0x33
00000519  0F5B17            cvtdq2ps xmm2,[bx]
0000051C  D09302FF          rcl byte [bp+di-0xfe],1
00000520  6703AA039603E4    add bp,[edx-0x1bfc69fd]
00000527  03BAED01          add di,[bp+si+0x1ed]
0000052B  C9                leave
0000052C  B699              mov dh,0x99
0000052E  18C3              sbb bl,al
00000530  17                pop ss
00000531  EC                in al,dx
00000532  C602E4            mov byte [bp+si],0xe4
00000535  09761A            or [bp+0x1a],si
00000538  0401              add al,0x1
0000053A  EC                in al,dx
0000053B  3C04              cmp al,0x4
0000053D  15DF05            adc ax,0x5df
00000540  749F              jz 0x4e1
00000542  04BA              add al,0xba
00000544  0461              add al,0x61
00000546  27                daa
00000547  C4                db 0xc4
00000548  E8845B            call 0x60cf
0000054B  896B72            mov [bp+di+0x72],bp
0000054E  0001              add [bx+di],al
00000550  04DC              add al,0xdc
00000552  0317              add dx,[bx]
00000554  F69F1747          neg byte [bx+0x4717]
00000558  48                dec ax
00000559  7DD7              jnl 0x532
0000055B  0280156B          add al,[bx+si+0x6b15]
0000055F  61                popa
00000560  7F5E              jg 0x5c0
00000562  126312            adc ah,[bp+di+0x12]
00000565  4E                dec si
00000566  55                push bp
00000567  844C6B            test [si+0x6b],cl
0000056A  58                pop ax
0000056B  1C0D              sbb al,0xd
0000056D  018B0100          add [bp+di+0x1],cx
00000571  0A5862            or bl,[bx+si+0x62]
00000574  6C                insb
00000575  6B6D0501          imul bp,[di+0x5],byte +0x1
00000579  06                push es
0000057A  12E4              adc ah,ah
0000057C  94                xchg ax,sp
0000057D  188EAC77          sbb [bp+0x77ac],cl
00000581  0358F6            add bx,[bx+si-0xa]
00000584  1923              sbb [bp+di],sp
00000586  2970EC            sub [bx+si-0x14],si
00000589  05BF73            add ax,0x73bf
0000058C  2103              and [bp+di],ax
0000058E  3E03B6D900        add si,[ds:bp+0xd9]
00000593  8C3F              mov [bx],segr7
00000595  2D00C9            sub ax,0xc900
00000598  050010            add ax,0x1000
0000059B  53                push bx
0000059C  80608501          and byte [bx+si-0x7b],0x1
000005A0  312F              xor [bx],bp
000005A2  C3                ret
000005A3  9E                sahf
000005A4  AF                scasw
000005A5  16                push ss
000005A6  015F00            add [bx+0x0],bx
000005A9  0C0D              or al,0xd
000005AB  21B0358E          and [bx+si-0x71cb],si
000005AF  01C2              add dx,ax
000005B1  189801F4          sbb [bx+si-0xbff],bl
000005B5  877BD9            xchg [bp+di-0x27],di
000005B8  0002              add [bp+si],al
000005BA  223F              and bh,[bx]
000005BC  BE033E            mov si,0x3e03
000005BF  0492              add al,0x92
000005C1  000A              add [bp+si],cl
000005C3  6490              fs nop
000005C5  02AA1900          add ch,[bp+si+0x19]
000005C9  2228              and ch,[bx+si]
000005CB  A7                cmpsw
000005CC  0243FF            add al,[bp+di-0x1]
000005CF  52                push dx
000005D0  656D              gs insw
000005D2  6F                outsw
000005D3  7665              jna 0x63a
000005D5  2064FD            and [si-0x3],ah
000005D8  69736B6574        imul si,[bp+di+0x6b],word 0x7465
000005DD  74BB              jz 0x59a
000005DF  08696E            or [bx+di+0x6e],ch
000005E2  0B7772            or si,[bx+0x72]
000005E5  69117458          imul dx,[bx+di],word 0x5874
000005E9  3A0A              cmp cl,[bp+si]
000005EB  4E                dec si
000005EC  08C0              or al,al
000005EE  009AB585          add [bp+si-0x7a4b],bl
000005F2  17                pop ss
000005F3  EF                out dx,ax
000005F4  F015D903          lock adc ax,0x3d9
000005F8  52                push dx
000005F9  7D15              jnl 0x610
000005FB  53                push bx
000005FC  EAFE0F0270        jmp 0x7002:0xffe
00000601  000653BB          add [0xbb53],al
00000605  DE04              fiadd word [si]
00000607  8EC3              mov es,bx
00000609  2681B1D12F5904    xor word [es:bx+di+0x2fd1],0x459
00000610  7506              jnz 0x618
00000612  F626C747          mul byte [0x47c7]
00000616  12E9              adc ch,cl
00000618  F1                int1
00000619  26814F1B645B      or word [es:bx+0x1b],0x5b64
0000061F  FF07              inc word [bx]
00000621  CB                retf
00000622  CF                iret
00000623  E88700            call 0x6ad
00000626  CB                retf
00000627  EAD12E1577        jmp 0x7715:0x2ed1
0000062C  A100EA            mov ax,[0xea00]
0000062F  A3BA01            mov [0x1ba],ax
00000632  07                pop es
00000633  7659              jna 0x68e
00000635  A5                movsw
00000636  E56E              in ax,0x6e
00000638  CD89              int 0x89
0000063A  02662C            add ah,[bp+0x2c]
0000063D  81F25ECF          xor dx,0xcf5e
00000641  7056              jo 0x699
00000643  6C                insb
00000644  1F                pop ds
00000645  34F6              xor al,0xf6
00000647  4E                dec si
00000648  07                pop es
00000649  CF                iret
0000064A  82                db 0x82
0000064B  46                inc si
0000064C  2C87              sub al,0x87
0000064E  F23EE6D5          ds repne out 0xd5,al
00000652  00973612          add [bx+0x1236],dl
00000656  0434              add al,0x34
00000658  2EB9DD10          cs mov cx,0x10dd
0000065C  A5                movsw
0000065D  26CD02            es int 0x2
00000660  141E              adc al,0x1e
00000662  2CB3              sub al,0xb3
00000664  F016              lock push ss
00000666  4F                dec di
00000667  B9B4FF            mov cx,0xffb4
0000066A  05532E            add ax,0x2e53
0000066D  FF1EFA12          call far [0x12fa]
00000671  5B                pop bx
00000672  F9                stc
00000673  CB                retf
00000674  B406              mov ah,0x6
00000676  EBF4              jmp short 0x66c
00000678  BA1E06            mov dx,0x61e
0000067B  50                push ax
0000067C  0D6FDB            or ax,0xdb6f
0000067F  0C13              or al,0x13
00000681  0406              add al,0x6
00000683  F7                db 0xf7
00000684  0E                push cs
00000685  133EA1A4          adc di,[0xa4a1]
00000689  6D                insw
0000068A  3B063FDB          cmp ax,[0xdb3f]
0000068E  7528              jnz 0x6b8
00000690  0A02              or al,[bp+si]
00000692  3C12              cmp al,0x12
00000694  B21D              mov dl,0x1d
00000696  CF                iret
00000697  0414              add al,0x14
00000699  2C12              sub al,0x12
0000069B  B306              mov bl,0x6
0000069D  CB                retf
0000069E  16                push ss
0000069F  07                pop es
000006A0  D09AFE6F          rcr byte [bp+si+0x6ffe],1
000006A4  D5EB              aad 0xeb
000006A6  C3                ret
000006A7  58                pop ax
000006A8  FE07              inc byte [bx]
000006AA  1F                pop ds
000006AB  C3                ret
000006AC  2E833EFAEB28      cmp word [cs:0xebfa],byte +0x28
000006B2  0807              or [bx],al
000006B4  A5                movsw
000006B5  FC                cld
000006B6  FD                std
000006B7  7407              jz 0x6c0
000006B9  50                push ax
000006BA  9A0813BF1B        call 0x1bbf:0x1308
000006BF  58                pop ax
000006C0  CF                iret
000006C1  B003              mov al,0x3
000006C3  CF                iret
000006C4  FC                cld
000006C5  004572            add [di+0x72],al
000006C8  726F              jc 0x739
000006CA  727E              jc 0x74a
000006CC  097468            or [si+0x68],si
000006CF  37                aaa
000006D0  07                pop es
000006D1  44                inc sp
000006D2  4A                dec dx
000006D3  FE                db 0xfe
000006D4  206D65            and [di+0x65],ch
000006D7  636861            arpl [bx+si+0x61],bp
000006DA  6E                outsb
000006DB  37                aaa
000006DC  216D21            and [di+0x21],bp
000006DF  1B12              sbb dx,[bp+si]
000006E1  49                dec cx
000006E2  FF6E73            jmp far [bp+0x73]
000006E5  657274            gs jc 0x75c
000006E8  005072            add [bx+si+0x72],dl
000006EB  F66573            mul byte [di+0x73]
000006EE  7320              jnc 0x710
000006F0  14E3              adc al,0xe3
000006F2  7920              jns 0x714
000006F4  365B              ss pop bx
000006F6  0374FD            add si,[si-0x3]
000006F9  6F                outsw
000006FA  20636F            and [bp+di+0x6f],ah
000006FD  6E                outsb
000006FE  74B6              jz 0x6b6
00000700  31752F            xor [di+0x2f],si
00000703  DB2E0020          fld tword [0x2000]
00000707  6F                outsw
00000708  264E              es dec si
0000070A  4F                dec di
0000070B  20F0              and al,dh
0000070D  4E                dec si
0000070E  41                inc cx
0000070F  4D                dec bp
00000710  45                inc bp
00000711  5F                pop di
00000712  A946F7            test ax,0xf746
00000715  41                inc cx
00000716  54                push sp
00000717  3F                aas
00000718  3F                aas
00000719  08FE              or dh,bh
0000071B  4C                dec sp
0000071C  42                inc dx
0000071D  41                inc cx
0000071E  2D5472            sub ax,0x7254
00000721  DD34              fnsave [si]
00000723  7366              jnc 0x78b
00000725  BB4220            mov bx,0x2042
00000728  65641B3A          sbb di,[fs:bp+si]
0000072C  387679            cmp [bp+0x79],dh
0000072F  6C                insb
00000730  37                aaa
00000731  DD6410            frstor [si+0x10]
00000734  3EFB              ds sti
00000736  2031              and [bx+di],dh
00000738  3032              xor [bp+si],dh
0000073A  333A              xor di,[bp+si]
0000073C  7F0A              jg 0x748
0000073E  50                push ax
0000073F  41                inc cx
00000740  4E                dec si
00000741  49                dec cx
00000742  43                inc bx
00000743  6B1808            imul bx,[bx+si],byte +0x8
00000746  7853              js 0x79b
00000748  7973              jns 0x7bd
0000074A  DD916D20          fst qword [bx+di+0x206d]
0000074E  B67B              mov dh,0x7b
00000750  6C                insb
00000751  06                push es
00000752  FD                std
00000753  64005E43          add [fs:bp+0x43],bl
00000757  0D42A5            or ax,0xa542
0000075A  B55C              mov ch,0x5c
0000075C  92                xchg ax,dx
0000075D  00FB              add bl,bh
0000075F  58                pop ax
00000760  20999DA8          and [bx+di-0x5763],bl
00000764  73DB              jnc 0x741
00000766  697A7962DD        imul di,[bp+si+0x79],word 0xdd62
0000076B  61                popa
0000076C  64A000EE          mov al,[fs:0xee00]
00000770  52                push dx
00000771  756E              jnz 0x7e1
00000773  15C66B            adc ax,0x6bc6
00000776  64                fs
00000777  D0                db 0xd0
00000778  B643              mov dh,0x43
0000077A  42                inc dx
0000077B  DB12              fist dword [bp+si]
0000077D  2025              and [di],ah
0000077F  DB                db 0xdb
00000780  B62F              mov dh,0x2f
00000782  B74F              mov bh,0x4f
00000784  6A30              push byte +0x30
00000786  789E              js 0x726
00000788  0078C6            add [bx+si-0x3a],bh
0000078B  097735            or [bx+0x35],si
0000078E  E5AC              in ax,0xac
00000790  55                push bp
00000791  095F24            or [bx+0x24],bx
00000794  44                inc sp
00000795  DD5042            fst qword [bx+si+0x42]
00000798  3B766D            cmp si,[bp+0x6d]
0000079B  69759F1300        imul si,[di-0x61],word 0x13
000007A0  3A3B              cmp bh,[bp+di]
000007A2  FF2C              jmp far [si]
000007A4  3D2B20            cmp ax,0x202b
000007A7  0900              or [bx+si],ax
000007A9  2F                das
000007AA  5C                pop sp
000007AB  FE                db 0xfe
000007AC  225B5D            and bl,[bp+di+0x5d]
000007AF  3C3E              cmp al,0x3e
000007B1  7C2E              jl 0x7e1
000007B3  C510              lds dx,[bx+si]
000007B5  BD0F4D            mov bp,0x4d0f
000007B8  43                inc bx
000007B9  42                inc dx
000007BA  9B73F1            wait jnc 0x7ae
000007BD  9B                wait
000007BE  C1                db 0xc1
000007BF  75BF              jnz 0x780
000007C1  7099              jo 0x75c
000007C3  6265B5            bound sp,[di-0x4b]
000007C6  660BBB7F34        or edi,[bp+di+0x347f]
000007CB  61                popa
000007CC  3A581E            cmp bl,[bx+si+0x1e]
000007CF  07                pop es
000007D0  61                popa
000007D1  B666              mov dh,0x66
000007D3  0572C2            add ax,0xc272
000007D6  1D96AD            sbb ax,0xad96
000007D9  FB                sti
000007DA  696D706CE6        imul bp,[di+0x70],word 0xe66c
000007DF  7765              ja 0x846
000007E1  6E                outsb
000007E2  0D0674            or ax,0x7406
000007E5  752B              jnz 0x812
000007E7  6E                outsb
000007E8  A98684            test ax,0x8486
000007EB  61                popa
000007EC  6F                outsw
000007ED  5E                pop si
000007EE  6D                insw
000007EF  661B856354        sbb eax,[di+0x5463]
000007F4  0B5820            or bx,[bx+si+0x20]
000007F7  FF494E            dec word [bx+di+0x4e]
000007FA  54                push sp
000007FB  32462F            xor al,[bp+0x2f]
000007FE  3132              xor [bp+si],si
00000800  95                xchg ax,bp
00000801  00ED              add ch,ch
00000803  17                pop ss
00000804  2BB06D40          sub si,[bx+si+0x406d]
00000808  ED                in ax,dx
00000809  2C24              sub al,0x24
0000080B  C26972            ret 0x7269
0000080E  25FD5F            and ax,0x5ffd
00000811  6D                insw
00000812  63623D            arpl [bp+si+0x3d],sp
00000815  B61D              mov dh,0x1d
00000817  7085              jo 0x79e
00000819  DB                db 0xdb
0000081A  76EB              jna 0x807
0000081C  6E                outsb
0000081D  FB                sti
0000081E  6F                outsw
0000081F  744D              jz 0x86e
00000821  5A                pop dx
00000822  00D6              add dh,dl
00000824  10D0              adc al,dl
00000826  61                popa
00000827  6D                insw
00000828  B6B7              mov dh,0xb7
0000082A  7355              jnc 0x881
0000082C  FE                db 0xfe
0000082D  6720436F          and [ebx+0x6f],al
00000831  6D                insw
00000832  6D                insw
00000833  157AB3            adc ax,0xb37a
00000836  61                popa
00000837  49                dec cx
00000838  B928C1            mov cx,0xc128
0000083B  0563B7            add ax,0xb763
0000083E  20450E            and [di+0xe],al
00000841  87E8              xchg ax,bp
00000843  756D              jnz 0x8b2
00000845  6C                insb
00000846  B676              mov dh,0x76
00000848  7308              jnc 0x852
0000084A  BA0563            mov dx,0x6305
0000084D  C12B0D            shr word [bp+di],byte 0xd
00000850  99                cwd
00000851  657724            gs ja 0x878
00000854  5C                pop sp
00000855  44                inc sp
00000856  45                inc bp
00000857  F8                clc
00000858  56                push si
00000859  5C                pop sp
0000085A  0007              add [bx],al
0000085C  0AFD              or bh,ch
0000085E  056765            add ax,0x6567
00000861  C11D43            rcr word [di],byte 0x43
00000864  7770              ja 0x8d6
00000866  61                popa
00000867  083B              or [bp+di],bh
00000869  682079            push word 0x7920
0000086C  6B48AB9A          imul cx,[bx+si-0x55],byte -0x66
00000870  26DD39            fnstsw [es:bx+di]
00000873  6B61B69D          imul sp,[bx+di-0x4a],byte -0x63
00000877  30A3FF33          xor [bp+di+0x33ff],ah
0000087B  3435              xor al,0x35
0000087D  3637              ss aaa
0000087F  3839              cmp [bx+di],bh
00000881  ED                in ax,dx
00000882  61                popa
00000883  626325            bound sp,[bp+di+0x25]
00000886  B766              mov bh,0x66
00000888  85560D            test [bp+0xd],dx
0000088B  F66405            mul byte [si+0x5]
0000088E  A10705            mov ax,[0x507]
00000891  FF6D0C            jmp far [di+0xc]
00000894  8606660D          xchg [0xd66],al
00000898  667607            o32 jna 0x8a2
0000089B  6D                insw
0000089C  0C76              or al,0x76
0000089E  11FD              adc bp,di
000008A0  7306              jnc 0x8a8
000008A2  7E06              jng 0x8aa
000008A4  8AD7              mov dl,bh
000008A6  135601            adc dx,[bp+0x1]
000008A9  79A7              jns 0x852
000008AB  08560D            or [bp+0xd],dl
000008AE  FF                db 0xff
000008AF  DD05              fld qword [di]
000008B1  2F                das
000008B2  06                push es
000008B3  C3                ret
000008B4  07                pop es
000008B5  5F                pop di
000008B6  6301              arpl [bx+di],ax
000008B8  37                aaa
000008B9  0F00591A          ltr [bx+di+0x1a]
000008BD  48                dec ax
000008BE  8145780238        add word [di+0x78],0x3802
000008C3  16                push ss
000008C4  DD9A04BA          fstp qword [bp+si-0x45fc]
000008C8  DC04              fadd qword [si]
000008CA  053C17            add ax,0x173c
000008CD  B90654            mov cx,0x5406
000008D0  B90756            mov cx,0x5607
000008D3  187601            sbb [bp+0x1],dh
000008D6  1C27              sbb al,0x27
000008D8  2D2DA0            sub ax,0xa02d
000008DB  246F              and al,0x6f
000008DD  F8                clc
000008DE  2C00              sub al,0x0
000008E0  2E00E6            cs add dh,ah
000008E3  2D003A            sub ax,0x3a00
000008E6  4B                dec bx
000008E7  57                push di
000008E8  D9750E            fnstenv [di+0xe]
000008EB  80BF019A45        cmp byte [bx-0x65ff],0x45
000008F0  41                inc cx
000008F1  8E41ED            mov es,[bx+di-0x13]
000008F4  8F804500          pop word [bx+si+0x45]
000008F8  97                xchg ax,di
000008F9  49                dec cx
000008FA  8E8FFF90          mov cs,[bx-0x6f01]
000008FE  92                xchg ax,dx
000008FF  92                xchg ax,dx
00000900  4F                dec di
00000901  99                cwd
00000902  4F                dec di
00000903  55                push bp
00000904  55                push bp
00000905  FF5999            call far [bx+di-0x67]
00000908  9A9B9C9D9E        call 0x9e9d:0x9c9b
0000090D  9F                lahf
0000090E  DB4149            fild dword [bx+di+0x49]
00000911  0CA5              or al,0xa5
00000913  FFA5A6A7          jmp [di-0x585a]
00000917  A8A9              test al,0xa9
00000919  AA                stosb
0000091A  AB                stosw
0000091B  AC                lodsb
0000091C  FFADAEAF          jmp far [di-0x5052]
00000920  B0B1              mov al,0xb1
00000922  B2B3              mov dl,0xb3
00000924  B4FF              mov ah,0xff
00000926  B5B6              mov ch,0xb6
00000928  B7B8              mov bh,0xb8
0000092A  B9BABB            mov cx,0xbbba
0000092D  BCFFBD            mov sp,0xbdff
00000930  BEBFC0            mov si,0xc0bf
00000933  C1C2C3            rol dx,byte 0xc3
00000936  C4                db 0xc4
00000937  FFC5              inc bp
00000939  C6C7C8            mov bh,0xc8
0000093C  C9                leave
0000093D  CACBCC            retf 0xcccb
00000940  FFCD              dec bp
00000942  CE                into
00000943  CF                iret
00000944  D0D1              rcl cl,1
00000946  D2D3              rcl bl,cl
00000948  D4FF              aam 0xff
0000094A  D5D6              aad 0xd6
0000094C  D7                xlatb
0000094D  D8D9              fcomp st1
0000094F  DADB              fcmovu st3
00000951  DCFF              fdiv to st7
00000953  DDDE              fstp st6
00000955  DFE0              fnstsw ax
00000957  E1E2              loope 0x93b
00000959  E3E4              jcxz 0x93f
0000095B  FFE5              jmp bp
0000095D  E6E7              out 0xe7,al
0000095F  E8E9EA            call 0xf44b
00000962  EBEC              jmp short 0x950
00000964  FF                db 0xff
00000965  ED                in ax,dx
00000966  EE                out dx,al
00000967  EF                out dx,ax
00000968  F0F1              lock int1
0000096A  F2F3F4            rep hlt
0000096D  FFF5              push bp
0000096F  F6F7              div bh
00000971  F8                clc
00000972  F9                stc
00000973  FA                cli
00000974  FB                sti
00000975  FC                cld
00000976  EC                in al,dx
00000977  FD                std
00000978  FE                db 0xfe
00000979  FF81AAB4          inc word [bx+di-0x4b56]
0000097D  B5F6              mov ch,0xf6
0000097F  8EB03141          mov segr6,[bx+si+0x4131]
00000983  BEE7EE            mov si,0xeee7
00000986  0E                push cs
00000987  2E2237            and dh,[cs:bx]
0000098A  CB                retf
0000098B  5B                pop bx
0000098C  5D                pop bp
0000098D  FC                cld
0000098E  3A7C3C            cmp bh,[si+0x3c]
00000991  3E2B3D            sub di,[ds:di]
00000994  A83B              test al,0x3b
00000996  ED                in ax,dx
00000997  0203              add al,[bp+di]
00000999  FF04              inc word [si]
0000099B  050607            add ax,0x706
0000099E  0809              or [bx+di],cl
000009A0  0A0B              or cl,[bp+di]
000009A2  FF0C              dec word [si]
000009A4  0D0E0F            or ax,0xf0e
000009A7  1011              adc [bx+di],dl
000009A9  1213              adc dl,[bp+di]
000009AB  FF14              call [si]
000009AD  151617            adc ax,0x1716
000009B0  1819              sbb [bx+di],bl
000009B2  1A1B              sbb bl,[bp+di]
000009B4  FF1C              call far [si]
000009B6  1D1E1F            sbb ax,0x1f1e
000009B9  2021              and [bx+di],ah
000009BB  2223              and ah,[bp+di]
000009BD  FF24              jmp [si]
000009BF  252627            and ax,0x2726
000009C2  2829              sub [bx+di],ch
000009C4  2A2B              sub ch,[bp+di]
000009C6  F02C2D            lock sub al,0x2d
000009C9  2E2F              cs das
000009CB  96                xchg ax,si
000009CC  DB970A3C          fist dword [bx+0x3c0a]
000009D0  3DFC3E            cmp ax,0x3efc
000009D3  3F                aas
000009D4  40                inc ax
000009D5  41                inc cx
000009D6  42                inc dx
000009D7  43                inc bx
000009D8  6F                outsw
000009D9  184647            sbb [bp+0x47],al
000009DC  48                dec ax
000009DD  FA                cli
000009DE  49                dec cx
000009DF  4A                dec dx
000009E0  4B                dec bx
000009E1  4C                dec sp
000009E2  4D                dec bp
000009E3  55                push bp
000009E4  F04B              lock dec bx
000009E6  2153AA            and [bp+di-0x56],dx
000009E9  54                push sp
000009EA  5F                pop di
000009EB  0F58595A          addps xmm3,oword [bx+di+0x5a]
000009EF  5B                pop bx
000009F0  FB                sti
000009F1  5C                pop sp
000009F2  5D                pop bp
000009F3  5E                pop si
000009F4  5F                pop di
000009F5  60                pusha
000009F6  1F                pop ds
000009F7  0AFF              or bh,bh
000009F9  7B7C              jpo 0xa77
000009FB  7D7E              jnl 0xa7b
000009FD  7F43              jg 0xa42
000009FF  855519            test [di+0x19],dx
00000A02  7400              jz 0xa04
00000A04  43                inc bx
00000A05  2619D7            es sbb di,dx
00000A08  080D              or [di],cl
00000A0A  61                popa
00000A0B  4F                dec di
00000A0C  4F                dec di
00000A0D  19DB              sbb bx,bx
00000A0F  0324              add sp,[si]
00000A11  7800              js 0xa13
00000A13  7C19              jl 0xa2e
00000A15  4E                dec si
00000A16  4E                dec si
00000A17  B33F              mov bl,0x3f
00000A19  F22122            repne and [bp+si],sp
00000A1C  2215              and dl,[di]
00000A1E  325345            xor dl,[bp+di+0x45]
00000A21  83CF03            or di,byte +0x3
00000A24  F4                hlt
00000A25  1F                pop ds
00000A26  003B              add [bp+di],bh
00000A28  00A932F6          add [bx+di-0x9ce],ch
00000A2C  63974D7F          arpl [bx+0x7f4d],dx
00000A30  00D4              add ah,dl
00000A32  00F3              add bl,dh
00000A34  0011              add [bx+di],dl
00000A36  FE01              inc byte [bx+di]
00000A38  3001              xor [bx+di],al
00000A3A  4E                dec si
00000A3B  016D01            add [di+0x1],bp
00000A3E  FF19              call far [bx+di]
00000A40  3C00              cmp al,0x0
00000A42  5B                pop bx
00000A43  00FC              add ah,bh
00000A45  7900              jns 0xa47
00000A47  98                cbw
00000A48  00B6000A          add [bp+0xa00],dh
00000A4C  B405              mov ah,0x5
00000A4E  7EFF              jng 0xa4f
00000A50  1201              adc al,[bx+di]
00000A52  3101              xor [bx+di],ax
00000A54  4F                dec di
00000A55  016E01            add [bp+0x1],bp
00000A58  A5                movsw
00000A59  46                inc si
00000A5A  41                inc cx
00000A5B  F5                cmc
00000A5C  6544              gs inc sp
00000A5E  4F                dec di
00000A5F  53                push bx
00000A60  C9                leave
00000A61  FE                db 0xfe
00000A62  AE                scasb
00000A63  6565FF32          push word [gs:bp+si]
00000A67  3034              xor [si],dh
00000A69  3320              xor sp,[bx+si]
00000A6B  286275            sub [bp+si+0x75],ah
00000A6E  EC                in al,dx
00000A6F  696C640BFD        imul bp,[si+0x64],word 0xfd0b
00000A74  4F                dec di
00000A75  45                inc bp
00000A76  4D                dec bp
00000A77  3A6F47            cmp ch,[bx+0x47]
00000A7A  666429D3          fs sub ebx,edx
00000A7E  205B4D            and [bp+di+0x4d],bl
00000A81  5A                pop dx
00000A82  7017              jo 0xa9b
00000A84  9BDC4D61          wait fmul qword [di+0x61]
00000A88  AD                lodsw
00000A89  79E3              jns 0xa6e
00000A8B  BB341F            mov bx,0x1f34
00000A8E  3231              xor dh,[bx+di]
00000A90  D15D0A            rcr word [di+0xa],1
00000A93  75BD              jnz 0xa52
00000A95  0CBC              or al,0xbc
00000A97  01060A0F          add [0xf0a],ax
00000A9B  01D0              add ax,dx
00000A9D  6C                insb
00000A9E  13D8              adc bx,ax
00000AA0  7619              jna 0xabb
00000AA2  22409E            and al,[bx+si-0x62]
00000AA5  59                pop cx
00000AA6  0044AA            add [si-0x56],al
00000AA9  DFC0              ffreep st0
00000AAB  51                push cx
00000AAC  89C6              mov si,ax
00000AAE  89FF              mov di,di
00000AB0  D8F7              fdiv st7
00000AB2  E291              loop 0xa45
00000AB4  F7E6              mul si
00000AB6  01C1              add cx,ax
00000AB8  FF89F0F7          dec word [bx+di-0x810]
00000ABC  E301              jcxz 0xabf
00000ABE  CA595E            retf 0x5e59
00000AC1  E0C3              loopne 0xa86
00000AC3  85C9              test cx,cx
00000AC5  DF0E39DA          fisttp word [0xda39]
00000AC9  7205              jc 0xad0
00000ACB  F69192F7          not byte [bx+di-0x86e]
00000ACF  F319FF            rep sbb di,di
00000AD2  F389D3            rep mov bx,dx
00000AD5  89CA              mov dx,cx
00000AD7  31C9              xor cx,cx
00000AD9  85C3              test bx,ax
00000ADB  92                xchg ax,dx
00000ADC  FF5250            call [bp+si+0x50]
00000ADF  89DE              mov si,bx
00000AE1  89CF              mov di,cx
00000AE3  D1EA              shr dx,1
00000AE5  FFD1              call cx
00000AE7  D8D1              fcom st1
00000AE9  E9D1DB            jmp 0xe6bd
00000AEC  75F6              jnz 0xae4
00000AEE  6F                outsw
00000AEF  1A5B89            sbb bl,[bp+di-0x77]
00000AF2  C1FFF7            sar di,byte 0xf7
00000AF5  E75A              out 0x5a,ax
00000AF7  29C2              sub dx,ax
00000AF9  52                push dx
00000AFA  89C8              mov ax,cx
00000AFC  6E                outsb
00000AFD  41                inc cx
00000AFE  29C3              sub bx,ax
00000B00  DF05              fild word [di]
00000B02  59                pop cx
00000B03  19D1              sbb cx,dx
00000B05  19FF              sbb di,di
00000B07  D221              shl byte [bx+di],cl
00000B09  D6                salc
00000B0A  21D7              and di,dx
00000B0C  01F3              add bx,si
00000B0E  11FD              adc bp,di
00000B10  F9                stc
00000B11  01D0              add ax,dx
00000B13  31D2              xor dx,dx
00000B15  5F                pop di
00000B16  AC                lodsb
00000B17  4E                dec si
00000B18  A3A255            mov [0x55a2],ax
00000B1B  2F                das
00000B1C  259C55            and ax,0x559c
00000B1F  89FF              mov di,di
00000B21  E550              in ax,0x50
00000B23  8B4602            mov ax,[bp+0x2]
00000B26  874606            xchg [bp+0x6],ax
00000B29  B789              mov bh,0x89
00000B2B  05585D            add ax,0x5d58
00000B2E  FF80F924          inc word [bx+si+0x24f9]
00000B32  7705              ja 0xb39
00000B34  88CC              mov ah,cl
00000B36  E9FFB3            jmp 0xbf38
00000B39  00B000CF          add [bx+si-0x3100],dh
00000B3D  B10C              mov cl,0xc
00000B3F  89FF              mov di,di
00000B41  D0D3              rcl bl,1
00000B43  E8240F            call 0x1a6a
00000B46  3C0A              cmp al,0xa
00000B48  1CC4              sbb al,0xc4
00000B4A  692FDF9C          imul bp,[bx],word 0x9cdf
00000B4E  B40E              mov ah,0xe
00000B50  CD10              int 0x10
00000B52  80F8E9            cmp al,0xe9
00000B55  0473              add al,0x73
00000B57  E9C335            jmp 0x411d
00000B5A  06                push es
00000B5B  62                db 0x62
00000B5C  C3                ret
00000B5D  BCFE5D            mov sp,0x5dfe
00000B60  B776              mov bh,0x76
00000B62  C06964C1          shr byte [bx+di+0x64],byte 0xc1
00000B66  FA                cli
00000B67  58                pop ax
00000B68  6D                insw
00000B69  7A11              jpe 0xb7c
00000B6B  D6                salc
00000B6C  6F                outsw
00000B6D  2C85              sub al,0x85
00000B6F  F07461            lock jz 0xbd3
00000B72  6328              arpl [bx+si],bp
00000B74  F73B              idiv word [bp+di]
00000B76  28BE0F01          sub [bp+0x10f],bh
00000B7A  2F                das
00000B7B  800484            add byte [si],0x84
00000B7E  C0EC74            shr ah,byte 0x74
00000B81  0A463C            or al,[bp+0x3c]
00000B84  1DEBEF            sbb ax,0xefeb
00000B87  BF6D31            mov di,0x316d
00000B8A  F6                db 0xf6
00000B8B  8B12              mov dx,[bp+si]
00000B8D  E8F6A4            call 0xb086
00000B90  FFB0200E          push word [bx+si+0xe20]
00000B94  FF4646            inc word [bp+0x46]
00000B97  83FE1A            cmp si,byte +0x1a
00000B9A  72F0              jc 0xb8c
00000B9C  FC                cld
00000B9D  B00D              mov al,0xd
00000B9F  CD10              int 0x10
00000BA1  B00A              mov al,0xa
00000BA3  BFB87F            mov di,0x7fb8
00000BA6  4C                dec sp
00000BA7  CD21              int 0x21
00000BA9  F7FB              idiv bx
00000BAB  F4                hlt
00000BAC  EBFD              jmp short 0xbab
00000BAE  5D                pop bp
00000BAF  83079A            add word [bx],byte -0x66
00000BB2  55                push bp
00000BB3  16                push ss
00000BB4  C270BC            ret 0xbc70
00000BB7  E91AE4            jmp 0xefd4
00000BBA  D6                salc
00000BBB  654D              gs dec bp
00000BBD  8D0A              lea cx,[bp+si]
00000BBF  E0EB              loopne 0xbac
00000BC1  B0FC              mov al,0xfc
00000BC3  25ECFD            and ax,0xfdec
00000BC6  C0                db 0xc0
00000BC7  B070              mov al,0x70
00000BC9  8ED8              mov ds,ax
00000BCB  BE2F3A            mov si,0x3a2f
00000BCE  B90500            mov cx,0x5
00000BD1  FE                db 0xfe
00000BD2  FA                cli
00000BD3  AC                lodsb
00000BD4  89C7              mov di,ax
00000BD6  C1E702            shl di,byte 0x2
00000BD9  97                xchg ax,di
00000BDA  BCE2F6            mov sp,0xf6e2
00000BDD  E9CD19            jmp 0x25ad
00000BE0  B4E8              mov ah,0xe8
00000BE2  7DFC              jnl 0xbe0
00000BE4  25743C            and ax,0x3c74
00000BE7  B004              mov al,0x4
00000BE9  352F7B            xor ax,0x7b2f
00000BEC  FB                sti
00000BED  06                push es
00000BEE  1E                push ds
00000BEF  FE                db 0xfe
00000BF0  55                push bp
00000BF1  57                push di
00000BF2  56                push si
00000BF3  52                push dx
00000BF4  51                push cx
00000BF5  53                push bx
00000BF6  50                push ax
00000BF7  D0                db 0xd0
00000BF8  7007              jo 0xc01
00000BFA  1BF4              sbb si,sp
00000BFC  8B1631B6          mov dx,[0xb631]
00000C00  85DA              test dx,bx
00000C02  1BF6              sbb si,si
00000C04  33740F            xor si,[si+0xf]
00000C07  04F2              add al,0xf2
00000C09  50                push ax
00000C0A  740A              jz 0xc16
00000C0C  F251              repne push cx
00000C0E  7405              jz 0xc15
00000C10  8D2D              lea bp,[di]
00000C12  FF30              push word [bx+si]
00000C14  E88900            call 0xca0
00000C17  16                push ss
00000C18  55                push bp
00000C19  E80680            call 0x8c22
00000C1C  6337              arpl [bx],si
00000C1E  D7                xlatb
00000C1F  7206              jc 0xc27
00000C21  55                push bp
00000C22  A2FCDF            mov [0xdffc],al
00000C25  8188C3D1E36F      or word [bx+si-0x2e3d],0x6fe3
00000C2B  01268917          add [0x1789],sp
00000C2F  F1                int1
00000C30  268C5F02          mov [es:bx+0x2],ds
00000C34  6D                insw
00000C35  76CF              jna 0xc06
00000C37  8013FF            adc byte [bp+di],0xff
00000C3A  C41F              les bx,[bx]
00000C3C  CF                iret
00000C3D  8CD6              mov si,ss
00000C3F  8C16FB86          mov [0x86fb],ss
00000C43  05892E            add ax,0x2e89
00000C46  843E44A2          test [0xa244],bh
00000C4A  2EDF977410        fist word [cs:bx+0x1074]
00000C4F  B9A080            mov cx,0x80a0
00000C52  07                pop es
00000C53  3B51CC            cmp dx,[bx+di-0x34]
00000C56  FB                sti
00000C57  B756              mov bh,0x56
00000C59  46                inc si
00000C5A  1D68FD            sbb ax,0xfd68
00000C5D  EB25              jmp short 0xc84
00000C5F  FE062103          inc byte [0x321]
00000C63  BD130A            mov bp,0xa13
00000C66  08E4              or ah,ah
00000C68  FF600C            jmp [bx+si+0xc]
00000C6B  7606              jna 0xc73
00000C6D  E828C1            call 0xcd98
00000C70  00B9ACC5          add [bx+di-0x3a54],bh
00000C74  229FFA67          and bl,[bx+0x67fa]
00000C78  FE0E6A20          dec byte [0x206a]
00000C7C  56                push si
00000C7D  9C                pushf
00000C7E  10F8              adc al,bh
00000C80  D6                salc
00000C81  8D66FC            lea sp,[bp-0x4]
00000C84  0396B458          add dx,[bp+0x58b4]
00000C88  5B                pop bx
00000C89  A98EAB            test ax,0xab8e
00000C8C  765D              jna 0xceb
00000C8E  1F                pop ds
00000C8F  69FFA33A          imul di,di,word 0x3aa3
00000C93  0350B4            add dx,[bx+si-0x4c]
00000C96  82                db 0x82
00000C97  CDFF              int 0xff
00000C99  2A58C3            sub bl,[bx+si-0x3d]
00000C9C  83C20F            add dx,byte +0xf
00000C9F  D1DA              rcr dx,1
00000CA1  1C0D              sbb al,0xd
00000CA3  EF                out dx,ax
00000CA4  01B80031          add [bx+si+0x3100],di
00000CA8  E9FC24            jmp 0x31a7
00000CAB  FF                db 0xff
00000CAC  FB                sti
00000CAD  9C                pushf
00000CAE  50                push ax
00000CAF  B85B9C            mov ax,0x9c5b
00000CB2  EBBF              jmp short 0xc73
00000CB4  06                push es
00000CB5  07                pop es
00000CB6  250048            and ax,0x4800
00000CB9  C7                db 0xc7
00000CBA  301EBEB4          xor [0xb4be],bl
00000CBE  E18C              loope 0xc4c
00000CC0  D2FC              sar ah,cl
00000CC2  D9                db 0xd9
00000CC3  DD1EADDB          fstp qword [0xdbad]
00000CC7  51                push cx
00000CC8  DBD3              fcmovnbe st3
00000CCA  BC68FB            mov sp,0xfb68
00000CCD  7BEF              jpo 0xcbe
00000CCF  F9                stc
00000CD0  5B                pop bx
00000CD1  0150E1            add [bx+si-0x1f],dx
00000CD4  E8B773            call 0x808e
00000CD7  E16D              loope 0xd46
00000CD9  06                push es
00000CDA  5B                pop bx
00000CDB  7B63              jpo 0xd40
00000CDD  7E11              jng 0xcf0
00000CDF  687309            push word 0x973
00000CE2  00705B            add [bx+si+0x5b],dh
00000CE5  5B                pop bx
00000CE6  06                push es
00000CE7  FA                cli
00000CE8  EC                in al,dx
00000CE9  9D                popf
00000CEA  CB                retf
00000CEB  BCF604            mov sp,0x4f6
00000CEE  B804C7            mov ax,0xc704
00000CF1  C3                ret
00000CF2  0237              add dh,[bx]
00000CF4  4A                dec dx
00000CF5  8A66C6            mov ah,[bp-0x3a]
00000CF8  048A              add al,0x8a
00000CFA  03FF              add di,di
00000CFC  8B7E08            mov di,[bp+0x8]
00000CFF  8B760A            mov si,[bp+0xa]
00000D02  8BDB              mov bx,bx
00000D04  4E                dec si
00000D05  0C2F              or al,0x2f
00000D07  06                push es
00000D08  FE                db 0xfe
00000D09  3003              xor [bp+di],al
00000D0B  26FF363000        push word [es:0x30]
00000D10  E004              loopne 0xd16
00000D12  2BD3              sub dx,bx
00000D14  03763E            add si,[bp+0x3e]
00000D17  0307              add ax,[bx]
00000D19  E586              in ax,0x86
00000D1B  05C884            add ax,0x84c8
00000D1E  057E89            add ax,0x897e
00000D21  268805            mov [es:di],al
00000D24  D6                salc
00000D25  EB45              jmp short 0xd6c
00000D27  B9CEB9            mov cx,0xb9ce
00000D2A  298E16B2          sub [bp-0x4dea],cx
00000D2E  8B2EB0D3          mov bp,[0xd3b0]
00000D32  7F89              jg 0xcbd
00000D34  CDCD              int 0xcd
00000D36  24FC              and al,0xfc
00000D38  FA                cli
00000D39  6C                insb
00000D3A  98                cbw
00000D3B  2E                cs
00000D3C  DE                db 0xde
00000D3D  DD8ED58B          fisttp qword [bp-0x742b]
00000D41  EE                out dx,al
00000D42  2B8F0684          sub cx,[bx-0x7bfa]
00000D46  EB03              jmp short 0xd4b
00000D48  8607              xchg [bx],al
00000D4A  016B53            add [bp+di+0x53],bp
00000D4D  6516              gs push ss
00000D4F  08B536CD          or [di-0x32ca],dh
00000D53  0440              add al,0x40
00000D55  6B87857B08        imul ax,[bx+0x7b85],byte +0x8
00000D5A  FB                sti
00000D5B  C6                db 0xc6
00000D5C  53                push bx
00000D5D  A10044            mov ax,[0x4400]
00000D60  E83C60            call 0x6d9f
00000D63  2E07              cs pop es
00000D65  C46D02            les bp,[di+0x2]
00000D68  B00A              mov al,0xa
00000D6A  9E                sahf
00000D6B  0110              add [bx+si],dx
00000D6D  46                inc si
00000D6E  037908            add di,[bx+di+0x8]
00000D71  BD023C            mov bp,0x3c02
00000D74  0274B7            add dh,[si-0x49]
00000D77  35E4D3            xor ax,0xd3e4
00000D7A  6D                insw
00000D7B  C3                ret
00000D7C  A1461A            mov ax,[0x1a46]
00000D7F  17                pop ss
00000D80  84615B            test [bx+di+0x5b],ah
00000D83  2074DA            and [si-0x26],dh
00000D86  EC                in al,dx
00000D87  FA                cli
00000D88  76D7              jna 0xd61
00000D8A  5E                pop si
00000D8B  745D              jz 0xdea
00000D8D  2EA4              cs movsb
00000D8F  EC                in al,dx
00000D90  7C4E              jl 0xde0
00000D92  012C              add [si],bp
00000D94  43                inc bx
00000D95  4C                dec sp
00000D96  6F                outsw
00000D97  DE00              fiadd word [bx+si]
00000D99  FB                sti
00000D9A  E9F8F2            jmp 0x95
00000D9D  FD                std
00000D9E  69C08837          imul ax,ax,word 0x3788
00000DA2  C2F618            ret 0x18f6
00000DA5  D2C3              rol bl,cl
00000DA7  53                push bx
00000DA8  9D                popf
00000DA9  FFC3              inc bx
00000DAB  E8C099            call 0xa76e
00000DAE  894767            mov [bx+0x67],ax
00000DB1  FB                sti
00000DB2  895769            mov [bx+0x69],dx
00000DB5  59                pop cx
00000DB6  5B                pop bx
00000DB7  0F4202            cmovc ax,[bp+si]
00000DBA  D1C8              ror ax,1
00000DBC  CD30              int 0x30
00000DBE  14FF              adc al,0xff
00000DC0  89D7              mov di,dx
00000DC2  89CE              mov si,cx
00000DC4  E8A799            call 0xa76e
00000DC7  2B7618            sub si,[bp+0x18]
00000DCA  46                inc si
00000DCB  FE                db 0xfe
00000DCC  37                aaa
00000DCD  FF1B              call far [bp+di]
00000DCF  47                inc di
00000DD0  FF6939            jmp far [bx+di+0x39]
00000DD3  F07707            lock ja 0xddd
00000DD6  750A              jnz 0xde2
00000DD8  3BD2              cmp dx,dx
00000DDA  7EFE              jng 0xdda
00000DDC  19D6              sbb si,dx
00000DDE  B88EC0            mov ax,0xc08e
00000DE1  EB5B              jmp short 0xe3e
00000DE3  D0C9              ror cl,1
00000DE5  F0E98105          lock jmp 0x136a
00000DE9  56                push si
00000DEA  E167              loope 0xe53
00000DEC  3ABE0FB5          cmp bh,[bp-0x4af1]
00000DF0  5E                pop si
00000DF1  0C65              or al,0x65
00000DF3  085A10            or [bp+si+0x10],bl
00000DF6  BE3BBC            mov si,0xbc3b
00000DF9  C6                db 0xc6
00000DFA  26FB              es sti
00000DFC  3A061806          cmp al,[0x618]
00000E00  720F              jc 0xe11
00000E02  51                push cx
00000E03  C1BE5C5D2D        sar word [bp+0x5d5c],byte 0x2d
00000E08  81DCEB24          sbb sp,0x24eb
00000E0C  1BDD              sbb bx,bp
00000E0E  A81A              test al,0x1a
00000E10  76B2              jna 0xdc4
00000E12  0C0C              or al,0xc
00000E14  FF17              call [bx]
00000E16  0FB6F0            movzx si,al
00000E19  01F6              add si,si
00000E1B  656B052E          imul ax,[gs:di],byte +0x2e
00000E1F  7AE8              jpe 0xe09
00000E21  75FF              jnz 0xe22
00000E23  55                push bp
00000E24  DFBF1E8C          fistp qword [bx-0x73e2]
00000E28  EAFF94BCC3        jmp 0xc3bc:0x94ff
00000E2D  155D32            adc ax,0x325d
00000E30  ED                in ax,dx
00000E31  5E                pop si
00000E32  CB                retf
00000E33  93                xchg ax,bx
00000E34  B756              mov bh,0x56
00000E36  7F8B              jg 0xdc3
00000E38  47                inc di
00000E39  C23325            ret 0x2533
00000E3C  0AD1              or dl,cl
00000E3E  3DBC4C            cmp ax,0x4cbc
00000E41  0F859D4B          jnz near 0x59e2
00000E45  CC                int3
00000E46  C0DBE8            rcr bl,byte 0xe8
00000E49  4D                dec bp
00000E4A  27                daa
00000E4B  C6                db 0xc6
00000E4C  6D                insw
00000E4D  71BA              jno 0xe09
00000E4F  DB5DC2            fistp dword [di-0x3e]
00000E52  26386D16          cmp [es:di+0x16],ch
00000E56  5E                pop si
00000E57  FF                db 0xff
00000E58  39D0              cmp ax,dx
00000E5A  7D1A              jnl 0xe76
00000E5C  8A5704            mov dl,[bx+0x4]
00000E5F  3AA95420          cmp ch,[bx+di+0x2054]
00000E63  7F0B              jg 0xe70
00000E65  8B5433            mov dx,[si+0x33]
00000E68  83E2F4            and dx,byte -0xc
00000E6B  3083FA30          xor [bp+di+0x30fa],al
00000E6F  6F                outsw
00000E70  3D4081            cmp ax,0x8140
00000E73  C6                db 0xc6
00000E74  6E                outsb
00000E75  D9EB              fldpi
00000E77  D7                xlatb
00000E78  C22851            ret 0x5128
00000E7B  BF5BB8            mov di,0xb85b
00000E7E  7013              jo 0xe93
00000E80  E8CAED            call 0xfc4d
00000E83  98                cbw
00000E84  EB4F              jmp short 0xed5
00000E86  84C5              test ch,al
00000E88  058AA3            add ax,0xa38a
00000E8B  05127A            add ax,0x7a12
00000E8E  8612              xchg [bp+si],dl
00000E90  3D37BC            cmp ax,0xbc37
00000E93  742B              jz 0xec0
00000E95  FF8A4405          dec word [bp+si+0x544]
00000E99  0441              add al,0x41
00000E9B  A27511            mov [0x1175],al
00000E9E  FF                db 0xff
00000E9F  B85C11            mov ax,0x115c
00000EA2  E8AB98            call 0xa750
00000EA5  B88C6E            mov ax,0x6e8c
00000EA8  24A5              and al,0xa5
00000EAA  98                cbw
00000EAB  E622              out 0x22,al
00000EAD  137262            adc si,[bp+si+0x62]
00000EB0  CB                retf
00000EB1  97                xchg ax,di
00000EB2  93                xchg ax,bx
00000EB3  2F                das
00000EB4  91                xchg ax,cx
00000EB5  98                cbw
00000EB6  E8FF27            call 0x36b8
00000EB9  99                cwd
00000EBA  806433DF          and byte [si+0x33],0xdf
00000EBE  804F024D          or byte [bx+0x2],0x4d
00000EC2  C1BEA9A87C        sar word [bp-0x5757],byte 0x7c
00000EC7  DC25              fsub qword [di]
00000EC9  14CB              adc al,0xcb
00000ECB  6B364470EB        imul si,[0x7044],byte -0x15
00000ED0  03D0              add dx,ax
00000ED2  0C5E              or al,0x5e
00000ED4  F639              idiv byte [bx+di]
00000ED6  51                push cx
00000ED7  B4CB              mov ah,0xcb
00000ED9  F6010A            test byte [bx+di],0xa
00000EDC  8BE7              mov sp,di
00000EDE  100F              adc [bx],cl
00000EE0  77E8              ja 0xeca
00000EE2  37                aaa
00000EE3  FF63DC            jmp [bp+di-0x24]
00000EE6  2E1315            adc dx,[cs:di]
00000EE9  9F                lahf
00000EEA  DBF1              fcomi st1
00000EEC  47                inc di
00000EED  0476              add al,0x76
00000EEF  7B72              jpo 0xf63
00000EF1  98                cbw
00000EF2  3D1B54            cmp ax,0x541b
00000EF5  AE                scasb
00000EF6  CF                iret
00000EF7  367520            ss jnz 0xf1a
00000EFA  856E11            test [bp+0x11],bp
00000EFD  D5BA              aad 0xba
00000EFF  35C36B            xor ax,0x6bc3
00000F02  F6FE              idiv dh
00000F04  54                push sp
00000F05  B6D0              mov dh,0xd0
00000F07  FE0D              dec byte [di]
00000F09  F00F94C0          lock setz al
00000F0D  A1C582            mov ax,[0x82c5]
00000F10  30AD51EC          xor [di-0x13af],ch
00000F14  A98EC9            test ax,0xc98e
00000F17  6D                insw
00000F18  CB                retf
00000F19  4F                dec di
00000F1A  9B3480            wait xor al,0x80
00000F1D  67F734FE          div word [dword esi+edi*8]
00000F21  EB39              jmp short 0xf5c
00000F23  47                inc di
00000F24  7640              jna 0xf66
00000F26  740B              jz 0xf33
00000F28  0BFF              or di,di
00000F2A  33BF65C6          xor di,[bx-0x399b]
00000F2E  44                inc sp
00000F2F  0E                push cs
00000F30  00FF              add bh,bh
00000F32  EB2D              jmp short 0xf61
00000F34  89C8              mov ax,cx
00000F36  E88AFF            call 0xec3
00000F39  6595              gs xchg ax,bp
00000F3B  886F5A            mov [bx+0x5a],ch
00000F3E  7520              jnz 0xf60
00000F40  8BFB              mov di,bx
00000F42  4F                dec di
00000F43  778B              ja 0xed0
00000F45  7F79              jg 0xfc0
00000F47  49                dec cx
00000F48  B3F9              mov bl,0xf9
00000F4A  007B85            add [bp+di-0x7b],bh
00000F4D  E703              out 0x3,ax
00000F4F  3B0D              cmp cx,[di]
00000F51  7B75              jpo 0xfc8
00000F53  053B15            add ax,0x153b
00000F56  42                inc dx
00000F57  7EBE              jng 0xf17
00000F59  2EFF17            call [cs:bx]
00000F5C  F9                stc
00000F5D  01E9              add cx,bp
00000F5F  E1D2              loope 0xf33
00000F61  0353DB            add dx,[bp+di-0x25]
00000F64  388D5FD1          cmp [di-0x2ea1],cl
00000F68  50                push ax
00000F69  6A01              push byte +0x1
00000F6B  66                o32
00000F6C  FF                db 0xff
00000F6D  FFB78400          push word [bx+0x84]
00000F71  1E                push ds
00000F72  68AC0A            push word 0xaac
00000F75  7735              ja 0xfac
00000F77  8008C9            or byte [bx+si],0xc9
00000F7A  61                popa
00000F7B  78CD              js 0xf4a
00000F7D  C7                db 0xc7
00000F7E  CE                into
00000F7F  E3F6              jcxz 0xf77
00000F81  44                inc sp
00000F82  33656D            xor sp,[di+0x6d]
00000F85  07                pop es
00000F86  68CB45            push word 0x45cb
00000F89  01C4              add sp,ax
00000F8B  8531              test [bx+di],si
00000F8D  7DF2              jnl 0xf81
00000F8F  CF                iret
00000F90  FD                std
00000F91  89C3              mov bx,ax
00000F93  57                push di
00000F94  54                push sp
00000F95  2C57              sub al,0x57
00000F97  F257              repne push di
00000F99  03C3              add ax,bx
00000F9B  3EFEC0            ds inc al
00000F9E  D6                salc
00000F9F  97                xchg ax,di
00000FA0  3AEC              cmp ch,ah
00000FA2  EB8A              jmp short 0xf2e
00000FA4  51                push cx
00000FA5  59                pop cx
00000FA6  73BC              jnc 0xf64
00000FA8  55                push bp
00000FA9  7D1F              jnl 0xfca
00000FAB  88AE7B6F          mov [bp+0x6f7b],ch
00000FAF  C7                db 0xc7
00000FB0  93                xchg ax,bx
00000FB1  FF1B              call far [bp+di]
00000FB3  4B                dec bx
00000FB4  011C              add [si],bx
00000FB6  1804              sbb [si],al
00000FB8  F6                db 0xf6
00000FB9  48                dec ax
00000FBA  E86F5F            call 0x6f2c
00000FBD  F0C78065D2614C    lock mov word [bx+si-0x2d9b],0x4c61
00000FC4  DA8A21F6          fimul dword [bp+si-0x9df]
00000FC8  3F                aas
00000FC9  16                push ss
00000FCA  BEB31D            mov si,0x1db3
00000FCD  50                push ax
00000FCE  BD06FF            mov bp,0xff06
00000FD1  47                inc di
00000FD2  30CD              xor ch,cl
00000FD4  0BA0690A          or sp,[bx+si+0xa69]
00000FD8  7D4F              jnl 0x1029
00000FDA  30EB              xor bl,ch
00000FDC  F3B70C            rep mov bh,0xc
00000FDF  030B              add cx,[bp+di]
00000FE1  846D6E            test [di+0x6e],ch
00000FE4  050C6B            add ax,0x6b0c
00000FE7  191E3B51          sbb [0x513b],bx
00000FEB  6E                outsb
00000FEC  42                inc dx
00000FED  37                aaa
00000FEE  F08D5C06          lock lea bx,[si+0x6]
00000FF2  B367              mov bl,0x67
00000FF4  FE                db 0xfe
00000FF5  25D576            and ax,0x76d5
00000FF8  4D                dec bp
00000FF9  40                inc ax
00000FFA  BA8D7D            mov dx,0x7d8d
00000FFD  06                push es
00000FFE  74D2              jz 0xfd2
00001000  E8A986            call 0x96ac
00001003  6D                insw
00001004  6F                outsw
00001005  17                pop ss
00001006  A906E9            test ax,0xe906
00001009  06                push es
0000100A  90                nop
0000100B  ED                in ax,dx
0000100C  A1B7F1            mov ax,[0xf1b7]
0000100F  A5                movsw
00001010  07                pop es
00001011  F7FB              idiv bx
00001013  AA                stosb
00001014  0C55              or al,0x55
00001016  750C              jnz 0x1024
00001018  06                push es
00001019  78AB              js 0xfc6
0000101B  0CAA              or al,0xaa
0000101D  5D                pop bp
0000101E  27                daa
0000101F  A9FFBF            test ax,0xbfff
00001022  48                dec ax
00001023  105383            adc [bp+di-0x7d],dl
00001026  C6                db 0xc6
00001027  37                aaa
00001028  FD                std
00001029  56                push si
0000102A  6A29              push byte +0x29
0000102C  E8EF0B            call 0x1c1e
0000102F  F8                clc
00001030  78B1              js 0xfe3
00001032  005FF1            add [bx-0xf],bl
00001035  34FD              xor al,0xfd
00001037  53                push bx
00001038  686B2C            push word 0x2c6b
0000103B  12BFDC0B          adc bh,[bx+0xbdc]
0000103F  BFD30A            mov di,0xad3
00001042  83D57F            adc bp,byte +0x7f
00001045  0BDF              or bx,di
00001047  A5                movsw
00001048  BFEF0A            mov di,0xaef
0000104B  A0EE85            mov al,[0x85ee]
0000104E  0AF5              or dh,ch
00001050  FB                sti
00001051  A0D20A            mov al,[0xad2]
00001054  3C29              cmp al,0x29
00001056  627F3C            bound di,[bx+0x3c]
00001059  28750D            sub [di+0xd],dh
0000105C  8B15              mov dx,[di]
0000105E  FF8B4D02          dec word [bp+di+0x24d]
00001062  895477            mov [si+0x77],dx
00001065  894CFE            mov [si-0x2],cx
00001068  79EB              jns 0x1055
0000106A  0866C7            or [bp-0x39],ah
0000106D  44                inc sp
0000106E  770F              ja 0x107f
00001070  54                push sp
00001071  FD                std
00001072  8D4C7B            lea cx,[si+0x7b]
00001075  8D546B            lea dx,[si+0x6b]
00001078  BF2275            mov di,0x7522
0000107B  151E52            adc ax,0x521e
0000107E  8D                db 0x8d
0000107F  DB5504            fist dword [di+0x4]
00001082  046A              add al,0x6a
00001084  FF0B              dec word [bp+di]
00001086  E8A10B            call 0x1c2a
00001089  1E                push ds
0000108A  51                push cx
0000108B  83C7FB            add di,byte -0x5
0000108E  0F1E57EB          hint_nop50 word [bx-0x15]
00001092  110F              adc [bx],cx
00001094  42                inc dx
00001095  79EE              jns 0x1085
00001097  B313              mov bl,0x13
00001099  13998DB2          adc bx,[bx+di-0x4d73]
0000109D  0ABFF008          or bh,[bx+0x8f0]
000010A1  E882BB            call 0xcc26
000010A4  49                dec cx
000010A5  47                inc di
000010A6  08A75A63          or [bx+0x635a],ah
000010AA  D6                salc
000010AB  06                push es
000010AC  51                push cx
000010AD  E95717            jmp 0x2807
000010B0  61                popa
000010B1  A1D2D3            mov ax,[0xd3d2]
000010B4  7F0F              jg 0x10c5
000010B6  0FAF7F0D          imul di,[bx+0xd]
000010BA  85A5FF78          test [di+0x78ff],sp
000010BE  76C5              jna 0x1085
000010C0  51                push cx
000010C1  FC                cld
000010C2  9F                lahf
000010C3  3D188D            cmp ax,0x8d18
000010C6  C6                db 0xc6
000010C7  5D                pop bp
000010C8  FF34              push word [si]
000010CA  FF01              inc word [bx+di]
000010CC  D811              fcom dword [bx+di]
000010CE  CA89FB            retf 0xfb89
000010D1  E8FBB6            call 0xc7cf
000010D4  F8                clc
000010D5  894435            mov [si+0x35],ax
000010D8  1AA036EE          sbb ah,[bx+si-0x11ca]
000010DC  125FE9            adc bl,[bx-0x17]
000010DF  76D0              jna 0x10b1
000010E1  B0D3              mov al,0xd3
000010E3  C1C30D            rol bx,byte 0xd
000010E6  1BDD              sbb bx,bp
000010E8  F0FE4A0E          lock dec byte [bp+si+0xe]
000010EC  F083C106          lock add cx,byte +0x6
000010F0  652F              gs das
000010F2  BE1465            mov si,0x6514
000010F5  89DC              mov sp,bx
000010F7  4F                dec di
000010F8  12D5              adc dl,ch
000010FA  94                xchg ax,sp
000010FB  5F                pop di
000010FC  3C44              cmp al,0x44
000010FE  C3                ret
000010FF  30C4              xor ah,al
00001101  5E                pop si
00001102  890D              mov [di],cx
00001104  3C08              cmp al,0x8
00001106  EE                out dx,al
00001107  BE4875            mov si,0x7548
0000110A  26DF0B            fisttp word [es:bp+di]
0000110D  5F                pop di
0000110E  0E                push cs
0000110F  80FBFB            cmp bl,0xfb
00001112  60                pusha
00001113  720E              jc 0x1123
00001115  7616              jna 0x112d
00001117  06                push es
00001118  7766              ja 0x1180
0000111A  7204              jc 0x1120
0000111C  7F67              jg 0x1185
0000111E  760C              jna 0x112c
00001120  EB0F              jmp short 0x1131
00001122  80FBE5            cmp bl,0xe5
00001125  46                inc si
00001126  720A              jc 0x1132
00001128  A6                cmpsb
00001129  47                inc di
0000112A  ED                in ax,dx
0000112B  0E                push cs
0000112C  5C                pop sp
0000112D  0521AC            add ax,0xac21
00001130  811DE504          sbb word [di],0x4e5
00001134  13D0              adc dx,ax
00001136  42                inc dx
00001137  56                push si
00001138  C5                db 0xc5
00001139  C6                db 0xc6
0000113A  CF                iret
0000113B  46                inc si
0000113C  83427EFF          add word [bp+si+0x7e],byte -0x1
00001140  760E              jna 0x1150
00001142  8B5CDE            mov bx,[si-0x22]
00001145  AD                lodsw
00001146  46                inc si
00001147  0A99DD92          or bl,[bx+di-0x6d23]
0000114B  E813B1            call 0xc261
0000114E  8CC1              mov cx,es
00001150  37                aaa
00001151  C9                leave
00001152  F8                clc
00001153  99                cwd
00001154  01ED              add bp,bp
00001156  C811DA16          enter 0xda11,0x16
0000115A  BB1312            mov bx,0x1213
0000115D  00F8              add al,bh
0000115F  ED                in ax,dx
00001160  8B9C843F          mov bx,[si+0x3f84]
00001164  4B                dec bx
00001165  CE                into
00001166  8C8B86CA          mov [bp+di-0x357a],cs
0000116A  6D                insw
0000116B  D127              shl word [bx],1
0000116D  DE0C              fimul word [si]
0000116F  99                cwd
00001170  B825E5            mov ax,0xe525
00001173  B766              mov bh,0x66
00001175  3810              cmp [bx+si],dl
00001177  8B7044            mov si,[bx+si+0x44]
0000117A  6D                insw
0000117B  9A06C96EBA        call 0xba6e:0xc906
00001180  5B                pop bx
00001181  C22527            ret 0x2725
00001184  655C              gs pop sp
00001186  F9                stc
00001187  D7                xlatb
00001188  894EFE            mov [bp-0x2],cx
0000118B  29CE              sub si,cx
0000118D  B6F7              mov dh,0xf7
0000118F  DB0C              fisttp dword [si]
00001191  FE                db 0xfe
00001192  5D                pop bp
00001193  01B0A213          add [bx+si+0x13a2],si
00001197  650C94            gs or al,0x94
0000119A  C10AEB            ror word [bp+si],byte 0xeb
0000119D  FF5589            call [di-0x77]
000011A0  FA                cli
000011A1  EBA9              jmp short 0x114c
000011A3  1977CD            sbb [bx-0x33],si
000011A6  06                push es
000011A7  C7                db 0xc7
000011A8  3AE6              cmp ah,dh
000011AA  1E                push ds
000011AB  2C8D              sub al,0x8d
000011AD  7CDD              jl 0x118c
000011AF  45                inc bp
000011B0  0DEE05            or ax,0x5ee
000011B3  8EB9D2BA          mov segr7,[bx+di-0x452e]
000011B7  0AFB              or bh,bl
000011B9  06                push es
000011BA  E8D1E9            call 0xfb8e
000011BD  95                xchg ax,bp
000011BE  3F                aas
000011BF  DF160E3C          fist word [0x3c0e]
000011C3  47                inc di
000011C4  7228              jc 0x11ee
000011C6  EB0F              jmp short 0x11d7
000011C8  86BB9F7B          xchg [bp+di+0x7b9f],bh
000011CC  627212            bound si,[bp+si+0x12]
000011CF  07                pop es
000011D0  6513F0            gs adc si,ax
000011D3  670F846F2D        jz near 0x3f47
000011D8  61                popa
000011D9  66BF052B03EB      mov edi,0xeb032b05
000011DF  D83C              fdivr dword [si]
000011E1  B661              mov dh,0x61
000011E3  0D0659            or ax,0x5906
000011E6  60                pusha
000011E7  7FB7              jg 0x11a0
000011E9  02EB              add ch,bl
000011EB  CA3C41            retf 0x413c
000011EE  FC                cld
000011EF  7210              jc 0x1201
000011F1  7660              jna 0x1253
000011F3  3C46              cmp al,0x46
000011F5  B627              mov dh,0x27
000011F7  27                daa
000011F8  CB                retf
000011F9  42                inc dx
000011FA  836F4DB6          sub word [bx+0x4d],byte -0x4a
000011FE  3C40              cmp al,0x40
00001200  C6                db 0xc6
00001201  75B2              jnz 0x11b5
00001203  C8F8B45D          enter 0xb4f8,0x5d
00001207  1364FE            adc sp,[si-0x2]
0000120A  E044              loopne 0x1250
0000120C  326417            xor ah,[si+0x17]
0000120F  C00225            rol byte [bp+si],byte 0x25
00001212  8D03              lea ax,[bp+di]
00001214  40                inc ax
00001215  FE                db 0xfe
00001216  E2FC              loop 0x1214
00001218  09D0              or ax,dx
0000121A  0D8001            or ax,0x180
0000121D  16                push ss
0000121E  A133E8            mov ax,[0xe833]
00001221  1104              adc [si],ax
00001223  6F                outsw
00001224  A864              test al,0x64
00001226  F60701            test byte [bx],0x1
00001229  6881E1            push word 0xe181
0000122C  67AD              a32 lodsw
0000122E  3F                aas
0000122F  0412              add al,0x12
00001231  9BEA5683D061      wait jmp 0x61d0:0x8356
00001237  2D3E53            sub ax,0x533e
0000123A  0A0B              or cl,[bp+di]
0000123C  2588EB            and ax,0xeb88
0000123F  B82900            mov ax,0x29
00001242  1E                push ds
00001243  7F81              jg 0x11c6
00001245  09E9              or cx,bp
00001247  0AFD              or bh,ch
00001249  B8881F            mov ax,0x1f88
0000124C  B5C0              mov ch,0xc0
0000124E  8A4D17            mov cl,[di+0x17]
00001251  B2FF              mov dl,0xff
00001253  77BE              ja 0x1213
00001255  0904              or [si],ax
00001257  05EB03            add ax,0x3eb
0000125A  034250            add ax,[bp+si+0x50]
0000125D  A3ECCC            mov [0xccec],ax
00001260  6643              inc ebx
00001262  AF                scasw
00001263  D52C              aad 0x2c
00001265  FE84E0FC          inc byte [si-0x320]
00001269  E8DA03            call 0x1646
0000126C  C9                leave
0000126D  14D1              adc al,0xd1
0000126F  37                aaa
00001270  3CC3              cmp al,0xc3
00001272  658B6F2D          mov bp,[gs:bx+0x2d]
00001276  895EFE            mov [bp-0x2],bx
00001279  F5                cmc
0000127A  658E6515          mov fs,[gs:di+0x15]
0000127E  DCA77FF6          fsub qword [bx-0x981]
00001282  C26FCE            ret 0xce6f
00001285  07                pop es
00001286  64                fs
00001287  C6                db 0xc6
00001288  6F                outsw
00001289  6BE9BB            imul bp,cx,byte -0x45
0000128C  FC                cld
0000128D  6D                insw
0000128E  0B80BA2B          or ax,[bx+si+0x2bba]
00001292  A7                cmpsw
00001293  00D9              add cl,bl
00001295  7F44              jg 0x12db
00001297  56                push si
00001298  8D                db 0x8d
00001299  DA35              fidiv dword [di]
0000129B  02B7CF6C          add dh,[bx+0x6ccf]
0000129F  94                xchg ax,sp
000012A0  F1                int1
000012A1  89C2              mov dx,ax
000012A3  3D0CBB            cmp ax,0xbb0c
000012A6  CB                retf
000012A7  098B325C          or [bp+di+0x5c32],cx
000012AB  25DED4            and ax,0xd4de
000012AE  B63D              mov dh,0x3d
000012B0  80C90D            or cl,0xd
000012B3  6D                insw
000012B4  F0A8FB            lock test al,0xfb
000012B7  5D                pop bp
000012B8  7500              jnz 0x12ba
000012BA  0E                push cs
000012BB  DCAEBDBA          fsubr qword [bp-0x4543]
000012BF  DD3A              fnstsw [bp+si]
000012C1  666A00            o32 push byte +0x0
000012C4  6B3101            imul si,[bx+di],byte +0x1
000012C7  57                push di
000012C8  2EF1              cs int1
000012CA  E8C893            call 0xa695
000012CD  C159CB70          rcr word [bx+di-0x35],byte 0x70
000012D1  5C                pop sp
000012D2  35BB57            xor ax,0x57bb
000012D5  138AED52          adc cx,[bp+si+0x52ed]
000012D9  AC                lodsb
000012DA  F1                int1
000012DB  83FB28            cmp bx,byte +0x28
000012DE  DA69FA            fisubr dword [bx+di-0x6]
000012E1  09568C            or [bp-0x74],dx
000012E4  0483              add al,0x83
000012E6  91                xchg ax,cx
000012E7  46                inc si
000012E8  54                push sp
000012E9  F60372            test byte [bp+di],0x72
000012EC  2C14              sub al,0x14
000012EE  E03C              loopne 0x132c
000012F0  09EB              or bx,bp
000012F2  9B041A            wait add al,0x1a
000012F5  685056            push word 0x5650
000012F8  E815CF            call 0xe210
000012FB  0F74B91623        pcmpeqb mm7,[bx+di+0x2316]
00001300  DD08              fisttp qword [bx+si]
00001302  0474              add al,0x74
00001304  0D8379            or ax,0x7983
00001307  B86F85            mov ax,0x856f
0000130A  E938FF            jmp 0x1245
0000130D  6A60              push byte +0x60
0000130F  DA4852            fimul dword [bx+si+0x52]
00001312  D6                salc
00001313  FA                cli
00001314  FF                db 0xff
00001315  EC                in al,dx
00001316  C6                db 0xc6
00001317  93                xchg ax,bx
00001318  7415              jz 0x132f
0000131A  BFC002            mov di,0x2c0
0000131D  FC                cld
0000131E  C646FDD6          mov byte [bp-0x3],0xd6
00001322  026430            add ah,[si+0x30]
00001325  CB                retf
00001326  03FA              add di,dx
00001328  0856EE            or [bp-0x12],dl
0000132B  46                inc si
0000132C  FB                sti
0000132D  1907              sbb [bx],ax
0000132F  E9064A            jmp 0x5d38
00001332  810574D7          add word [di],0xd774
00001336  53                push bx
00001337  7D85              jnl 0x12be
00001339  DB7E54            fstp tword [bp+0x54]
0000133C  BAAD90            mov dx,0x90ad
0000133F  3F                aas
00001340  6C                insb
00001341  223B              and bh,[bp+di]
00001343  2C5C              sub al,0x5c
00001345  762C              jna 0x1373
00001347  D10C              ror word [si],1
00001349  BBECFE            mov bx,0xfeec
0000134C  3877FC            cmp [bx-0x4],dh
0000134F  0112              add [bp+si],dx
00001351  4B                dec bx
00001352  FC                cld
00001353  13EB              adc bp,bx
00001355  7712              ja 0x1369
00001357  52                push dx
00001358  EB65              jmp short 0x13bf
0000135A  FA                cli
0000135B  6F                outsw
0000135C  86C2              xchg dl,al
0000135E  04E8              add al,0xe8
00001360  ED                in ax,dx
00001361  17                pop ss
00001362  08FE              or dh,bh
00001364  14DE              adc al,0xde
00001366  EBE5              jmp short 0x134d
00001368  C21905            ret 0x519
0000136B  AF                scasw
0000136C  CF                iret
0000136D  36B750            ss mov bh,0x50
00001370  044E              add al,0x4e
00001372  FB                sti
00001373  81BA8E435560      cmp word [bp+si+0x438e],0x6055
00001379  22FD              and bh,ch
0000137B  7E38              jng 0x13b5
0000137D  AA                stosb
0000137E  FE4B15            dec byte [bp+di+0x15]
00001381  00B727FB          add [bx-0x4d9],dh
00001385  40                inc ax
00001386  4B                dec bx
00001387  FB                sti
00001388  15DB72            adc ax,0x72db
0000138B  07                pop es
0000138C  4D                dec bp
0000138D  FB                sti
0000138E  1285B428          adc al,[di+0x28b4]
00001392  2C90              sub al,0x90
00001394  B5AF              mov ch,0xaf
00001396  3A5BB7            cmp bl,[bp+di-0x49]
00001399  3F                aas
0000139A  5A                pop dx
0000139B  59                pop cx
0000139C  D7                xlatb
0000139D  058425            add ax,0x2584
000013A0  98                cbw
000013A1  DB4444            fild dword [si+0x44]
000013A4  888B6B04          mov [bp+di+0x46b],cl
000013A8  5F                pop di
000013A9  46                inc si
000013AA  45                inc bp
000013AB  86A09165          xchg [bx+si+0x6591],ah
000013AF  BB444A            mov bx,0x4a44
000013B2  D7                xlatb
000013B3  FC                cld
000013B4  3C5F              cmp al,0x5f
000013B6  2B8FE25D          sub cx,[bx+0x5de2]
000013BA  DF                db 0xdf
000013BB  FB                sti
000013BC  763B              jna 0x13f9
000013BE  4D                dec bp
000013BF  13EC              adc bp,sp
000013C1  16                push ss
000013C2  5E                pop si
000013C3  FB                sti
000013C4  FF4BFE            dec word [bp+di-0x2]
000013C7  837C1113          cmp word [si+0x11],byte +0x13
000013CB  1545BB            adc ax,0xbb45
000013CE  DFC6              ffreep st6
000013D0  03BB4200          add di,[bp+di+0x42]
000013D4  8AD7              mov dl,bh
000013D6  87AC494C          xchg [si+0x4c49],bp
000013DA  753A              jnz 0x1416
000013DC  92                xchg ax,dx
000013DD  07                pop es
000013DE  5B                pop bx
000013DF  2B1F              sub bx,[bx]
000013E1  0E                push cs
000013E2  27                daa
000013E3  7C43              jl 0x1428
000013E5  000A              add [bp+si],cl
000013E7  51                push cx
000013E8  06                push es
000013E9  A1B7CF            mov ax,[0xcfb7]
000013EC  5C                pop sp
000013ED  45                inc bp
000013EE  026A03            add ch,[bp+si+0x3]
000013F1  D547              aad 0x47
000013F3  A2B95D            mov [0x5db9],al
000013F6  A7                cmpsw
000013F7  028BAB04          add cl,[bp+di+0x4ab]
000013FB  6456              fs push si
000013FD  70C6              jo 0x13c5
000013FF  790E              jns 0x140f
00001401  7F29              jg 0x142c
00001403  FA                cli
00001404  E9EEFD            jmp 0x11f5
00001407  197E81            sbb [bp-0x7f],di
0000140A  53                push bx
0000140B  1A04              sbb al,[si]
0000140D  D009              ror byte [bx+di],1
0000140F  DF1F              fistp word [bx]
00001411  0002              add [bp+si],al
00001413  80E6FD            and dh,0xfd
00001416  DB09              fisttp dword [bx+di]
00001418  C22533            ret 0x3325
0000141B  EF                out dx,ax
0000141C  E9B6FA            jmp 0xed5
0000141F  1D0FAA            sbb ax,0xaa0f
00001422  64035501          add dx,[fs:di+0x1]
00001426  AA                stosb
00001427  46                inc si
00001428  4A                dec dx
00001429  BB4380            mov bx,0x8043
0000142C  7C8D              jl 0x13bb
0000142E  328AB70A          xor cl,[bp+si+0xab7]
00001432  6A35              push byte +0x35
00001434  28687A            sub [bx+si+0x7a],ch
00001437  A11744            mov ax,[0x4417]
0000143A  4A                dec dx
0000143B  DBE1              fndisi
0000143D  1C68              sbb al,0x68
0000143F  F8                clc
00001440  E8A389            call 0x9de6
00001443  D1AA85A7          shr word [bp+si-0x587b],1
00001447  8CA5C6AD          mov [di-0x523a],fs
0000144B  F1                int1
0000144C  E955FD            jmp 0x11a4
0000144F  85973E42          test [bx+0x423e],dx
00001453  E965FD            jmp 0x11bb
00001456  E9E75D            jmp 0x7240
00001459  F376FA            rep jna 0x1456
0000145C  F663FD            mul byte [bp+di-0x3]
0000145F  8BA4CB8B          mov sp,[si-0x7435]
00001463  656B4FB95B        imul cx,[gs:bx-0x47],byte +0x5b
00001468  7004              jo 0x146e
0000146A  B58D              mov ch,0x8d
0000146C  5D                pop bp
0000146D  2C93              sub al,0x93
0000146F  50                push ax
00001470  0C13              or al,0x13
00001472  040A              add al,0xa
00001474  6E                outsb
00001475  96                xchg ax,si
00001476  55                push bp
00001477  B411              mov ah,0x11
00001479  0F                db 0x0f
0000147A  0D737B            or ax,0x7b73
0000147D  6A58              push byte +0x58
0000147F  DD                db 0xdd
00001480  FB                sti
00001481  E9029F            jmp 0xb386
00001484  5A                pop dx
00001485  F6C602            test dh,0x2
00001488  13063EA6          adc ax,[0xa63e]
0000148C  E98DD5            jmp 0xea1c
0000148F  06                push es
00001490  3D720A            cmp ax,0xa72
00001493  0294716D          add dl,[si+0x6d71]
00001497  631634BB          arpl [0xbb34],dx
0000149B  0B6F43            or bp,[bx+0x43]
0000149E  7516              jnz 0x14b6
000014A0  C7                db 0xc7
000014A1  5A                pop dx
000014A2  0ADD              or bl,ch
000014A4  76EB              jna 0x1491
000014A6  15FF06            adc ax,0x6ff
000014A9  43                inc bx
000014AA  EB0E              jmp short 0x14ba
000014AC  A15A8B            mov ax,[0x8b5a]
000014AF  11A8A3EB          adc [bx+si-0x145d],bp
000014B3  0318              add bx,[bx+si]
000014B5  E8DFF5            call 0xa97
000014B8  44                inc sp
000014B9  3402              xor al,0x2
000014BB  75BB              jnz 0x1478
000014BD  F4                hlt
000014BE  8B1EF70D          mov bx,[0xdf7]
000014C2  AA                stosb
000014C3  1413              adc al,0x13
000014C5  88C6              mov dh,al
000014C7  06                push es
000014C8  F4                hlt
000014C9  8618              xchg [bx+si],bl
000014CB  B708              mov bh,0x8
000014CD  0E                push cs
000014CE  57                push di
000014CF  1A7512            sbb dh,[di+0x12]
000014D2  1CA0              sbb al,0xa0
000014D4  21FD              and bp,di
000014D6  3C8D              cmp al,0x8d
000014D8  7CD9              jl 0x14b3
000014DA  E28D              loop 0x1469
000014DC  7C70              jl 0x154e
000014DE  7D08              jnl 0x14e8
000014E0  D6                salc
000014E1  D58B              aad 0x8b
000014E3  05E089            add ax,0x89e0
000014E6  7E51              jng 0x1539
000014E8  48                dec ax
000014E9  2AD3              sub dl,bl
000014EB  5D                pop bp
000014EC  0B4D15            or cx,[di+0x15]
000014EF  6D                insw
000014F0  83FCBF            cmp sp,byte -0x41
000014F3  0F1739            movhps qword [bx+di],xmm7
000014F6  F8                clc
000014F7  7728              ja 0x1521
000014F9  134778            adc ax,[bx+0x78]
000014FC  56                push si
000014FD  FC                cld
000014FE  7321              jnc 0x1521
00001500  6BDF12            imul bx,di,byte +0x12
00001503  6C                insb
00001504  60                pusha
00001505  F8                clc
00001506  B610              mov dh,0x10
00001508  D1D4              rcl sp,1
0000150A  1B2F              sbb bp,[bx]
0000150C  5B                pop bx
0000150D  4E                dec si
0000150E  F8                clc
0000150F  11E0              adc ax,sp
00001511  C139CF            sar word [bx+di],byte 0xcf
00001514  51                push cx
00001515  22ADF90A          and ch,[di+0xaf9]
00001519  1B7E4E            sbb di,[bp+0x4e]
0000151C  9BFC              wait cld
0000151E  0804              or [si],al
00001520  FA                cli
00001521  E96DFC            jmp 0x1191
00001524  0394DDEF          add dx,[si-0x1023]
00001528  13846FED          adc ax,[si-0x1291]
0000152C  8D7EF6            lea di,[bp-0xa]
0000152F  8E5716            mov ss,[bx+0x16]
00001532  F712              not word [bp+si]
00001534  50                push ax
00001535  52                push dx
00001536  6606              o32 push es
00001538  56                push si
00001539  0E                push cs
0000153A  EC                in al,dx
0000153B  7B18              jpo 0x1555
0000153D  018556AE          add [di-0x51aa],ax
00001541  C3                ret
00001542  F613              not byte [bp+di]
00001544  7412              jz 0x1558
00001546  85D2              test dx,dx
00001548  BA651C            mov dx,0x1c65
0000154B  F9                stc
0000154C  17                pop ss
0000154D  59                pop cx
0000154E  E93781            jmp 0x9688
00001551  FC                cld
00001552  92                xchg ax,dx
00001553  314EE4            xor [bp-0x1c],cx
00001556  E0BE              loopne 0x1516
00001558  63CD              arpl bp,cx
0000155A  C3                ret
0000155B  6E                outsb
0000155C  27                daa
0000155D  30E6              xor dh,ah
0000155F  B440              mov ah,0x40
00001561  2D7EFA            sub ax,0xfa7e
00001564  223636F7          and dh,[0xf736]
00001568  35D004            xor ax,0x4d0
0000156B  B89210            mov ax,0x1092
0000156E  A81A              test al,0x1a
00001570  B3B8              mov bl,0xb8
00001572  14BB              adc al,0xbb
00001574  0E                push cs
00001575  8D                db 0x8d
00001576  E625              out 0x25,al
00001578  03EF              add bp,di
0000157A  A880              test al,0x80
0000157C  0F7407            pcmpeqb mm0,[bx]
0000157F  40                inc ax
00001580  D3064D10          rol word [0x104d],cl
00001584  0434              add al,0x34
00001586  04D7              add al,0xd7
00001588  0823              or [bp+di],ah
0000158A  344E              xor al,0x4e
0000158C  08B46D87          or [si-0x7893],dh
00001590  1A458E            sbb al,[di-0x72]
00001593  D466              aam 0x66
00001595  F710              not word [bx+si]
00001597  DAC2              fcmovb st2
00001599  A2C20D            mov [0xdc2],al
0000159C  35C7FC            xor ax,0xfcc7
0000159F  C9                leave
000015A0  5C                pop sp
000015A1  0F06              clts
000015A3  D6                salc
000015A4  98                cbw
000015A5  D5E9              aad 0xe9
000015A7  56                push si
000015A8  F8                clc
000015A9  82                db 0x82
000015AA  60                pusha
000015AB  FC                cld
000015AC  6D                insw
000015AD  59                pop cx
000015AE  5E                pop si
000015AF  F2734F            bnd jnc 0x1601
000015B2  1003              adc [bp+di],al
000015B4  95                xchg ax,bp
000015B5  4D                dec bp
000015B6  B20D              mov dl,0xd
000015B8  89B4B628          mov [si+0x28b6],si
000015BC  0E                push cs
000015BD  5C                pop sp
000015BE  4E                dec si
000015BF  03764B            add si,[bp+0x4b]
000015C2  24C8              and al,0xc8
000015C4  5B                pop bx
000015C5  49                dec cx
000015C6  77A3              ja 0x156b
000015C8  8F                db 0x8f
000015C9  09FA              or dx,di
000015CB  228905D8          and cl,[bx+di-0x27fb]
000015CF  0C0D              or al,0xd
000015D1  18991AAF          sbb [bx+di-0x50e6],bl
000015D5  01C9              add cx,cx
000015D7  46                inc si
000015D8  A7                cmpsw
000015D9  B309              mov bl,0x9
000015DB  4A                dec dx
000015DC  E425              in al,0x25
000015DE  781A              js 0x15fa
000015E0  AF                scasw
000015E1  DE3C              fidivr word [si]
000015E3  0C89              or al,0x89
000015E5  37                aaa
000015E6  8E29              mov gs,[bx+di]
000015E8  03E2              add sp,dx
000015EA  B784              mov bh,0x84
000015EC  C1E2ED            shl dx,byte 0xed
000015EF  0401              add al,0x1
000015F1  D03F              sar byte [bx],1
000015F3  43                inc bx
000015F4  36F702F7D8        test word [ss:bp+si],0xd8f7
000015F9  247E              and al,0x7e
000015FB  36360039          add [ss:bx+di],bh
000015FF  C1                db 0xc1
00001600  7325              jnc 0x1627
00001602  3C89              cmp al,0x89
00001604  C8BCC0B2          enter 0xc0bc,0xb2
00001608  FE                db 0xfe
00001609  16                push ss
0000160A  6D                insw
0000160B  6E                outsb
0000160C  1BAB0417          sbb bp,[bp+di+0x1704]
00001610  28369D06          sub [0x69d],dh
00001614  5B                pop bx
00001615  F6427B16          test byte [bp+si+0x7b],0x16
00001619  890F              mov [bx],cx
0000161B  FD                std
0000161C  44                inc sp
0000161D  B602              mov dh,0x2
0000161F  0BBB6D4D          or di,[bp+di+0x4d6d]
00001623  E9E9F3            jmp 0xa0f
00001626  0165EF            add [di-0x11],sp
00001629  F5                cmc
0000162A  0FFF              ud0
0000162C  751F              jnz 0x164d
0000162E  B81E00            mov ax,0x1e
00001631  E87A75            call 0x8bae
00001634  0E                push cs
00001635  42                inc dx
00001636  DA35              fidiv dword [di]
00001638  13367947          adc si,[0x4779]
0000163C  DA                db 0xda
0000163D  FA                cli
0000163E  0C15              or al,0x15
00001640  9AA905C1AB        call 0xabc1:0x5a9
00001645  FE                db 0xfe
00001646  52                push dx
00001647  76F5              jna 0x163e
00001649  8EC4              mov es,sp
0000164B  CB                retf
0000164C  0C0E              or al,0xe
0000164E  6C                insb
0000164F  BF70B2            mov di,0xb270
00001652  0CDB              or al,0xdb
00001654  0E                push cs
00001655  0E                push cs
00001656  145F              adc al,0x5f
00001658  DFAF6D41          fild qword [bx+0x416d]
0000165C  C1831969BB        rol word [bp+di+0x6919],byte 0xbb
00001661  FF                db 0xff
00001662  FB                sti
00001663  817E4252F5        cmp word [bp+0x42],0xf552
00001668  A07304            mov al,[0x473]
0000166B  D0D8              rcr al,1
0000166D  26C9              es leave
0000166F  E371              jcxz 0x16e2
00001671  6A8C              push byte -0x74
00001673  D6                salc
00001674  98                cbw
00001675  07                pop es
00001676  D7                xlatb
00001677  FC                cld
00001678  6452              fs push dx
0000167A  F8                clc
0000167B  18C6              sbb dh,al
0000167D  3D5FE9            cmp ax,0xe95f
00001680  751C              jnz 0x169e
00001682  FB                sti
00001683  C1D65E            rcl si,byte 0x5e
00001686  0C02              or al,0x2
00001688  F0F6E8            lock imul al
0000168B  D92B              fldcw [bp+di]
0000168D  2439              and al,0x39
0000168F  5C                pop sp
00001690  4D                dec bp
00001691  D6                salc
00001692  2805              sub [di],al
00001694  CA0EE4            retf 0xe40e
00001697  290B              sub [bp+di],cx
00001699  0CEB              or al,0xeb
0000169B  B313              mov bl,0x13
0000169D  71ED              jno 0x168c
0000169F  838EFF0EEB        or word [bp+0xeff],byte -0x15
000016A4  837EF41F          cmp word [bp-0xc],byte +0x1f
000016A8  788D              js 0x1637
000016AA  FF00              inc word [bx+si]
000016AC  E687              out 0x87,al
000016AE  8EE3              mov fs,bx
000016B0  64837EB65F        cmp word [fs:bp-0x4a],byte +0x5f
000016B5  8A4EF6            mov cl,[bp-0xa]
000016B8  A27B11            mov [0x117b],al
000016BB  30F7              xor bh,dh
000016BD  F8                clc
000016BE  A37D05            mov [0x57d],ax
000016C1  7BFA              jpo 0x16bd
000016C3  A37F11            mov [0x117f],ax
000016C6  C87EA385          enter 0xa37e,0x85
000016CA  11A387EE          adc [bp+di-0x1179],sp
000016CE  0D10A3            or ax,0xa310
000016D1  81EF0512          sub di,0x1205
000016D5  A38311            mov [0x1183],ax
000016D8  7030              jo 0x170a
000016DA  17                pop ss
000016DB  41                inc cx
000016DC  06                push es
000016DD  3B8D3ECD          cmp cx,[di-0x32c2]
000016E1  16                push ss
000016E2  90                nop
000016E3  EE                out dx,al
000016E4  0FBE4FB6          movsx cx,[bx-0x4a]
000016E8  57                push di
000016E9  7879              js 0x1764
000016EB  8D88FB8D          lea cx,[bx+si-0x7205]
000016EF  8EE9              mov gs,cx
000016F1  AA                stosb
000016F2  000F              add [bx],cl
000016F4  42                inc dx
000016F5  92                xchg ax,dx
000016F6  8B905A8C          mov dx,[bx+si-0x73a6]
000016FA  C7                db 0xc7
000016FB  117B8E            adc [bp+di-0x72],di
000016FE  6AC0              push byte -0x40
00001700  7D66              jnl 0x1768
00001702  95                xchg ax,bp
00001703  00CB              add bl,cl
00001705  12876BD9          adc al,[bx-0x2695]
00001709  E77F              out 0x7f,ax
0000170B  F050              lock push ax
0000170D  56                push si
0000170E  8D4EEA            lea cx,[bp-0x16]
00001711  734C              jnc 0x175f
00001713  D478              aam 0x78
00001715  12E8              adc ch,al
00001717  0939              or [bx+di],di
00001719  2318              and bx,[bx+si]
0000171B  89F6              mov si,si
0000171D  E9C700            jmp 0x17e7
00001720  0FE3EE            pavgw mm5,mm6
00001723  03C0              add ax,ax
00001725  42                inc dx
00001726  46                inc si
00001727  C6                db 0xc6
00001728  F0F6F8            lock idiv al
0000172B  0D4039            or ax,0x3940
0000172E  C2DEA8            ret 0xa8de
00001731  2B46EE            sub ax,[bp-0x12]
00001734  F6F2              div dl
00001736  9E                sahf
00001737  C3                ret
00001738  42                inc dx
00001739  8B62CF            mov sp,[bp+si-0x31]
0000173C  9D                popf
0000173D  D7                xlatb
0000173E  51                push cx
0000173F  0A4D44            or cl,[di+0x44]
00001742  D32D              shr word [di],cl
00001744  0DCEAB            or ax,0xabce
00001747  09D7              or di,dx
00001749  CB                retf
0000174A  9D                popf
0000174B  42                inc dx
0000174C  6D                insw
0000174D  D7                xlatb
0000174E  9D                popf
0000174F  D11D              rcr word [di],1
00001751  B556              mov ch,0x56
00001753  DD                db 0xdd
00001754  F252              repne push dx
00001756  F8                clc
00001757  EA2DEED206        jmp 0x6d2:0xee2d
0000175C  FA                cli
0000175D  F7F8              idiv ax
0000175F  FFD0              call ax
00001761  7A85              jpe 0x16e8
00001763  127AA5            adc bh,[bp+si-0x5b]
00001766  56                push si
00001767  8610              xchg [bx+si],dl
00001769  D8F2              fdiv st2
0000176B  1E                push ds
0000176C  5F                pop di
0000176D  E8AC8D            call 0xa51c
00001770  749A              jz 0x170c
00001772  C9                leave
00001773  B8EEFE            mov ax,0xfeee
00001776  25E5F6            and ax,0xf6e5
00001779  47                inc di
0000177A  8CD8              mov ax,ds
0000177C  3BED              cmp bp,bp
0000177E  E175              loope 0x17f5
00001780  1E                push ds
00001781  60                pusha
00001782  43                inc bx
00001783  55                push bp
00001784  61                popa
00001785  7517              jnz 0x179e
00001787  4F                dec di
00001788  3677C3            ss ja 0x174e
0000178B  0E                push cs
0000178C  4B                dec bx
0000178D  87530F            xchg [bp+di+0xf],dx
00001790  4F                dec di
00001791  891C              mov [si],bx
00001793  32EE              xor ch,dh
00001795  9F                lahf
00001796  16                push ss
00001797  0107              add [bx],ax
00001799  1512A1            adc ax,0xa112
0000179C  AC                lodsb
0000179D  7578              jnz 0x1817
0000179F  56                push si
000017A0  1011              adc [bx+di],dl
000017A2  54                push sp
000017A3  0CBC              or al,0xbc
000017A5  1929              sbb [bx+di],bp
000017A7  56                push si
000017A8  1468              adc al,0x68
000017AA  99                cwd
000017AB  58                pop ax
000017AC  FF03              inc word [bp+di]
000017AE  5D                pop bp
000017AF  69E93CB1          imul bp,cx,word 0xb13c
000017B3  86C8              xchg al,cl
000017B5  D14359            rol word [bp+di+0x59],1
000017B8  A044D5            mov al,[0xd544]
000017BB  31631E            xor [bp+di+0x1e],sp
000017BE  B95B16            mov cx,0x165b
000017C1  99                cwd
000017C2  DBF7              fcomi st7
000017C4  F9                stc
000017C5  67C1EDE1          shr bp,byte 0xe1
000017C9  04BE              add al,0xbe
000017CB  0A4651            or al,[bp+0x51]
000017CE  B50C              mov ch,0xc
000017D0  C22155            ret 0x5521
000017D3  6D                insw
000017D4  2288AE8D          and cl,[bx+si-0x7252]
000017D8  57                push di
000017D9  BF44D0            mov di,0xd044
000017DC  B527              mov ch,0x27
000017DE  FFC8              dec ax
000017E0  47                inc di
000017E1  6B09CD            imul cx,[bx+di],byte -0x33
000017E4  07                pop es
000017E5  6D                insw
000017E6  07                pop es
000017E7  60                pusha
000017E8  8D066EFE          lea ax,[0xfe6e]
000017EC  B96400            mov cx,0x64
000017EF  F7F1              div cx
000017F1  E8BEEB            call 0x3b2
000017F4  16                push ss
000017F5  030F              add cx,[bx]
000017F7  16                push ss
000017F8  0CBA              or al,0xba
000017FA  25AF6D            and ax,0x6daf
000017FD  025DA8            add bl,[di-0x58]
00001800  58                pop ax
00001801  D5A5              aad 0xa5
00001803  D16EA0            shr word [bp-0x60],1
00001806  F682C499C6        test byte [bp+si-0x663c],0xc6
0000180B  264A              es dec dx
0000180D  AD                lodsw
0000180E  6BFF07            imul di,di,byte +0x7
00001811  7220              jc 0x1833
00001813  7631              jna 0x1846
00001815  3C0A              cmp al,0xa
00001817  728B              jc 0x17a4
00001819  1113              adc [bp+di],dx
0000181B  7CB8              jl 0x17d5
0000181D  013C              add [si],di
0000181F  10B6B205          adc [bp+0x5b2],dh
00001823  C50B              lds cx,[bp+di]
00001825  5B                pop bx
00001826  EC                in al,dx
00001827  AB                stosw
00001828  6C                insb
00001829  0C08              or al,0x8
0000182B  B0C4              mov al,0xc4
0000182D  B65A              mov dh,0x5a
0000182F  A208FE            mov [0xfe08],al
00001832  0472              add al,0x72
00001834  057613            add ax,0x1376
00001837  E92D7E            jmp 0x9667
0000183A  86848AC6          xchg [si-0x3976],al
0000183E  93                xchg ax,bx
0000183F  0177A5            add [bx-0x5b],si
00001842  4F                dec di
00001843  47                inc di
00001844  3CDA              cmp al,0xda
00001846  8C09              mov [bx+di],cs
00001848  0559EB            add ax,0xeb59
0000184B  1206748D          adc al,[0x8d74]
0000184F  65050293          gs add ax,0x9302
00001853  FE                db 0xfe
00001854  E85F8C            call 0xa4b6
00001857  BB0500            mov bx,0x5
0000185A  9A44F21C77        call 0x771c:0xf244
0000185F  6F                outsw
00001860  DFBB0BE9          fistp qword [bp+di-0x16f5]
00001864  740C              jz 0x1872
00001866  FB                sti
00001867  B6DA              mov dh,0xda
00001869  EF                out dx,ax
0000186A  B30B              mov bl,0xb
0000186C  B8EF18            mov ax,0x18ef
0000186F  326957            xor ch,[bx+di+0x57]
00001872  6E                outsb
00001873  1E                push ds
00001874  49                dec cx
00001875  FA                cli
00001876  ED                in ax,dx
00001877  DCEE              fsub to st6
00001879  A08703            mov al,[0x387]
0000187C  7E0B              jng 0x1889
0000187E  197EED            sbb [bp-0x13],di
00001881  FA                cli
00001882  11C7              adc di,ax
00001884  A97618            test ax,0x1876
00001887  7017              jo 0x18a0
00001889  6D                insw
0000188A  C3                ret
0000188B  EE                out dx,al
0000188C  BEFE99            mov si,0x99fe
0000188F  B93C00            mov cx,0x3c
00001892  54                push sp
00001893  B722              mov bh,0x22
00001895  ED                in ax,dx
00001896  F9                stc
00001897  B707              mov bh,0x7
00001899  56                push si
0000189A  EC                in al,dx
0000189B  6638C6            o32 cmp dh,al
0000189E  1F                pop ds
0000189F  A359D8            mov [0xd859],ax
000018A2  646464EF          fs out dx,ax
000018A6  1E                push ds
000018A7  EE                out dx,al
000018A8  A18A06            mov ax,[0x68a]
000018AB  1E                push ds
000018AC  E3EA              jcxz 0x1898
000018AE  6626887C0E        o32 mov [es:si+0xe],bh
000018B3  8D56EA            lea dx,[bp-0x16]
000018B6  0C82              or al,0x82
000018B8  A5                movsw
000018B9  0CB7              or al,0xb7
000018BB  13A752FF          adc sp,[bx-0xae]
000018BF  A5                movsw
000018C0  2663E0            es arpl ax,sp
000018C3  123D              adc bh,[di]
000018C5  06                push es
000018C6  17                pop ss
000018C7  6454              fs push sp
000018C9  FF6C17            jmp far [si+0x17]
000018CC  F0AC              lock lodsb
000018CE  2146C4            and [bp-0x3c],ax
000018D1  C6                db 0xc6
000018D2  F734              div word [si]
000018D4  8D4FB4            lea cx,[bx-0x4c]
000018D7  A33377            mov [0x7733],ax
000018DA  D2                db 0xd2
000018DB  F36BD0BA          rep imul dx,ax,byte -0x46
000018DF  3C06              cmp al,0x6
000018E1  F296              repne xchg ax,si
000018E3  B899CE            mov ax,0xce99
000018E6  7F2D              jg 0x1915
000018E8  6D                insw
000018E9  89D6              mov si,dx
000018EB  D219              rcr byte [bx+di],cl
000018ED  F5                cmc
000018EE  CD64              int 0x64
000018F0  F4                hlt
000018F1  321A              xor bl,[bp+si]
000018F3  D4D6              aam 0xd6
000018F5  D6                salc
000018F6  AE                scasb
000018F7  B8760D            mov ax,0xd76
000018FA  1F                pop ds
000018FB  C0D7E1            rcl bh,byte 0xe1
000018FE  94                xchg ax,sp
000018FF  95                xchg ax,bp
00001900  6C                insb
00001901  F0123F            lock adc bh,[bx]
00001904  FA                cli
00001905  ED                in ax,dx
00001906  01F8              add ax,di
00001908  B413              mov ah,0x13
0000190A  CB                retf
0000190B  27                daa
0000190C  0403              add al,0x3
0000190E  DBEE              fucomi st6
00001910  52                push dx
00001911  60                pusha
00001912  11F1              adc cx,si
00001914  8CBFBC07          mov [bx+0x7bc],segr7
00001918  C3                ret
00001919  92                xchg ax,dx
0000191A  0F70E858          pshufw mm5,mm0,0x58
0000191E  BFEAC6            mov di,0xc6ea
00001921  3B5C18            cmp bx,[si+0x18]
00001924  72ED              jc 0x1913
00001926  06                push es
00001927  47                inc di
00001928  2B05              sub ax,[di]
0000192A  EBEB              jmp short 0x1917
0000192C  EE                out dx,al
0000192D  BA51B4            mov dx,0xb451
00001930  06                push es
00001931  42                inc dx
00001932  BDEF0D            mov bp,0xdef
00001935  730E              jnc 0x1945
00001937  B665              mov dh,0x65
00001939  0101              add [bx+di],ax
0000193B  B71B              mov bh,0x1b
0000193D  1C73              sbb al,0x73
0000193F  B7F0              mov bh,0xf0
00001941  19FE              sbb si,di
00001943  43                inc bx
00001944  52                push dx
00001945  DB8EE41B          fisttp dword [bp+0x1be4]
00001949  2C1F              sub al,0x1f
0000194B  BFFE8D            mov di,0x8dfe
0000194E  E8F885            call 0x9f49
00001951  FD                std
00001952  FC                cld
00001953  789D              js 0x18f2
00001955  55                push bp
00001956  3A739A            cmp dh,[bp+di-0x66]
00001959  8CE0              mov ax,fs
0000195B  E8D6EE            call 0x834
0000195E  C1E9F6            shr cx,byte 0xf6
00001961  52                push dx
00001962  2476              and al,0x76
00001964  DB5303            fist dword [bp+di+0x3]
00001967  F6                db 0xf6
00001968  C9                leave
00001969  51                push cx
0000196A  98                cbw
0000196B  63FC              arpl sp,di
0000196D  B68B              mov dh,0x8b
0000196F  E971FE            jmp 0x17e3
00001972  0C01              or al,0x1
00001974  368AA1373A        mov ah,[ss:bx+di+0x3a37]
00001979  CB                retf
0000197A  58                pop ax
0000197B  1C16              sbb al,0x16
0000197D  363A060B2D        cmp al,[ss:0x2d0b]
00001982  7D1E              jnl 0x19a2
00001984  07                pop es
00001985  FC                cld
00001986  B36D              mov bl,0x6d
00001988  F9                stc
00001989  4E                dec si
0000198A  6C                insb
0000198B  9B7613            wait jna 0x19a1
0000198E  E87EFF            call 0x190f
00001991  E0E8              loopne 0x197b
00001993  E3FF              jcxz 0x1994
00001995  D1                db 0xd1
00001996  B752              mov bh,0x52
00001998  A5                movsw
00001999  73F5              jnc 0x1990
0000199B  01A4EB2B          add [si+0x2beb],sp
0000199F  BB55FF            mov bx,0xff55
000019A2  C5167DC4          lds dx,[0xc47d]
000019A6  7E0A              jng 0x19b2
000019A8  B34B              mov bl,0x4b
000019AA  E3EA              jcxz 0x1996
000019AC  E3E8              jcxz 0x1996
000019AE  CAFF27            retf 0x27ff
000019B1  9B0C08            wait or al,0x8
000019B4  F7B30888          div word [bp+di-0x77f8]
000019B8  C422              les sp,[bp+si]
000019BA  78AB              js 0x1967
000019BC  730B              jnc 0x19c9
000019BE  AA                stosb
000019BF  37                aaa
000019C0  41                inc cx
000019C1  E8B47F            call 0x9978
000019C4  15EBED            adc ax,0xedeb
000019C7  C5                db 0xc5
000019C8  E17E              loope 0x1a48
000019CA  00B7EB6B          add [bx+0x6beb],dh
000019CE  DD                db 0xdd
000019CF  2956BE            sub [bp-0x42],dx
000019D2  B409              mov ah,0x9
000019D4  16                push ss
000019D5  52                push dx
000019D6  C6077B            mov byte [bx],0x7b
000019D9  FE89EC5D          dec byte [bx+di+0x5dec]
000019DD  C3                ret
000019DE  E895EB            call 0x576
000019E1  41                inc cx
000019E2  0434              add al,0x34
000019E4  18EB              sbb bl,ch
000019E6  37                aaa
000019E7  E788              out 0x88,ax
000019E9  FF6C65            jmp far [si+0x65]
000019EC  04BF              add al,0xbf
000019EE  06                push es
000019EF  B304              mov bl,0x4
000019F1  AC                lodsb
000019F2  AA                stosb
000019F3  00A8A7D8          add [bx+si-0x2759],ch
000019F7  9BC9              wait leave
000019F9  0DF16D            or ax,0x6df1
000019FC  1C04              sbb al,0x4
000019FE  AE                scasb
000019FF  0F48956BC8        cmovs dx,[di-0x3795]
00001A04  09858FA5          or [di-0x5a71],ax
00001A08  B974C4            mov cx,0xc474
00001A0B  F2AE              repne scasb
00001A0D  6E                outsb
00001A0E  DF                db 0xdf
00001A0F  D0488D            ror byte [bx+si-0x73],1
00001A12  BBEEE8            mov bx,0xe8ee
00001A15  55                push bp
00001A16  FF2C              jmp far [si]
00001A18  C138C8            sar word [bx+si],byte 0xc8
00001A1B  AE                scasb
00001A1C  8E2F              mov gs,[bx]
00001A1E  A0F7B7            mov al,[0xb7f7]
00001A21  35C2EB            xor ax,0xebc2
00001A24  859549DB          test [di-0x24b7],dx
00001A28  8CDA              mov dx,ds
00001A2A  1A8EDFE8          sbb cl,[bp-0x1721]
00001A2E  3A9CEBEC          cmp bl,[si-0x1315]
00001A32  E2E8              loop 0x1a1c
00001A34  32979DE3          xor dl,[bx-0x1c63]
00001A38  DEBE3875          fidivr word [bp+0x7538]
00001A3C  DA8CC217          fimul dword [si+0x17c2]
00001A40  47                inc di
00001A41  EBDE              jmp short 0x1a21
00001A43  D9E8              fld1
00001A45  1B792E            sbb di,[bx+di+0x2e]
00001A48  50                push ax
00001A49  ED                in ax,dx
00001A4A  E322              jcxz 0x1a6e
00001A4C  AC                lodsb
00001A4D  19B72273          sbb [bx+0x7322],si
00001A51  E0F8              loopne 0x1a4b
00001A53  F3EB18            rep jmp short 0x1a6e
00001A56  E8015A            call 0x745a
00001A59  06                push es
00001A5A  1CFF              sbb al,0xff
00001A5C  D505              aad 0x5
00001A5E  E8F4FE            call 0x1955
00001A61  FE87F7E3          inc byte [bx-0x1c09]
00001A65  04F3              add al,0xf3
00001A67  A6                cmpsb
00001A68  752C              jnz 0x1a96
00001A6A  297F9F            sub [bx-0x61],di
00001A6D  D0CC              ror ah,1
00001A6F  E933FF            jmp 0x19a5
00001A72  05D7FC            add ax,0xfcd7
00001A75  1E                push ds
00001A76  3DE05E            cmp ax,0x5ee0
00001A79  084675            or [bp+0x75],al
00001A7C  0417              add al,0x17
00001A7E  27                daa
00001A7F  FF5EB5            call far [bp-0x4b]
00001A82  04D4              add al,0xd4
00001A84  B30C              mov bl,0xc
00001A86  083B              or [bp+di],bh
00001A88  0AFB              or bh,bl
00001A8A  FC                cld
00001A8B  F1                int1
00001A8C  1F                pop ds
00001A8D  5E                pop si
00001A8E  5D                pop bp
00001A8F  C22825            ret 0x2528
00001A92  26EE              es out dx,al
00001A94  C41E0672          les bx,[0x7206]
00001A98  52                push dx
00001A99  85F8              test ax,di
00001A9B  8131797E          xor word [bx+di],0x7e79
00001A9F  C9                leave
00001AA0  855B88            test [bp+di-0x78],bx
00001AA3  FC                cld
00001AA4  21B97007          and [bx+di+0x770],di
00001AA8  1F                pop ds
00001AA9  4C                dec sp
00001AAA  BC1665            mov sp,0x6516
00001AAD  5D                pop bp
00001AAE  96                xchg ax,si
00001AAF  82                db 0x82
00001AB0  098DCF88          or [di-0x7731],cx
00001AB4  1450              adc al,0x50
00001AB6  D6                salc
00001AB7  B10C              mov cl,0xc
00001AB9  FB                sti
00001ABA  08D2              or dl,dl
00001ABC  7AEA              jpe 0x1aa8
00001ABE  54                push sp
00001ABF  85D2              test dx,dx
00001AC1  EC                in al,dx
00001AC2  E912EE            jmp 0x8d7
00001AC5  334173            xor ax,[bx+di+0x73]
00001AC8  90                nop
00001AC9  1F                pop ds
00001ACA  44                inc sp
00001ACB  683D85            push word 0x853d
00001ACE  2488              and al,0x88
00001AD0  FB                sti
00001AD1  40                inc ax
00001AD2  F9                stc
00001AD3  FD                std
00001AD4  83EC08            sub sp,byte +0x8
00001AD7  16                push ss
00001AD8  DC8983C5          fmul qword [bx+di-0x3a7d]
00001ADC  046F              add al,0x6f
00001ADE  40                inc ax
00001ADF  00CD              add ch,cl
00001AE1  23427B            and ax,[bp+si+0x7b]
00001AE4  ED                in ax,dx
00001AE5  029A08FF          add bl,[bp+si-0xf8]
00001AE9  037F14            add di,[bx+0x14]
00001AEC  8C4E05            mov [bp+0x5],cs
00001AEF  876EEE            xchg [bp-0x12],bp
00001AF2  FC                cld
00001AF3  F8                clc
00001AF4  CB                retf
00001AF5  1BED              sbb bp,bp
00001AF7  8B6E02            mov bp,[bp+0x2]
00001AFA  90                nop
00001AFB  DA                db 0xda
00001AFC  FD                std
00001AFD  58                pop ax
00001AFE  0305              add ax,[di]
00001B00  B5DB              mov ch,0xdb
00001B02  E84800            call 0x1b4d
00001B05  94                xchg ax,sp
00001B06  F8                clc
00001B07  9C                pushf
00001B08  83C00B            add ax,byte +0xb
00001B0B  29DF              sub di,bx
00001B0D  43                inc bx
00001B0E  7402              jz 0x1b12
00001B10  50                push ax
00001B11  9D                popf
00001B12  F75873            neg word [bx+si+0x73]
00001B15  0D1E60            or ax,0x601e
00001B18  885E35            mov [bp+0x35],bl
00001B1B  4D                dec bp
00001B1C  031F              add bx,[bx]
00001B1E  8D50E8            lea dx,[bx+si-0x18]
00001B21  5D                pop bp
00001B22  EA9A967C58        jmp 0x587c:0x969a
00001B27  DB00              fild dword [bx+si]
00001B29  5A                pop dx
00001B2A  151443            adc ax,0x4314
00001B2D  2E37              cs aaa
00001B2F  05BC5E            add ax,0x5ebc
00001B32  C7                db 0xc7
00001B33  12FB              adc bh,bl
00001B35  7F6C              jg 0x1ba3
00001B37  847A2A            test [bp+si+0x2a],bh
00001B3A  FF803E55          inc word [bx+si+0x553e]
00001B3E  0D0172            or ax,0x7201
00001B41  FC                cld
00001B42  049C              add al,0x9c
00001B44  FB                sti
00001B45  F4                hlt
00001B46  9D                popf
00001B47  1F                pop ds
00001B48  2ABAD6C5          sub bh,[bp+si-0x3a2a]
00001B4C  151F21            adc ax,0x211f
00001B4F  0301              add ax,[bx+di]
00001B51  16                push ss
00001B52  DAA015FA          fisub dword [bx+si-0x5eb]
00001B56  B81450            mov ax,0x5014
00001B59  06                push es
00001B5A  87F5              xchg bp,si
00001B5C  1098F18C          adc [bx+si-0x730f],bl
00001B60  0F                db 0x0f
00001B61  27                daa
00001B62  CD28              int 0x28
00001B64  1084B988          adc [si-0x7747],al
00001B68  49                dec cx
00001B69  D7                xlatb
00001B6A  6F                outsw
00001B6B  3107              xor [bx],ax
00001B6D  58                pop ax
00001B6E  C3                ret
00001B6F  E0FB              loopne 0x1b6c
00001B71  80FC5C            cmp ah,0x5c
00001B74  202F              and [bx],ch
00001B76  080B              or [bp+di],cl
00001B78  8804              mov [si],al
00001B7A  36F9              ss stc
00001B7C  CAD64D            retf 0x4dd6
00001B7F  735F              jnc 0x1be0
00001B81  021F              add bl,[bx]
00001B83  72BD              jc 0x1b42
00001B85  EF                out dx,ax
00001B86  7497              jz 0x1b1f
00001B88  1103              adc [bp+di],ax
00001B8A  2CDD              sub al,0xdd
00001B8C  680915            push word 0x1509
00001B8F  C84B8B16          enter 0x8b4b,0x16
00001B93  DA74D7            fidiv dword [si-0x29]
00001B96  38D9              cmp cl,bl
00001B98  04CF              add al,0xcf
00001B9A  7F12              jg 0x1bae
00001B9C  0F848200          jz near 0x1c22
00001BA0  3DFC01            cmp ax,0x1fc
00001BA3  4A                dec dx
00001BA4  747D              jz 0x1c23
00001BA6  3D02BF            cmp ax,0xbf02
00001BA9  783D              js 0x1be8
00001BAB  334A75            xor cx,[bp+si+0x75]
00001BAE  8503              test [bp+di],ax
00001BB0  B370              mov bl,0x70
00001BB2  1896E6A9          sbb [bp-0x561a],dl
00001BB6  DE04              fiadd word [si]
00001BB8  087458            or [si+0x58],dh
00001BBB  5F                pop di
00001BBC  1475              adc al,0x75
00001BBE  52                push dx
00001BBF  55                push bp
00001BC0  0E                push cs
00001BC1  93                xchg ax,bx
00001BC2  29E9              sub cx,bp
00001BC4  0F2EA111B8        ucomiss xmm4,dword [bx+di-0x47ef]
00001BC9  6BD88C            imul bx,ax,byte -0x74
00001BCC  5F                pop di
00001BCD  7EE5              jng 0x1bb4
00001BCF  39F0              cmp ax,si
00001BD1  7414              jz 0x1be7
00001BD3  BE92D0            mov si,0xd092
00001BD6  BC5611            mov sp,0x1156
00001BD9  297045            sub [bx+si+0x45],si
00001BDC  2F                das
00001BDD  729D              jc 0x1b7c
00001BDF  855D6E            test [di+0x6e],bx
00001BE2  00FA              add dl,bh
00001BE4  17                pop ss
00001BE5  1B975D50          sbb dx,[bx+0x505d]
00001BE9  097222            or [bp+si+0x22],si
00001BEC  3EA5              ds movsw
00001BEE  E58A              in ax,0x8a
00001BF0  5F                pop di
00001BF1  D6                salc
00001BF2  06                push es
00001BF3  8066FADA          and byte [bp-0x6],0xda
00001BF7  FE                db 0xfe
00001BF8  5D                pop bp
00001BF9  5B                pop bx
00001BFA  2DCCB4            sub ax,0xb4cc
00001BFD  0105              add [di],ax
00001BFF  46                inc si
00001C00  5D                pop bp
00001C01  D8FB              fdivr st3
00001C03  99                cwd
00001C04  E9BFF6            jmp 0x12c6
00001C07  92                xchg ax,dx
00001C08  68F198            push word 0x98f1
00001C0B  2F                das
00001C0C  53                push bx
00001C0D  66FD              o32 std
00001C0F  FC                cld
00001C10  8CE6              mov si,fs
00001C12  8CEF              mov di,gs
00001C14  856079            test [bx+si+0x79],sp
00001C17  7761              ja 0x1c7a
00001C19  0F8EE6C5          jng near 0xe203
00001C1D  8EEF              mov gs,di
00001C1F  3866A6            cmp [bp-0x5a],ah
00001C22  6581CF1278        gs or di,0x7812
00001C27  10CD              adc ch,cl
00001C29  2F                das
00001C2A  96                xchg ax,si
00001C2B  9F                lahf
00001C2C  C6                db 0xc6
00001C2D  15882F            adc ax,0x2f88
00001C30  225E50            and bl,[bp+0x50]
00001C33  B8BBA0            mov ax,0xa0bb
00001C36  0D8CC6            or ax,0xc68c
00001C39  B5C3              mov ch,0xc3
00001C3B  82                db 0x82
00001C3C  B70A              mov bh,0xa
00001C3E  A118F1            mov ax,[0xf118]
00001C41  B8A210            mov ax,0x10a2
00001C44  4E                dec si
00001C45  7BB6              jpo 0x1bfd
00001C47  0E                push cs
00001C48  1096950E          adc [bp+0xe95],dl
00001C4C  96                xchg ax,si
00001C4D  2F                das
00001C4E  0C5F              or al,0x5f
00001C50  0AC4              or al,ah
00001C52  56                push si
00001C53  06                push es
00001C54  8D0B              lea cx,[bp+di]
00001C56  776B              ja 0x1cc3
00001C58  1C42              sbb al,0x42
00001C5A  A2C25F            mov [0x5fc2],al
00001C5D  99                cwd
00001C5E  B8A410            mov ax,0x10a4
00001C61  EBFA              jmp short 0x1c5d
00001C63  DC89CB8B          fmul qword [bx+di-0x7435]
00001C67  17                pop ss
00001C68  17                pop ss
00001C69  82                db 0x82
00001C6A  02F8              add bh,al
00001C6C  6F                outsw
00001C6D  1472              adc al,0x72
00001C6F  4F                dec di
00001C70  EBED              jmp short 0x1c5f
00001C72  4F                dec di
00001C73  89CA              mov dx,cx
00001C75  0FE08A5F08        pavgb mm1,[bp+si+0x85f]
00001C7A  15CDBC            adc ax,0xbccd
00001C7D  0F                db 0x0f
00001C7E  7362              jnc 0x1ce2
00001C80  B42C              mov ah,0x2c
00001C82  383B              cmp [bp+di],bh
00001C84  7D84              jnl 0x1c0a
00001C86  58                pop ax
00001C87  EBA7              jmp short 0x1c30
00001C89  AE                scasb
00001C8A  7574              jnz 0x1d00
00001C8C  DAA882EA          fisubr dword [bx+si-0x157e]
00001C90  26623A            bound di,[es:bp+si]
00001C93  2E5E              cs pop si
00001C95  05C0FF            add ax,0xffc0
00001C98  74D3              jz 0x1c6d
00001C9A  3C21              cmp al,0x21
00001C9C  74C1              jz 0x1c5f
00001C9E  3C22              cmp al,0x22
00001CA0  FF7466            push word [si+0x66]
00001CA3  3C23              cmp al,0x23
00001CA5  745C              jz 0x1d03
00001CA7  51                push cx
00001CA8  3CF8              cmp al,0xf8
00001CAA  0C74              or al,0x74
00001CAC  363C1E            ss cmp al,0x1e
00001CAF  DCA23C1F          fsub qword [bp+si+0x1f3c]
00001CB3  4A                dec dx
00001CB4  62B58EBC          bound si,[di-0x4372]
00001CB8  3D5B73            cmp ax,0x735b
00001CBB  06                push es
00001CBC  5A                pop dx
00001CBD  8B29              mov bp,[bx+di]
00001CBF  3DBE91            cmp ax,0x91be
00001CC2  EBF9              jmp short 0x1cbd
00001CC4  8E45D8            mov es,[di-0x28]
00001CC7  7F5D              jg 0x1d26
00001CC9  368D4DB6          lea cx,[ss:di-0x4a]
00001CCD  1B555F            sbb dx,[di+0x5f]
00001CD0  7508              jnz 0x1cda
00001CD2  C57DBB            lds di,[di-0x45]
00001CD5  0A6E5B            or ch,[bp+0x5b]
00001CD8  16                push ss
00001CD9  0D9A19            or ax,0x199a
00001CDC  4B                dec bx
00001CDD  2ADB              sub bl,bl
00001CDF  770B              ja 0x1cec
00001CE1  5F                pop di
00001CE2  72F6              jc 0x1cda
00001CE4  16                push ss
00001CE5  ED                in ax,dx
00001CE6  DB892289          fisttp dword [bx+di-0x76de]
00001CEA  2C89              sub al,0x89
00001CEC  BBEBE9            mov bx,0xe9eb
00001CEF  8D                db 0x8d
00001CF0  D246F6            rol byte [bp-0xa],cl
00001CF3  D2EB              shr bl,cl
00001CF5  C3                ret
00001CF6  42                inc dx
00001CF7  F699EBBA          neg byte [bx+di-0x4515]
00001CFB  92                xchg ax,dx
00001CFC  D0C5              rol ch,1
00001CFE  B057              mov al,0x57
00001D00  04A3              add al,0xa3
00001D02  37                aaa
00001D03  135C17            adc bx,[si+0x17]
00001D06  DE35              fidiv word [di]
00001D08  EBCA              jmp short 0x1cd4
00001D0A  07                pop es
00001D0B  8B817D58          mov ax,[bx+di+0x587d]
00001D0F  B414              mov ah,0x14
00001D11  06                push es
00001D12  8F                db 0x8f
00001D13  DFBE8E11          fistp qword [bp+0x118e]
00001D17  4C                dec sp
00001D18  F9                stc
00001D19  36C008D0          ror byte [ss:bx+si],byte 0xd0
00001D1D  1B2B              sbb bp,[bp+di]
00001D1F  F9                stc
00001D20  D8C0              fadd st0
00001D22  AD                lodsw
00001D23  771E              ja 0x1d43
00001D25  85511C            test [bx+di+0x1c],dx
00001D28  BD4A85            mov bp,0x854a
00001D2B  0D0207            or ax,0x702
00001D2E  772B              ja 0x1d5b
00001D30  06                push es
00001D31  B44B              mov ah,0x4b
00001D33  5B                pop bx
00001D34  9E                sahf
00001D35  CDC5              int 0xc5
00001D37  217228            and [bp+si+0x28],si
00001D3A  5D                pop bp
00001D3B  57                push di
00001D3C  203C              and [si],bh
00001D3E  7650              jna 0x1d90
00001D40  B43F              mov ah,0x3f
00001D42  0DE873            or ax,0x73e8
00001D45  036431            add sp,[si+0x31]
00001D48  3AC7              cmp al,bh
00001D4A  9A08C2502F        call 0x2f50:0xc208
00001D4F  B33F              mov bl,0x3f
00001D51  8EE2              mov fs,dx
00001D53  8026DA6364        and byte [0x63da],0x64
00001D58  1B6C89            sbb bp,[si-0x77]
00001D5B  C7                db 0xc7
00001D5C  6D                insw
00001D5D  0907              or [bx],ax
00001D5F  AA                stosb
00001D60  08548A            or [si-0x76],dl
00001D63  A8A9              test al,0xa9
00001D65  A6                cmpsb
00001D66  E075              loopne 0x1ddd
00001D68  030F              add cx,[bx]
00001D6A  B60D              mov dh,0xd
00001D6C  5C                pop sp
00001D6D  0AE6              or ah,dh
00001D6F  8B77B4            mov si,[bx-0x4c]
00001D72  1C65              sbb al,0x65
00001D74  42                inc dx
00001D75  D6                salc
00001D76  6838DF            push word 0xdf38
00001D79  6B1D54            imul bx,[di],byte +0x54
00001D7C  5A                pop dx
00001D7D  AA                stosb
00001D7E  D56C              aad 0x6c
00001D80  2EA6              cs cmpsb
00001D82  1E                push ds
00001D83  6D                insw
00001D84  059CB6            add ax,0xb69c
00001D87  DE14              ficom word [si]
00001D89  07                pop es
00001D8A  8D                db 0x8d
00001D8B  D2E8              shr al,cl
00001D8D  7F08              jg 0x1d97
00001D8F  3BDD              cmp bx,bp
00001D91  F1                int1
00001D92  7532              jnz 0x1dc6
00001D94  D108              ror word [bx+si],1
00001D96  06                push es
00001D97  4B                dec bx
00001D98  D975EA            fnstenv [di-0x16]
00001D9B  2965F6            sub [di-0xa],sp
00001D9E  DE                db 0xde
00001D9F  D820              fsub dword [bx+si]
00001DA1  7422              jz 0x1dc5
00001DA3  A5                movsw
00001DA4  8CED              mov bp,gs
00001DA6  BE7F04            mov si,0x47f
00001DA9  1012              adc [bp+si],dl
00001DAB  B7D5              mov bh,0xd5
00001DAD  18BFEF67          sbb [bx+0x67ef],bh
00001DB1  05FE39            add ax,0x39fe
00001DB4  F30B3B            rep or di,[bp+di]
00001DB7  897C34            mov [si+0x34],di
00001DBA  F1                int1
00001DBB  53                push bx
00001DBC  AA                stosb
00001DBD  68E874            push word 0x74e8
00001DC0  5B                pop bx
00001DC1  BE5728            mov si,0x2857
00001DC4  D0AD8C7E          shr byte [di+0x7e8c],1
00001DC8  BDD908            mov bp,0x8d9
00001DCB  1B9E03A1          sbb bx,[bp-0x5efd]
00001DCF  40                inc ax
00001DD0  D15AD4            rcr word [bp+si-0x2c],1
00001DD3  DF463F            fild word [bp+0x3f]
00001DD6  89FB              mov bx,di
00001DD8  39E0              cmp ax,sp
00001DDA  F775A7            div word [di-0x59]
00001DDD  34D2              xor al,0xd2
00001DDF  2F                das
00001DE0  1F                pop ds
00001DE1  CB                retf
00001DE2  EB1B              jmp short 0x1dff
00001DE4  EE                out dx,al
00001DE5  26F6451CF5        test byte [es:di+0x1c],0xf5
00001DEA  0D3D03            or ax,0x33d
00001DED  002A              add [bp+si],ch
00001DEF  5A                pop dx
00001DF0  3539DD            xor ax,0xdd39
00001DF3  13D3              adc dx,bx
00001DF5  EB07              jmp short 0x1dfe
00001DF7  CD77              int 0x77
00001DF9  9D                popf
00001DFA  6BA158794F        imul sp,[bx+di+0x7958],byte +0x4f
00001DFF  0501AC            add ax,0xac01
00001E02  0D541D            or ax,0x1d54
00001E05  1F                pop ds
00001E06  FF                db 0xff
00001E07  F9                stc
00001E08  61                popa
00001E09  8CEA              mov dx,gs
00001E0B  40                inc ax
00001E0C  6F                outsw
00001E0D  D4E9              aam 0xe9
00001E0F  45                inc bp
00001E10  FF13              call [bp+di]
00001E12  E631              out 0x31,al
00001E14  B647              mov dh,0x47
00001E16  1058D1            adc [bx+si-0x2f],bl
00001E19  B1A9              mov cl,0xa9
00001E1B  B5A8              mov ch,0xa8
00001E1D  08DA              or dl,bl
00001E1F  2C72              sub al,0x72
00001E21  17                pop ss
00001E22  1E                push ds
00001E23  3B65F8            cmp sp,[di-0x8]
00001E26  3B7706            cmp si,[bx+0x6]
00001E29  7735              ja 0x1e60
00001E2B  B756              mov bh,0x56
00001E2D  0E                push cs
00001E2E  72EE              jc 0x1e1e
00001E30  0B752E            or si,[di+0x2e]
00001E33  16                push ss
00001E34  6F                outsw
00001E35  BA460C            mov dx,0xc46
00001E38  7793              ja 0x1dcd
00001E3A  259A1E            and ax,0x1e9a
00001E3D  47                inc di
00001E3E  54                push sp
00001E3F  2E057514          cs add ax,0x1475
00001E43  8584A312          test [si+0x12a3],ax
00001E47  1E                push ds
00001E48  6C                insb
00001E49  095C6A            or [si+0x6a],bx
00001E4C  2AD1              sub dl,cl
00001E4E  E14A              loope 0x1e9a
00001E50  07                pop es
00001E51  D7                xlatb
00001E52  1F                pop ds
00001E53  44                inc sp
00001E54  45                inc bp
00001E55  07                pop es
00001E56  6D                insw
00001E57  5B                pop bx
00001E58  16                push ss
00001E59  A24DB7            mov [0xb74d],al
00001E5C  15AE31            adc ax,0x31ae
00001E5F  8AD0              mov dl,al
00001E61  D1                db 0xd1
00001E62  717A              jno 0x1ede
00001E64  54                push sp
00001E65  D0D6              rcl dh,1
00001E67  59                pop cx
00001E68  316265            xor [bp+si+0x65],sp
00001E6B  7137              jno 0x1ea4
00001E6D  DFE8              fucomip st0
00001E6F  C7                db 0xc7
00001E70  FE                db 0xfe
00001E71  14F0              adc al,0xf0
00001E73  83C35A            add bx,byte +0x5a
00001E76  EAD9EB44BE        jmp 0xbe44:0xebd9
00001E7B  4C                dec sp
00001E7C  E8E400            call 0x1f63
00001E7F  859B2731          test [bp+di+0x3127],bx
00001E83  F30DEF3F          rep or ax,0x3fef
00001E87  685C25            push word 0x255c
00001E8A  41                inc cx
00001E8B  FA                cli
00001E8C  1D6A02            sbb ax,0x26a
00001E8F  6A01              push byte +0x1
00001E91  96                xchg ax,si
00001E92  46                inc si
00001E93  14D1              adc al,0xd1
00001E95  3A6A92            cmp ch,[bp+si-0x6e]
00001E98  B9114F            mov cx,0x4f11
00001E9B  41                inc cx
00001E9C  E8D0A0            call 0xbf6f
00001E9F  01C3              add bx,ax
00001EA1  7912              jns 0x1eb5
00001EA3  69DBC97B          imul bx,bx,word 0x7bc9
00001EA7  8E6EFE            mov gs,[bp-0x2]
00001EAA  73F0              jnc 0x1e9c
00001EAC  288A1A3E          sub [bp+si+0x3e1a],cl
00001EB0  8E9052F4          mov ss,[bx+si-0xbae]
00001EB4  856352            test [bp+di+0x52],sp
00001EB7  FB                sti
00001EB8  CDFC              int 0xfc
00001EBA  0860E5            or [bx+si-0x1b],ah
00001EBD  A914E2            test ax,0xe214
00001EC0  02EB              add ch,bl
00001EC2  CF                iret
00001EC3  C4                db 0xc4
00001EC4  DD                db 0xdd
00001EC5  AD                lodsw
00001EC6  26B6D0            es mov dh,0xd0
00001EC9  57                push di
00001ECA  04A8              add al,0xa8
00001ECC  9C                pushf
00001ECD  5B                pop bx
00001ECE  7B26              jpo 0x1ef6
00001ED0  A6                cmpsb
00001ED1  C220C1            ret 0xc120
00001ED4  17                pop ss
00001ED5  6D                insw
00001ED6  D7                xlatb
00001ED7  0E                push cs
00001ED8  DCA6CA75          fsub qword [bp+0x75ca]
00001EDC  E557              in ax,0x57
00001EDE  5C                pop sp
00001EDF  BD23EC            mov bp,0xec23
00001EE2  1027              adc [bx],ah
00001EE4  3812              cmp [bp+si],dl
00001EE6  B7A2              mov bh,0xa2
00001EE8  57                push di
00001EE9  055620            add ax,0x2056
00001EEC  FC                cld
00001EED  60                pusha
00001EEE  80FA60            cmp dl,0x60
00001EF1  7556              jnz 0x1f49
00001EF3  716C              jno 0x1f61
00001EF5  345D              xor al,0x5d
00001EF7  30DC              xor ah,bl
00001EF9  0AE6              or ah,dh
00001EFB  F032ED            lock xor ch,ch
00001EFE  3F                aas
00001EFF  C2083A            ret 0x3a08
00001F02  A6                cmpsb
00001F03  250816            and ax,0x1608
00001F06  A5                movsw
00001F07  B0C2              mov al,0xc2
00001F09  750D              jnz 0x1f18
00001F0B  0F37              getsec
00001F0D  1AC9              sbb cl,cl
00001F0F  8D6384            lea sp,[bp+di-0x7c]
00001F12  C9                leave
00001F13  0E                push cs
00001F14  0E                push cs
00001F15  DD34              fnsave [si]
00001F17  82                db 0x82
00001F18  3578A5            xor ax,0xa578
00001F1B  C08F1E7708        ror byte [bx+0x771e],byte 0x8
00001F20  46                inc si
00001F21  C7                db 0xc7
00001F22  D7                xlatb
00001F23  BC3C0A            mov sp,0xa3c
00001F26  DEEE              fsubp st6
00001F28  2460              and al,0x60
00001F2A  3CD8              cmp al,0xd8
00001F2C  69710700C0        imul si,[bx+di+0x7],word 0xc000
00001F31  31F6              xor si,si
00001F33  B899FE            mov ax,0xfe99
00001F36  017178            add [bx+di+0x78],si
00001F39  70CE              jo 0x1f09
00001F3B  F1                int1
00001F3C  43                inc bx
00001F3D  9D                popf
00001F3E  0321              add sp,[bx+di]
00001F40  D526              aad 0x26
00001F42  0A33              or dh,[bp+di]
00001F44  B618              mov dh,0x18
00001F46  AA                stosb
00001F47  0B671B            or sp,[bx+0x1b]
00001F4A  61                popa
00001F4B  7C0F              jl 0x1f5c
00001F4D  65C4770D          les si,[gs:bx+0xd]
00001F51  5D                pop bp
00001F52  6231              bound si,[bx+di]
00001F54  730E              jnc 0x1f64
00001F56  06                push es
00001F57  7F74              jg 0x1fcd
00001F59  33FE              xor di,si
00001F5B  4E                dec si
00001F5C  FE801A65          inc byte [bx+si+0x651a]
00001F60  2D6182            sub ax,0x8261
00001F63  2AEC              sub ch,ah
00001F65  4B                dec bx
00001F66  8D4735            lea ax,[bx+0x35]
00001F69  37                aaa
00001F6A  50                push ax
00001F6B  8C978B34          mov [bx+0x348b],ss
00001F6F  72F9              jc 0x1f6a
00001F71  05A1B4            add ax,0xb4a1
00001F74  39AE0570          cmp [bp+0x7005],bp
00001F78  6A61              push byte +0x61
00001F7A  9A2601DF5A        call 0x5adf:0x126
00001F7F  11F7              adc di,si
00001F81  EBCD              jmp short 0x1f50
00001F83  1F                pop ds
00001F84  7FBF              jg 0x1f45
00001F86  0B6CFA            or bp,[si-0x6]
00001F89  2D05F0            sub ax,0xf005
00001F8C  0ADF              or bl,bh
00001F8E  C1623916          shl word [bp+si+0x39],byte 0x16
00001F92  E12D              loope 0x1fc1
00001F94  3F                aas
00001F95  61                popa
00001F96  DEB1D5C8          fidiv word [bx+di-0x372b]
00001F9A  44                inc sp
00001F9B  FF2F              jmp far [bx]
00001F9D  2860DA            sub [bx+si-0x26],ah
00001FA0  7DE1              jnl 0x1f83
00001FA2  B8204B            mov ax,0x4b20
00001FA5  31B7BD81          xor [bx-0x7e43],si
00001FA9  E0E2              loopne 0x1f8d
00001FAB  37                aaa
00001FAC  B095              mov al,0x95
00001FAE  52                push dx
00001FAF  10AD6952          adc [di+0x5269],ch
00001FB3  2AE2              sub ah,dl
00001FB5  5E                pop si
00001FB6  243D              and al,0x3d
00001FB8  CF                iret
00001FB9  5D                pop bp
00001FBA  D80A              fmul dword [bp+si]
00001FBC  703E              jo 0x1ffc
00001FBE  6E                outsb
00001FBF  4B                dec bx
00001FC0  02E9              add ch,cl
00001FC2  4A                dec dx
00001FC3  2D75FB            sub ax,0xfb75
00001FC6  06                push es
00001FC7  92                xchg ax,dx
00001FC8  031E8ECB          add bx,[0xcb8e]
00001FCC  51                push cx
00001FCD  DE08              fimul word [bx+si]
00001FCF  01A29303          add [bp+si+0x393],sp
00001FD3  A5                movsw
00001FD4  158A02            adc ax,0x28a
00001FD7  5B                pop bx
00001FD8  1F                pop ds
00001FD9  2606              es push es
00001FDB  54                push sp
00001FDC  B2CD              mov dl,0xcd
00001FDE  21FB              and bx,di
00001FE0  037415            add si,[si+0x15]
00001FE3  EB06              jmp short 0x1feb
00001FE5  865CC0            xchg [si-0x40],bl
00001FE8  1CAD              sbb al,0xad
00001FEA  B81801            mov ax,0x118
00001FED  6BB22D7E94        imul si,[bp+si+0x7e2d],byte -0x6c
00001FF2  0309              add cx,[bx+di]
00001FF4  EB14              jmp short 0x200a
00001FF6  FE0608EB          inc byte [0xeb08]
00001FFA  0D712D            or ax,0x2d71
00001FFD  DE061F08          fiadd word [0x81f]
00002001  01A901E4          add [bx+di-0x1bff],bp
00002005  B695              mov dh,0x95
00002007  03487E            add cx,[bx+si+0x7e]
0000200A  17                pop ss
0000200B  A29F03            mov [0x39f],al
0000200E  A7                cmpsw
0000200F  EB83              jmp short 0x1f94
00002011  A4                movsb
00002012  3175C4            xor [di-0x3c],si
00002015  5C                pop sp
00002016  6C                insb
00002017  A9F6BD            test ax,0xbdf6
0000201A  02750C            add dh,[di+0xc]
0000201D  8D                db 0x8d
0000201E  DA06BF05          fiadd dword [0x5bf]
00002022  FC                cld
00002023  FF7214            push word [bp+si+0x14]
00002026  C7                db 0xc7
00002027  E906A6            jmp 0xc630
0000202A  03E8              add bp,ax
0000202C  55                push bp
0000202D  BE22FC            mov si,0xfc22
00002030  A3AC03            mov [0x3ac],ax
00002033  7DAE              jnl 0x1fe3
00002035  03AF450D          add bp,[bx+0xd45]
00002039  6A15              push byte +0x15
0000203B  B19E              mov cl,0x9e
0000203D  DB                db 0xdb
0000203E  7259              jc 0x2099
00002040  26106C74          adc [es:si+0x74],ch
00002044  53                push bx
00002045  B97900            mov cx,0x79
00002048  7D4C              jnl 0x2096
0000204A  A17A00            mov ax,[0x7a]
0000204D  BFDE7C            mov di,0x7cde
00002050  00A3A003          add [bp+di+0x3a0],ah
00002054  F7                db 0xf7
00002055  8916A203          mov [0x3a2],dx
00002059  8EC5              mov es,bp
0000205B  103D              adc [di],bh
0000205D  57                push di
0000205E  0CE1              or al,0xe1
00002060  6D                insw
00002061  636202            arpl [bp+si+0x2],sp
00002064  DA25              fisub dword [di]
00002066  F7966092          not word [bp-0x6da0]
0000206A  F4                hlt
0000206B  7B3C              jpo 0x20a9
0000206D  D413              aam 0x13
0000206F  5B                pop bx
00002070  1DF876            sbb ax,0x76f8
00002073  C57530            lds si,[di+0x30]
00002076  F621              mul byte [bx+di]
00002078  03DA              add bx,dx
0000207A  363CC3            ss cmp al,0xc3
0000207D  26850B            test [es:bp+di],cx
00002080  65AB              gs stosw
00002082  1BCD              sbb cx,bp
00002084  9C                pushf
00002085  47                inc di
00002086  AE                scasb
00002087  CDB5              int 0xb5
00002089  A34984            mov [0x8449],ax
0000208C  34F6              xor al,0xf6
0000208E  E6F7              out 0xf7,al
00002090  A1BEA9            mov ax,[0xa9be]
00002093  B27D              mov dl,0x7d
00002095  80E481            and ah,0x81
00002098  3DBBCE            cmp ax,0xcebb
0000209B  7431              jz 0x20ce
0000209D  FB                sti
0000209E  B77C              mov bh,0x7c
000020A0  051176            add ax,0x7611
000020A3  EB29              jmp short 0x20ce
000020A5  57                push di
000020A6  2218              and bl,[bx+si]
000020A8  ED                in ax,dx
000020A9  90                nop
000020AA  14B8              adc al,0xb8
000020AC  BD31E8            mov bp,0xe831
000020AF  91                xchg ax,cx
000020B0  0A02              or al,[bp+si]
000020B2  73A5              jnc 0x2059
000020B4  90                nop
000020B5  52                push dx
000020B6  2BE9              sub bp,cx
000020B8  C3                ret
000020B9  FE                db 0xfe
000020BA  EE                out dx,al
000020BB  BC76DA            mov sp,0xda76
000020BE  EBDD              jmp short 0x209d
000020C0  354DD9            xor ax,0xd94d
000020C3  A1FEAD            mov ax,[0xadfe]
000020C6  1E                push ds
000020C7  E99AFC            jmp 0x1d64
000020CA  01E0              add ax,sp
000020CC  E90460            jmp 0x80d3
000020CF  06                push es
000020D0  8B1B              mov bx,[bp+di]
000020D2  B5A1              mov ch,0xa1
000020D4  6F                outsw
000020D5  2B436A            sub ax,[bp+di+0x6a]
000020D8  3DE86F            cmp ax,0x6fe8
000020DB  54                push sp
000020DC  DF                db 0xdf
000020DD  D86500            fsub dword [di+0x0]
000020E0  3B5EFF            cmp bx,[bp-0x1]
000020E3  FC                cld
000020E4  7342              jnc 0x2128
000020E6  8D871402          lea ax,[bx+0x214]
000020EA  39E1              cmp cx,sp
000020EC  F8                clc
000020ED  763A              jna 0x2129
000020EF  CE                into
000020F0  41                inc cx
000020F1  2A2F              sub ch,[bx]
000020F3  DB                db 0xdb
000020F4  67FD              a32 std
000020F6  A3D7C9            mov [0xc9d7],ax
000020F9  41                inc cx
000020FA  06                push es
000020FB  AB                stosw
000020FC  A3DF56            mov [0x56df],ax
000020FF  35ED89            xor ax,0x89ed
00002102  040C              add al,0xc
00002104  B537              mov ch,0x37
00002106  087AE4            or [bp+si-0x1c],bh
00002109  DCEC              fsub to st4
0000210B  8B3637DA          mov si,[0xda37]
0000210F  F3750B            rep jnz 0x211d
00002112  7512              jnz 0x2126
00002114  89DB              mov bx,bx
00002116  0A8C064E          or cl,[si+0x4e06]
0000211A  6E                outsb
0000211B  FF4663            inc word [bp+0x63]
0000211E  311F              xor [bx],bx
00002120  FE4975            dec byte [bx+di+0x75]
00002123  B0C9              mov al,0xc9
00002125  E9D9FD            jmp 0x1f01
00002128  33CA              xor cx,dx
0000212A  1D0637            sbb ax,0x3706
0000212D  1BA402EE          sbb sp,[si-0x11fe]
00002131  88165CC9          mov [0xc95c],dl
00002135  DB                db 0xdb
00002136  A25B04            mov [0x45b],al
00002139  E4E1              in al,0xe1
0000213B  A35D03            mov [0x35d],ax
0000213E  A4                movsb
0000213F  6D                insw
00002140  5A                pop dx
00002141  E96BEA            jmp 0xbaf
00002144  0444              add al,0x44
00002146  A835              test al,0x35
00002148  5F                pop di
00002149  1DF7F6            sbb ax,0xf6f7
0000214C  06                push es
0000214D  5E                pop si
0000214E  FC                cld
0000214F  0380742D          add ax,[bx+si+0x2d74]
00002153  89F2              mov dx,si
00002155  6E                outsb
00002156  86B85ADC          xchg [bx+si-0x23a6],bh
0000215A  CB                retf
0000215B  A209FD            mov [0xfd09],al
0000215E  097617            or [bp+0x17],si
00002161  E1C9              loope 0x212c
00002163  D163E8            shl word [bp+di-0x18],1
00002166  97                xchg ax,di
00002167  A807              test al,0x7
00002169  5D                pop bp
0000216A  76B8              jna 0x2124
0000216C  F4                hlt
0000216D  68F75B            push word 0x5bf7
00002170  266C              es insb
00002172  FC                cld
00002173  6807B3            push word 0xb307
00002176  FF19              call far [bx+di]
00002178  872A              xchg [bp+si],bp
0000217A  CF                iret
0000217B  71D1              jno 0x214e
0000217D  89C3              mov bx,ax
0000217F  0E                push cs
00002180  6C                insb
00002181  43                inc bx
00002182  7708              ja 0x218c
00002184  A36805            mov [0x568],ax
00002187  720A              jc 0x2193
00002189  A36AE8            mov [0xe86a],ax
0000218C  56                push si
0000218D  0C37              or al,0x37
0000218F  EB79              jmp short 0x220a
00002191  FF41D0            inc word [bx+di-0x30]
00002194  8CE3              mov bx,fs
00002196  DB0D              fisttp dword [di]
00002198  07                pop es
00002199  A11F57            mov ax,[0x571f]
0000219C  3B7501            cmp si,[di+0x1]
0000219F  99                cwd
000021A0  5D                pop bp
000021A1  CB                retf
000021A2  736B              jnc 0x220f
000021A4  47                inc di
000021A5  82                db 0x82
000021A6  DB88E651          fisttp dword [bx+si+0x51e6]
000021AA  A5                movsw
000021AB  8D15              lea dx,[di]
000021AD  D11E51D8          rcr word [0xd851],1
000021B1  F6E8              imul al
000021B3  B5F4              mov ch,0xf4
000021B5  BF0D6E            mov di,0x6e0d
000021B8  C9                leave
000021B9  C0C37C            rol bl,byte 0x7c
000021BC  7DBF              jnl 0x217d
000021BE  C9                leave
000021BF  03AD6DBA          add bp,[di-0x4593]
000021C3  0519D9            add ax,0xd919
000021C6  1C00              sbb al,0x0
000021C8  A1ED08            mov ax,[0x8ed]
000021CB  BA3674            mov dx,0x7436
000021CE  52                push dx
000021CF  0D2C3C            or ax,0x3c2c
000021D2  5D                pop bp
000021D3  2395026E          and dx,[di+0x6e02]
000021D7  7DBA              jnl 0x2193
000021D9  07                pop es
000021DA  99                cwd
000021DB  B18D              mov cl,0x8d
000021DD  7DCA              jnl 0x21a9
000021DF  D26C0C            shr byte [si+0xc],cl
000021E2  37                aaa
000021E3  F4                hlt
000021E4  95                xchg ax,bp
000021E5  832CC3            sub word [si],byte -0x3d
000021E8  5D                pop bp
000021E9  F1                int1
000021EA  09A132DA          or [bx+di-0x25ce],sp
000021EE  2834              sub [si],dh
000021F0  00E4              add ah,ah
000021F2  20CD              and ch,cl
000021F4  A6                cmpsb
000021F5  43                inc bx
000021F6  830A3A            or word [bp+si],byte +0x3a
000021F9  80DB81            sbb bl,0x81
000021FC  57                push di
000021FD  0910              or [bx+si],dx
000021FF  41                inc cx
00002200  EE                out dx,al
00002201  0F294C0D          movaps oword [si+0xd],xmm1
00002205  199812E6          sbb [bx+si-0x19ee],bx
00002209  E9CA0A            jmp 0x2cd6
0000220C  F2D45A            repne aam 0x5a
0000220F  EA99D72712        jmp 0x1227:0xd799
00002214  0475              add al,0x75
00002216  FA                cli
00002217  0802              or [bp+si],al
00002219  8BA3B5B1          mov sp,[bp+di-0x4e4b]
0000221D  EB1D              jmp short 0x223c
0000221F  0B3B              or di,[bp+di]
00002221  152C17            adc ax,0x172c
00002224  0B7F47            or di,[bx+0x47]
00002227  C01377            rcl byte [bp+di],byte 0x77
0000222A  B287              mov dl,0x87
0000222C  0BF5              or si,bp
0000222E  57                push di
0000222F  117218            adc [bp+si+0x18],si
00002232  0C68              or al,0x68
00002234  395CF9            cmp [si-0x7],bx
00002237  AB                stosw
00002238  70FF              jo 0x2239
0000223A  D44A              aam 0x4a
0000223C  47                inc di
0000223D  0FB46FC5          lfs bp,[bx-0x3b]
00002241  06                push es
00002242  6703A9C33D76A0    add bp,[ecx-0x5f89c23d]
00002249  00BDEDFC          add [di-0x313],bh
0000224D  0D4E55            or ax,0x554e
00002250  2C88              sub al,0x88
00002252  195CB9            sbb [si-0x47],bx
00002255  255A46            and ax,0x465a
00002258  98                cbw
00002259  F8                clc
0000225A  7610              jna 0x226c
0000225C  FEC8              dec al
0000225E  56                push si
0000225F  4F                dec di
00002260  0CC2              or al,0xc2
00002262  0A5BB6            or bl,[bp+di-0x4a]
00002265  0407              add al,0x7
00002267  37                aaa
00002268  8800              mov [bx+si],al
0000226A  D0                db 0xd0
0000226B  B4A2              mov ah,0xa2
0000226D  2417              and al,0x17
0000226F  07                pop es
00002270  AF                scasw
00002271  7B4F              jpo 0x22c2
00002273  93                xchg ax,bx
00002274  F8                clc
00002275  D5C4              aad 0xc4
00002277  3C0A              cmp al,0xa
00002279  37                aaa
0000227A  AA                stosb
0000227B  D4D2              aam 0xd2
0000227D  68C4AD            push word 0xadc4
00002280  06                push es
00002281  10A098DF          adc [bx+si-0x2068],ah
00002285  91                xchg ax,cx
00002286  F8                clc
00002287  0F8396AF          jnc near 0xd221
0000228B  007D46            add [di+0x46],bh
0000228E  A880              test al,0x80
00002290  58                pop ax
00002291  A4                movsb
00002292  07                pop es
00002293  AD                lodsw
00002294  1C8D              sbb al,0x8d
00002296  FF                db 0xff
00002297  BAD03C            mov dx,0x3cd0
0000229A  1AB82780          sbb bh,[bx+si-0x7fd9]
0000229E  00AD70BB          add [di-0x4490],ch
000022A2  106624            adc [bp+0x24],ah
000022A5  07                pop es
000022A6  FC                cld
000022A7  B408              mov ah,0x8
000022A9  28C4              sub ah,al
000022AB  886656            mov [bp+0x56],ah
000022AE  07                pop es
000022AF  E0FA              loopne 0x22ab
000022B1  2038              and [bx+si],bh
000022B3  C053E775          rcl byte [bp+di-0x19],byte 0x75
000022B7  E87CFF            call 0x2236
000022BA  BE78FC            mov si,0xfc78
000022BD  8077110B          xor byte [bx+0x11],0xb
000022C1  37                aaa
000022C2  7D2C              jnl 0x22f0
000022C4  083C              or [si],bh
000022C6  13A17F6F          adc sp,[bx+di+0x6f7f]
000022CA  8534              test [si],si
000022CC  F4                hlt
000022CD  025613            add dl,[bp+0x13]
000022D0  8BF8              mov di,ax
000022D2  74FC              jz 0x22d0
000022D4  9F                lahf
000022D5  B3C8              mov bl,0xc8
000022D7  FE4013            inc byte [bx+si+0x13]
000022DA  AA                stosb
000022DB  CF                iret
000022DC  DF43FA            fild word [bp+di-0x6]
000022DF  1E                push ds
000022E0  52                push dx
000022E1  B8B704            mov ax,0x4b7
000022E4  C6                db 0xc6
000022E5  9B090F            wait or [bx],cx
000022E8  92                xchg ax,dx
000022E9  D7                xlatb
000022EA  DC09              fmul qword [bx+di]
000022EC  F620              mul byte [bx+si]
000022EE  D0A136C3          shl byte [bx+di-0x3cca],1
000022F2  CD29              int 0x29
000022F4  09E2              or dx,sp
000022F6  9B1E              wait push ds
000022F8  B9BE08            mov cx,0x8be
000022FB  394109            cmp [bx+di+0x9],ax
000022FE  60                pusha
000022FF  7A7D              jpe 0x237e
00002301  039955ED          add bx,[bx+di-0x12ab]
00002305  DF                db 0xdf
00002306  D3                db 0xd3
00002307  75A3              jnz 0x22ac
00002309  47                inc di
0000230A  E9630B            jmp 0x2e70
0000230D  33F8              xor di,ax
0000230F  0A4C03            or cl,[si+0x3]
00002312  A3163D            mov [0x3d16],ax
00002315  A870              test al,0x70
00002317  681D84            push word 0x841d
0000231A  88C6              mov dh,al
0000231C  5E                pop si
0000231D  FE07              inc byte [bx]
0000231F  B653              mov dh,0x53
00002321  FE                db 0xfe
00002322  57                push di
00002323  4D                dec bp
00002324  EA89091866        jmp 0x6618:0x989
00002329  07                pop es
0000232A  BF77B1            mov di,0xb177
0000232D  01B80F60          add [bx+si+0x600f],di
00002331  5A                pop dx
00002332  09E8              or ax,bp
00002334  63C2              arpl dx,ax
00002336  1A20              sbb ah,[bx+si]
00002338  0521EE            add ax,0xee21
0000233B  1E                push ds
0000233C  A081FA            mov al,[0xfa81]
0000233F  DFC7              ffreep st7
00002341  7424              jz 0x2367
00002343  83FB6F            cmp bx,byte +0x6f
00002346  CA0E8A            retf 0x8a0e
00002349  16                push ss
0000234A  0D32E2            or ax,0xe232
0000234D  DB07              fild dword [bx]
0000234F  B1CC              mov cl,0xcc
00002351  D1                db 0xd1
00002352  F4                hlt
00002353  BB2000            mov bx,0x20
00002356  257307            and ax,0x773
00002359  027E74            add bh,[bp+0x74]
0000235C  090F              or [bx],cx
0000235E  B6D1              mov dh,0xd1
00002360  54                push sp
00002361  6E                outsb
00002362  A8AD              test al,0xad
00002364  FE                db 0xfe
00002365  FD                std
00002366  3EF8              ds clc
00002368  08A136F3          or [bx+di-0xcca],ah
0000236C  B191              mov cl,0x91
0000236E  FF                db 0xff
0000236F  BF2875            mov di,0x7528
00002372  EF                out dx,ax
00002373  E973FD            jmp 0x20e9
00002376  1907              sbb [bx],ax
00002378  FE                db 0xfe
00002379  3C20              cmp al,0x20
0000237B  7318              jnc 0x2395
0000237D  3D09ED            cmp ax,0xed09
00002380  CC                int3
00002381  3D0ABD            cmp ax,0xbd0a
00002384  040E              add al,0xe
00002386  3D0DDD            cmp ax,0xdd0d
00002389  35B85E            xor ax,0x5eb8
0000238C  005C6C            add [si+0x6c],bl
0000238F  05708D            add ax,0x8d70
00002392  40                inc ax
00002393  23BAE8A8          and di,[bp+si-0x5718]
00002397  D833              fdiv dword [bp+di]
00002399  1E                push ds
0000239A  6D                insw
0000239B  3CB8              cmp al,0xb8
0000239D  BBCAE8            mov bx,0xe8ca
000023A0  53                push bx
000023A1  0F60DA            punpcklbw mm3,mm2
000023A4  56                push si
000023A5  1E                push ds
000023A6  07                pop es
000023A7  CE                into
000023A8  4B                dec bx
000023A9  ED                in ax,dx
000023AA  0F43FF            cmovnc di,di
000023AD  42                inc dx
000023AE  49                dec cx
000023AF  23D3              and dx,bx
000023B1  D1                db 0xd1
000023B2  305C34            xor [si+0x34],bl
000023B5  E70B              out 0xb,ax
000023B7  EE                out dx,al
000023B8  4B                dec bx
000023B9  6A91              push byte -0x6f
000023BB  5B                pop bx
000023BC  E922C1            jmp 0xe4e1
000023BF  812D4DEF          sub word [di],0xef4d
000023C3  B604              mov dh,0x4
000023C5  C2FA75            ret 0x75fa
000023C8  15EB12            adc ax,0x12eb
000023CB  6D                insw
000023CC  AA                stosb
000023CD  0E                push cs
000023CE  B7D5              mov bh,0xd5
000023D0  47                inc di
000023D1  46                inc si
000023D2  0B847580          or ax,[si-0x7f8b]
000023D6  D86DF1            fsubr dword [di-0xf]
000023D9  5D                pop bp
000023DA  E91A46            jmp 0x69f7
000023DD  AB                stosw
000023DE  45                inc bp
000023DF  3A50AE            cmp dl,[bx+si-0x52]
000023E2  44                inc sp
000023E3  818BDD715402      or word [bp+di+0x71dd],0x254
000023E9  82                db 0x82
000023EA  49                dec cx
000023EB  96                xchg ax,si
000023EC  6AA0              push byte -0x60
000023EE  A5                movsw
000023EF  1D4C4B            sbb ax,0x4b4c
000023F2  031E5258          add bx,[0x5852]
000023F6  E2EB              loop 0x23e3
000023F8  58                pop ax
000023F9  9A9FFD0F26        call 0x260f:0xfd9f
000023FE  85B9316B          test [bx+di+0x6b31],di
00002402  380D              cmp [di],cl
00002404  B1EC              mov cl,0xec
00002406  FC                cld
00002407  4D                dec bp
00002408  C3                ret
00002409  40                inc ax
0000240A  5A                pop dx
0000240B  E6EE              out 0xee,al
0000240D  B91A8B            mov cx,0x8b1a
00002410  142E              adc al,0x2e
00002412  255A19            and ax,0x195a
00002415  36BCA137          ss mov sp,0x37a1
00002419  BB39C3            mov bx,0xc339
0000241C  683F34            push word 0x343f
0000241F  D912              fst dword [bp+si]
00002421  4F                dec di
00002422  B70D              mov bh,0xd
00002424  E86C56            call 0x7a93
00002427  F9                stc
00002428  D41E              aam 0x1e
0000242A  B162              mov cl,0x62
0000242C  265B              es pop bx
0000242E  EB0D              jmp short 0x243d
00002430  FE                db 0xfe
00002431  73AF              jnc 0x23e2
00002433  E84AF4            call 0x1880
00002436  EBAA              jmp short 0x23e2
00002438  0E                push cs
00002439  4B                dec bx
0000243A  855E61            test [bp+0x61],bx
0000243D  9A538B3BA9        call 0xa93b:0x8b53
00002442  2408              and al,0x8
00002444  633F              arpl [bx],di
00002446  3E6A0B            ds push byte +0xb
00002449  F0886E50          lock mov [bp+0x50],ch
0000244D  3D1305            cmp ax,0x513
00002450  60                pusha
00002451  97                xchg ax,di
00002452  31FE              xor si,di
00002454  136C67            adc bp,[si+0x67]
00002457  6A5F              push byte +0x5f
00002459  C1FA7E            sar dx,byte 0x7e
0000245C  245C              and al,0x5c
0000245E  FFE7              jmp di
00002460  69140015          imul dx,[si],word 0x1500
00002464  45                inc bp
00002465  AD                lodsw
00002466  1079C4            adc [bx+di-0x3c],bh
00002469  E961B6            jmp 0xdacd
0000246C  D6                salc
0000246D  C9                leave
0000246E  197A1D            sbb [bp+si+0x1d],di
00002471  00D7              add bh,dl
00002473  1F                pop ds
00002474  1B3A              sbb di,[bp+si]
00002476  3DC924            cmp ax,0x24c9
00002479  9F                lahf
0000247A  C0026E            rol byte [bp+si],byte 0x6e
0000247D  D0C1              rol cl,1
0000247F  7722              ja 0x24a3
00002481  D0E8              shr al,1
00002483  27                daa
00002484  C1FF59            sar di,byte 0x59
00002487  C9                leave
00002488  3C2B              cmp al,0x2b
0000248A  C1                db 0xc1
0000248B  37                aaa
0000248C  01E8              add ax,bp
0000248E  9F                lahf
0000248F  07                pop es
00002490  E9E899            jmp 0xbe7b
00002493  FC                cld
00002494  2934              sub [si],si
00002496  CDC3              int 0xc3
00002498  06                push es
00002499  86F2              xchg dl,dh
0000249B  8BE8              mov bp,ax
0000249D  04FF              add al,0xff
0000249F  C9                leave
000024A0  6C                insb
000024A1  7251              jc 0x24f4
000024A3  B9359D            mov cx,0x9d35
000024A6  D4F6              aam 0xf6
000024A8  2D513B            sub ax,0x3b51
000024AB  87A9834E          xchg [bx+di+0x4e83],bp
000024AF  8B935F25          mov dx,[bp+di+0x255f]
000024B3  770B              ja 0x24c0
000024B5  63E8              arpl ax,bp
000024B7  AA                stosb
000024B8  BC64FC            mov sp,0xfc64
000024BB  A1C66A            mov ax,[0x6ac6]
000024BE  5B                pop bx
000024BF  A4                movsb
000024C0  1BDB              sbb bx,bx
000024C2  007F4B            add [bx+0x4b],bh
000024C5  3B04              cmp ax,[si]
000024C7  28D7              sub bh,dl
000024C9  5F                pop di
000024CA  49                dec cx
000024CB  3E003F            add [ds:bx],bh
000024CE  00F8              add al,bh
000024D0  40                inc ax
000024D1  004B00            add [bp+di+0x0],cl
000024D4  4D                dec bp
000024D5  3495              xor al,0x95
000024D7  6F                outsw
000024D8  3DEB23            cmp ax,0x23eb
000024DB  04F7              add al,0xf7
000024DD  2311              and dx,[bx+di]
000024DF  226A05            and ch,[bp+si+0x5]
000024E2  7D2C              jnl 0x2510
000024E4  225E22            and bl,[bp+0x22]
000024E7  9BDD03            wait fld qword [bp+di]
000024EA  D522              aad 0x22
000024EC  A6                cmpsb
000024ED  8F                db 0x8f
000024EE  0DF522            or ax,0x22f5
000024F1  EAE223AD23        jmp 0x23ad:0x23e2
000024F6  41                inc cx
000024F7  A28710            mov [0x1087],al
000024FA  628BD366          bound cx,[bp+di+0x66d3]
000024FE  69106586          imul dx,[bx+si],word 0x8665
00002502  2CB6              sub al,0xb6
00002504  89F2              mov dx,si
00002506  259D9C            and ax,0x9c9d
00002509  FE                db 0xfe
0000250A  2DB30E            sub ax,0xeb3
0000250D  52                push dx
0000250E  57                push di
0000250F  C505              lds ax,[di]
00002511  2B3B              sub di,[bp+di]
00002513  06                push es
00002514  B145              mov cl,0x45
00002516  014DB8            add [di-0x48],cx
00002519  7688              jna 0x24a3
0000251B  F8                clc
0000251C  D6                salc
0000251D  A4                movsb
0000251E  88B7F1F6          mov [bx-0x90f],dh
00002522  004B2B            add [bp+di+0x2b],cl
00002525  5A                pop dx
00002526  A10283            mov ax,[0x8302]
00002529  B501              mov ch,0x1
0000252B  C7                db 0xc7
0000252C  56                push si
0000252D  9D                popf
0000252E  E8020D            call 0x3233
00002531  56                push si
00002532  B91BB9            mov cx,0xb91b
00002535  F7BB2146          idiv word [bp+di+0x4621]
00002539  F09B5B            wait lock pop bx
0000253C  FF                db 0xff
0000253D  EE                out dx,al
0000253E  E7E8              out 0xe8,ax
00002540  42                inc dx
00002541  FF86FC96          inc word [bp-0x6904]
00002545  B310              mov bl,0x10
00002547  109B31C1          adc [bp+di-0x3ecf],bl
0000254B  E08A              loopne 0x24d7
0000254D  08FF              or bh,bh
0000254F  20FC              and ah,bh
00002551  0E                push cs
00002552  07                pop es
00002553  B96F75            mov cx,0x756f
00002556  BF4921            mov di,0x2149
00002559  C6                db 0xc6
0000255A  F2AF              repne scasw
0000255C  B5F8              mov ch,0xf8
0000255E  45                inc bp
0000255F  1CFF              sbb al,0xff
00002561  E08D              loopne 0x24f0
00002563  E805B8            call 0xdd6b
00002566  3CD2              cmp al,0xd2
00002568  01E9              add cx,bp
0000256A  3B0D              cmp cx,[di]
0000256C  7707              ja 0x2575
0000256E  FD                std
0000256F  07                pop es
00002570  4B                dec bx
00002571  0AFF              or bh,bh
00002573  FB                sti
00002574  FC                cld
00002575  E9BF01            jmp 0x2737
00002578  3B5752            cmp dx,[bx+0x52]
0000257B  AC                lodsb
0000257C  B4FC              mov ah,0xfc
0000257E  56                push si
0000257F  EE                out dx,al
00002580  ED                in ax,dx
00002581  48                dec ax
00002582  3B970617          cmp dx,[bx+0x1706]
00002586  DBAD24F7          fld tword [di-0x8dc]
0000258A  BA4678            mov dx,0x7846
0000258D  03D0              add dx,ax
0000258F  9D                popf
00002590  7233              jc 0x25c5
00002592  38B92E0A          cmp [bx+di+0xa2e],bh
00002596  4D                dec bp
00002597  FD                std
00002598  DFAAFE88          fild qword [bp+si-0x7702]
0000259C  85FB              test bx,di
0000259E  DB01              fild dword [bx+di]
000025A0  FF20              jmp [bx+si]
000025A2  E9D98D            jmp 0xb37e
000025A5  016FED            add [bx-0x13],bp
000025A8  C1FE91            sar si,byte 0x91
000025AB  DBF0              fcomi st0
000025AD  847E0A            test [bp+0xa],bh
000025B0  27                daa
000025B1  B21B              mov dl,0x1b
000025B3  1024              adc [si],ah
000025B5  57                push di
000025B6  16                push ss
000025B7  7B41              jpo 0x25fa
000025B9  41                inc cx
000025BA  01F1              add cx,si
000025BC  3C68              cmp al,0x68
000025BE  51                push cx
000025BF  B526              mov ch,0x26
000025C1  DFAC29F0          fild qword [si-0xfd7]
000025C5  50                push ax
000025C6  E8F98C            call 0xb2c2
000025C9  F054              lock push sp
000025CB  1F                pop ds
000025CC  06                push es
000025CD  29C8              sub ax,cx
000025CF  40                inc ax
000025D0  75BD              jnz 0x258f
000025D2  8128DF50          sub word [bx+si],0x50df
000025D6  44                inc sp
000025D7  2BC2              sub ax,dx
000025D9  757B              jnz 0x2656
000025DB  F07328            lock jnc 0x2606
000025DE  7307              jnc 0x25e7
000025E0  761F              jna 0x2601
000025E2  657139            gs jno 0x261e
000025E5  DB                db 0xdb
000025E6  FC                cld
000025E7  2EEB35            cs jmp short 0x261f
000025EA  DCBB2CE9          fdivr qword [bp+di-0x16d4]
000025EE  16                push ss
000025EF  A1B80E            mov ax,[0xeb8]
000025F2  40                inc ax
000025F3  40                inc ax
000025F4  B88A1A            mov ax,0x1a8a
000025F7  0DE816            or ax,0x16e8
000025FA  7637              jna 0x2633
000025FC  76FA              jna 0x25f8
000025FE  EF                out dx,ax
000025FF  6B1783            imul dx,[bx],byte -0x7d
00002602  AE                scasb
00002603  FA                cli
00002604  CB                retf
00002605  0B91E986          or dx,[bx+di-0x7917]
00002609  7A34              jpe 0x263f
0000260B  16                push ss
0000260C  F3801C9C          rep sbb byte [si],0x9c
00002610  5D                pop bp
00002611  C5                db 0xc5
00002612  E9B8E7            jmp 0xdcd
00002615  0E                push cs
00002616  2F                das
00002617  647656            fs jna 0x2670
0000261A  FF4AF6            dec word [bp+si-0xa]
0000261D  E9498A            jmp 0xb069
00002620  97                xchg ax,di
00002621  775B              ja 0x267e
00002623  3AA0F20A          cmp ah,[bx+si+0xaf2]
00002627  DEED              fsubp st5
00002629  7173              jno 0x269e
0000262B  2056C7            and [bp-0x39],dl
0000262E  DBBD1309          fstp tword [di+0x913]
00002632  5B                pop bx
00002633  E083              loopne 0x25b8
00002635  F9                stc
00002636  C10880            ror word [bx+si],byte 0x80
00002639  E1F8              loope 0x2633
0000263B  9C                pushf
0000263C  0E                push cs
0000263D  96                xchg ax,si
0000263E  91                xchg ax,cx
0000263F  04D0              add al,0xd0
00002641  BF2DF7            mov di,0xf72d
00002644  41                inc cx
00002645  4B                dec bx
00002646  24DB              and al,0xdb
00002648  1D2383            sbb ax,0x8323
0000264B  84FC              test ah,bh
0000264D  AF                scasw
0000264E  7F39              jg 0x2689
00002650  C877F2EB          enter 0xf277,0xeb
00002654  0E                push cs
00002655  4D                dec bp
00002656  AD                lodsw
00002657  057613            add ax,0x1376
0000265A  6F                outsw
0000265B  FC                cld
0000265C  E8046A            call 0x9063
0000265F  58                pop ax
00002660  75F6              jnz 0x2658
00002662  5F                pop di
00002663  27                daa
00002664  8500              test [bx+si],ax
00002666  4E                dec si
00002667  E9C381            jmp 0xa82d
0000266A  00484B            add [bx+si+0x4b],cl
0000266D  5C                pop sp
0000266E  B684              mov dh,0x84
00002670  FB                sti
00002671  58                pop ax
00002672  F2AE              repne scasb
00002674  FB                sti
00002675  78A6              js 0x261d
00002677  FB                sti
00002678  45                inc bp
00002679  E2CD              loop 0x2648
0000267B  9F                lahf
0000267C  E7E9              out 0xe9,ax
0000267E  F2730D            bnd jnc 0x268e
00002681  B93D91            mov cx,0x913d
00002684  FB                sti
00002685  F6                db 0xf6
00002686  CC                int3
00002687  EB80              jmp short 0x2609
00002689  8EB60BFC          mov segr6,[bp-0x3f5]
0000268D  E9D258            jmp 0x7f62
00002690  FF5EE5            call far [bp-0x1b]
00002693  FC                cld
00002694  1A870711          sbb al,[bx+0x1107]
00002698  E101              loope 0x269b
0000269A  7337              jnc 0x26d3
0000269C  0C06              or al,0x6
0000269E  772F              ja 0x26cf
000026A0  640281DA14        add al,[fs:bx+di+0x14da]
000026A5  333F              xor di,[bx]
000026A7  E5D3              in ax,0xd3
000026A9  FB                sti
000026AA  0807              or [bx],al
000026AC  0D08D2            or ax,0xd208
000026AF  47                inc di
000026B0  07                pop es
000026B1  E149              loope 0x26fc
000026B3  FB                sti
000026B4  B2B7              mov dl,0xb7
000026B6  7307              jnc 0x26bf
000026B8  EE                out dx,al
000026B9  D0                db 0xd0
000026BA  75A2              jnz 0x265e
000026BC  7DBD              jnl 0x267b
000026BE  D4E1              aam 0xe1
000026C0  32DE              xor bl,dh
000026C2  70DF              jo 0x26a3
000026C4  FD                std
000026C5  91                xchg ax,cx
000026C6  22ED              and ch,ch
000026C8  D7                xlatb
000026C9  EE                out dx,al
000026CA  5C                pop sp
000026CB  42                inc dx
000026CC  CA8506            retf 0x685
000026CF  8905              mov [di],ax
000026D1  46                inc si
000026D2  757B              jnz 0x274f
000026D4  021B              add bl,[bp+di]
000026D6  2A0E0034          sub cl,[0x3400]
000026DA  B4C8              mov ah,0xc8
000026DC  CA7CBC            retf 0xbc7c
000026DF  F9                stc
000026E0  FA                cli
000026E1  CB                retf
000026E2  3F                aas
000026E3  07                pop es
000026E4  833EB72246        cmp word [0x22b7],byte +0x46
000026E9  753F              jnz 0x272a
000026EB  025FB6            add bl,[bx-0x4a]
000026EE  27                daa
000026EF  8016AAC7E6        adc byte [0xc7aa],0xe6
000026F4  2E36B545          ss mov ch,0x45
000026F8  AB                stosw
000026F9  058957            add ax,0x5789
000026FC  4B                dec bx
000026FD  46                inc si
000026FE  362F              ss das
00002700  CF                iret
00002701  CA4550            retf 0x5045
00002704  B86F36            mov ax,0x366f
00002707  7C97              jl 0x26a0
00002709  A1847E            mov ax,[0x7e84]
0000270C  B502              mov ch,0x2
0000270E  21A32F96          and [bp+di-0x69d1],sp
00002712  5A                pop dx
00002713  2ED503            cs aad 0x3
00002716  B44F              mov ah,0x4f
00002718  0933              or [bp+di],si
0000271A  3C0D              cmp al,0xd
0000271C  54                push sp
0000271D  D6                salc
0000271E  4A                dec dx
0000271F  301ECA0E          xor [0xeca],bl
00002723  17                pop ss
00002724  42                inc dx
00002725  81C16E16          add cx,0x166e
00002729  2B0EDE12          sub cx,[0x12de]
0000272D  39CB              cmp bx,cx
0000272F  76D8              jna 0x2709
00002731  40                inc ax
00002732  CB                retf
00002733  BAC90A            mov dx,0xac9
00002736  2D056F            sub ax,0x6f05
00002739  0D1E56            or ax,0x561e
0000273C  53                push bx
0000273D  8D                db 0x8d
0000273E  E828DE            call 0x569
00002741  011E1725          add [0x2517],bx
00002745  3E6233            bound si,[ds:bp+di]
00002748  154C6F            adc ax,0x6f4c
0000274B  8674FA            xchg [si-0x6],dh
0000274E  A8A0              test al,0xa0
00002750  03D4              add dx,sp
00002752  AB                stosw
00002753  0A4F0D            or cl,[bx+0xd]
00002756  89F8              mov ax,di
00002758  60                pusha
00002759  18C3              sbb bl,al
0000275B  B87A0B            mov ax,0xb7a
0000275E  ED                in ax,dx
0000275F  40                inc ax
00002760  DE793D            fidivr word [bx+di+0x3d]
00002763  BC0773            mov sp,0x7307
00002766  E424              in al,0x24
00002768  C2A53B            ret 0x3ba5
0000276B  5E                pop si
0000276C  E8DA42            call 0x6a49
0000276F  37                aaa
00002770  EBC6              jmp short 0x2738
00002772  49                dec cx
00002773  A141B1            mov ax,[0xb141]
00002776  50                push ax
00002777  CA6F7B            retf 0x7b6f
0000277A  44                inc sp
0000277B  F8                clc
0000277C  69D0C06D          imul dx,ax,word 0x6dc0
00002780  A0B265            mov al,[0x65b2]
00002783  53                push bx
00002784  BFCFF8            mov di,0xf8cf
00002787  C1E802            shr ax,byte 0x2
0000278A  01BAD025          add [bp+si+0x25d0],di
0000278E  98                cbw
0000278F  EC                in al,dx
00002790  F4                hlt
00002791  B603              mov dh,0x3
00002793  4D                dec bp
00002794  77B8              ja 0x274e
00002796  D52E              aad 0x2e
00002798  0068E1            add [bx+si-0x1f],ch
0000279B  1C38              sbb al,0x38
0000279D  1F                pop ds
0000279E  1E                push ds
0000279F  E706              out 0x6,ax
000027A1  E53F              in ax,0x3f
000027A3  807517A0          xor byte [di+0x17],0xa0
000027A7  B9BB03            mov cx,0x3bb
000027AA  F6A0B86F          mul byte [bx+si+0x6fb8]
000027AE  0507A0            add ax,0xa007
000027B1  BB770A            mov bx,0xa77
000027B4  03A0BA74          add sp,[bx+si+0x74ba]
000027B8  050205            add ax,0x502
000027BB  8A10              mov dl,[bx+si]
000027BD  E8A417            call 0x3f64
000027C0  37                aaa
000027C1  7480              jz 0x2743
000027C3  3F                aas
000027C4  56                push si
000027C5  B0DB              mov al,0xdb
000027C7  0C0A              or al,0xa
000027C9  0357B6            add dx,[bx-0x4a]
000027CC  02161163          add dl,[0x6311]
000027D0  8B29              mov bp,[bx+di]
000027D2  6BF303            imul si,bx,byte +0x3
000027D5  DF46A0            fild word [bp-0x60]
000027D8  A8FF              test al,0xff
000027DA  DBDB              fcmovnu st3
000027DC  A24241            mov [0x4142],al
000027DF  B6CA              mov dh,0xca
000027E1  A241A8            mov [0xa841],al
000027E4  DDED              fucomp st5
000027E6  A2BBDB            mov [0xdbbb],al
000027E9  0502A2            add ax,0xa202
000027EC  42                inc dx
000027ED  40                inc ax
000027EE  F6                db 0xf6
000027EF  8A836378          mov al,[bp+di+0x7863]
000027F3  7411              jz 0x2806
000027F5  96                xchg ax,si
000027F6  BE2EA6            mov si,0xa62e
000027F9  FC                cld
000027FA  C530              lds si,[bx+si]
000027FC  00FB              add bl,bh
000027FE  9B06              wait push es
00002800  013A              add [bp+si],di
00002802  94                xchg ax,sp
00002803  86E1              xchg cl,ah
00002805  0466              add al,0x66
00002807  59                pop cx
00002808  90                nop
00002809  D8562C            fcom dword [bp+0x2c]
0000280C  227D62            and bh,[di+0x62]
0000280F  52                push dx
00002810  B9B6E4            mov cx,0xe4b6
00002813  A1B48E            mov ax,[0x8eb4]
00002816  0F                db 0x0f
00002817  0D64F8            or ax,0xf864
0000281A  57                push di
0000281B  C8214DB8          enter 0x4d21,0xb8
0000281F  3B5418            cmp dx,[si+0x18]
00002822  B6D1              mov dh,0xd1
00002824  41                inc cx
00002825  0D6AC3            or ax,0xc36a
00002828  1829              sbb [bx+di],ch
0000282A  F1                int1
0000282B  40                inc ax
0000282C  E8E12B            call 0x5410
0000282F  C1452760          rol word [di+0x27],byte 0x60
00002833  3CFF              cmp al,0xff
00002835  7203              jc 0x283a
00002837  42                inc dx
00002838  EBF3              jmp short 0x282d
0000283A  890F              mov [bx],cx
0000283C  88C3              mov bl,al
0000283E  57                push di
0000283F  03C7              add ax,di
00002841  60                pusha
00002842  2A4425            sub al,[si+0x25]
00002845  7F73              jg 0x28ba
00002847  C14082F3          rol word [bx+si-0x7e],byte 0xf3
0000284B  8A51C1            mov dl,[bx+di-0x3f]
0000284E  BE19F7            mov si,0xf719
00002851  F388D0            rep mov al,dl
00002854  0FD96672          psubusw mm4,[bp+0x72]
00002858  874E0A            xchg [bp+0xa],cx
0000285B  8F                db 0x8f
0000285C  D6                salc
0000285D  CD03              int 0x3
0000285F  E04F              loopne 0x28b0
00002861  026FB3            add ch,[bx-0x4d]
00002864  99                cwd
00002865  FE81FE6E          inc byte [bx+di+0x6efe]
00002869  6D                insw
0000286A  7224              jc 0x2890
0000286C  DF05              fild word [di]
0000286E  3308              xor cx,[bx+si]
00002870  771E              ja 0x2890
00002872  47                inc di
00002873  866D72            xchg [di+0x72],ch
00002876  1904              sbb [si],ax
00002878  FB                sti
00002879  0C77              or al,0x77
0000287B  1483              adc al,0x83
0000287D  F9                stc
0000287E  09710F            or [bx+di+0xf],si
00002881  89AD2E01          mov [di+0x12e],bp
00002885  6F                outsw
00002886  2F                das
00002887  07                pop es
00002888  2B47E3            sub ax,[bx-0x1d]
0000288B  FE                db 0xfe
0000288C  39C1              cmp cx,ax
0000288E  2D5DF7            sub ax,0xf75d
00002891  EBBE              jmp short 0x2851
00002893  B7AC              mov bh,0xac
00002895  A9DB7A            test ax,0x7adb
00002898  FA                cli
00002899  3BBD6EFE          cmp di,[di-0x192]
0000289D  A3B68E            mov [0x8eb6],ax
000028A0  E999FE            jmp 0x273c
000028A3  4E                dec si
000028A4  1040E3            adc [bx+si-0x1d],al
000028A7  1CC3              sbb al,0xc3
000028A9  628A36A1          bound cx,[bp+si-0x5eca]
000028AD  861E71EE          xchg [0xee71],bl
000028B1  8D8AD30A          lea cx,[bp+si+0xad3]
000028B5  7722              ja 0x28d9
000028B7  7B05              jpo 0x28be
000028B9  77B8              ja 0x2873
000028BB  F7                db 0xf7
000028BC  0A42F8            or al,[bp+si-0x8]
000028BF  C1EBA0            shr bx,byte 0xa0
000028C2  638E2343          arpl [bp+0x4323],cx
000028C6  CB                retf
000028C7  40                inc ax
000028C8  05BCDE            add ax,0xdebc
000028CB  A32403            mov [0x324],ax
000028CE  0AA4C50C          or ah,[si+0xcc5]
000028D2  52                push dx
000028D3  8AED              mov ch,ch
000028D5  68B84E            push word 0x4eb8
000028D8  FA                cli
000028D9  28DC              sub ah,bl
000028DB  83C40A            add sp,byte +0xa
000028DE  12985826          adc bl,[bx+si+0x2658]
000028E2  08EB              or bl,ch
000028E4  3208              xor cl,[bx+si]
000028E6  283A              sub [bp+si],bh
000028E8  52                push dx
000028E9  5C                pop sp
000028EA  D50C              aad 0xc
000028EC  018E0C38          add [bp+0x380c],cx
000028F0  2BEF              sub bp,di
000028F2  6E                outsb
000028F3  DB                db 0xdb
000028F4  304295            xor [bp+si-0x6b],al
000028F7  7E53              jng 0x294c
000028F9  BB7104            mov bx,0x471
000028FC  0861E1            or [bx+di-0x1f],ah
000028FF  765D              jna 0x295e
00002901  2480              and al,0x80
00002903  C3                ret
00002904  F1                int1
00002905  B7B1              mov bh,0xb1
00002907  8D                db 0x8d
00002908  E6FF              out 0xff,al
0000290A  5D                pop bp
0000290B  93                xchg ax,bx
0000290C  0807              or [bx],al
0000290E  80FE19            cmp dh,0x19
00002911  F7                db 0xf7
00002912  88C1              mov cl,al
00002914  80F9AD            cmp cl,0xad
00002917  0452              add al,0x52
00002919  35D03F            xor ax,0x3fd0
0000291C  A010D9            mov al,[0xd910]
0000291F  A13639            mov ax,[0x3936]
00002922  C2A0F7            ret 0xf7a0
00002925  D0DA              rcr dl,1
00002927  43                inc bx
00002928  82                db 0x82
00002929  5E                pop si
0000292A  F61F              neg byte [bx]
0000292C  0E                push cs
0000292D  59                pop cx
0000292E  07                pop es
0000292F  35D2D8            xor ax,0xd8d2
00002932  87E1              xchg cx,sp
00002934  88C8              mov al,cl
00002936  3B14              cmp dx,[si]
00002938  D6                salc
00002939  0DD65B            or ax,0x5bd6
0000293C  1F                pop ds
0000293D  80277F            and byte [bx],0x7f
00002940  0D9943            or ax,0x4399
00002943  E8F683            call 0xad3c
00002946  FE                db 0xfe
00002947  58                pop ax
00002948  9F                lahf
00002949  0E                push cs
0000294A  DF5F06            fistp word [bx+0x6]
0000294D  14BA              adc al,0xba
0000294F  0413              add al,0x13
00002951  5B                pop bx
00002952  A38856            mov [0x5688],ax
00002955  108B2E58          adc [bp+di+0x582e],cl
00002959  0F611F            punpcklwd mm3,[bx]
0000295C  7059              jo 0x29b7
0000295E  01579F            add [bx-0x61],dx
00002961  A5                movsw
00002962  81C4C6EC          add sp,0xecc6
00002966  7092              jo 0x28fa
00002968  1BBABDEC          sbb di,[bp+si-0x1343]
0000296C  057767            add ax,0x6777
0000296F  E9B6EC            jmp 0x1628
00002972  82                db 0x82
00002973  53                push bx
00002974  16                push ss
00002975  8647AE            xchg [bx-0x52],al
00002978  DBD0              fcmovnbe st0
0000297A  7206              jc 0x2982
0000297C  9F                lahf
0000297D  C46BC0            les bp,[bp+di-0x40]
00002980  58                pop ax
00002981  52                push dx
00002982  54                push sp
00002983  D03C              sar byte [si],1
00002985  D4E8              aam 0xe8
00002987  3EB6F3            ds mov dh,0xf3
0000298A  D80E33C4          fmul dword [0xc433]
0000298E  057B43            add ax,0x437b
00002991  EC                in al,dx
00002992  3666C405          les eax,[ss:di]
00002996  258035            and ax,0x3580
00002999  A6                cmpsb
0000299A  07                pop es
0000299B  9A301086FB        call 0xfb86:0x1030
000029A0  BA4516            mov dx,0x1645
000029A3  47                inc di
000029A4  06                push es
000029A5  E282              loop 0x2929
000029A7  0458              add al,0x58
000029A9  94                xchg ax,sp
000029AA  1BAD3D75          sbb bp,[di+0x753d]
000029AE  31481F            xor [bx+si+0x1f],cx
000029B1  2B05              sub ax,[di]
000029B3  0226F606          add ah,[0x6f6]
000029B7  36035B4D          add bx,[ss:bp+di+0x4d]
000029BB  B92A7B            mov cx,0x7b2a
000029BE  3AAFE12F          cmp ch,[bx+0x2fe1]
000029C2  B180              mov cl,0x80
000029C4  D6                salc
000029C5  8D                db 0x8d
000029C6  F2                repne
000029C7  C5                db 0xc5
000029C8  DB                db 0xdb
000029C9  FFE0              jmp ax
000029CB  5F                pop di
000029CC  6B760F3A          imul si,[bp+0xf],byte +0x3a
000029D0  BE0BC7            mov si,0xc70b
000029D3  04F1              add al,0xf1
000029D5  FF                db 0xff
000029D6  FE                db 0xfe
000029D7  7BE9              jpo 0x29c2
000029D9  B107              mov cl,0x7
000029DB  2F                das
000029DC  C3                ret
000029DD  BB4753            mov bx,0x5347
000029E0  57                push di
000029E1  47                inc di
000029E2  02930DE3          add dl,[bp+di-0x1cf3]
000029E6  1D6A44            sbb ax,0x446a
000029E9  6E                outsb
000029EA  6ADC              push byte -0x24
000029EC  C7                db 0xc7
000029ED  262BED            es sub bp,bp
000029F0  E99107            jmp 0x3184
000029F3  40                inc ax
000029F4  A5                movsw
000029F5  66D7              o32 xlatb
000029F7  EE                out dx,al
000029F8  9E                sahf
000029F9  05FF00            add ax,0xff
000029FC  6E                outsb
000029FD  1C7C              sbb al,0x7c
000029FF  3CD8              cmp al,0xd8
00002A01  A82A              test al,0x2a
00002A03  6AE4              push byte -0x1c
00002A05  2CDB              sub al,0xdb
00002A07  5D                pop bp
00002A08  F9                stc
00002A09  7185              jno 0x2990
00002A0B  FE                db 0xfe
00002A0C  5A                pop dx
00002A0D  2A8EC126          sub cl,[bp+0x26c1]
00002A11  8D53FE            lea dx,[bp+di-0x2]
00002A14  047D              add al,0x7d
00002A16  136BD0            adc bp,[bp+di-0x30]
00002A19  3B83251B          cmp ax,[bp+di+0x1b25]
00002A1D  52                push dx
00002A1E  47                inc di
00002A1F  FE                db 0xfe
00002A20  A00501            mov al,[0x105]
00002A23  D3891ED0          ror word [bx+di-0x2fe2],cl
00002A27  311C              xor [si],bx
00002A29  D535              aad 0x35
00002A2B  3B4DF6            cmp cx,[di-0xa]
00002A2E  17                pop ss
00002A2F  6802EE            push word 0xee02
00002A32  6D                insw
00002A33  D3EB              shr bx,cl
00002A35  CC                int3
00002A36  0A443B            or al,[si+0x3b]
00002A39  41                inc cx
00002A3A  C2A099            ret 0x99a0
00002A3D  79BF              jns 0x29fe
00002A3F  3432              xor al,0x32
00002A41  7311              jnc 0x2a54
00002A43  26                es
00002A44  C4                db 0xc4
00002A45  DA5734            ficom dword [bx+0x34]
00002A48  1AE6              sbb ah,dh
00002A4A  EAB6DA07C4        jmp 0xc407:0xdab6
00002A4F  B46C              mov ah,0x6c
00002A51  6C                insb
00002A52  51                push cx
00002A53  FA                cli
00002A54  5C                pop sp
00002A55  C3                ret
00002A56  99                cwd
00002A57  D96C16            fldcw [si+0x16]
00002A5A  8514              test [si],dx
00002A5C  F1                int1
00002A5D  830C6C            or word [si],byte +0x6c
00002A60  309EB883          xor [bp-0x7c48],bl
00002A64  3F                aas
00002A65  68484C            push word 0x4c48
00002A68  864A16            xchg [bp+si+0x16],cl
00002A6B  C0B8414942        sar byte [bx+si+0x4941],byte 0x42
00002A70  CF                iret
00002A71  06                push es
00002A72  D6                salc
00002A73  13AB00B6          adc bp,[bp+di-0x4a00]
00002A77  29C2              sub dx,ax
00002A79  A6                cmpsb
00002A7A  3191EA70          xor [bx+di+0x70ea],dx
00002A7E  40                inc ax
00002A7F  6E                outsb
00002A80  BBE990            mov bx,0x90e9
00002A83  010B              add [bp+di],cx
00002A85  42                inc dx
00002A86  E007              loopne 0x2a8f
00002A88  B6C5              mov dh,0xc5
00002A8A  02DB              add bl,bl
00002A8C  06                push es
00002A8D  0D0C80            or ax,0x800c
00002A90  28B00DEB          sub [bx+si-0x14f3],dh
00002A94  8502              test [bp+si],ax
00002A96  DB1B              fistp dword [bp+di]
00002A98  CAFB2D            retf 0x2dfb
00002A9B  DBCE              fcmovne st6
00002A9D  110A              adc [bp+si],cx
00002A9F  0229              add ch,[bx+di]
00002AA1  B617              mov dh,0x17
00002AA3  00E4              add ah,ah
00002AA5  16                push ss
00002AA6  BEDC74            mov si,0x74dc
00002AA9  4F                dec di
00002AAA  A12C9F            mov ax,[0x9f2c]
00002AAD  758B              jnz 0x2a3a
00002AAF  3EDF2E03BE        fild qword [ds:0xbe03]
00002AB4  8CB52EC8          mov [di-0x37d2],segr6
00002AB8  48                dec ax
00002AB9  347F              xor al,0x7f
00002ABB  8916CE05          mov [0x5ce],dx
00002ABF  A3C0D0            mov [0xd0c0],ax
00002AC2  053463            add ax,0x6334
00002AC5  2C07              sub al,0x7
00002AC7  06                push es
00002AC8  B522              mov ch,0x22
00002ACA  C3                ret
00002ACB  3E                ds
00002ACC  82                db 0x82
00002ACD  6695              xchg eax,ebp
00002ACF  F60508            test byte [di],0x8
00002AD2  11508C            adc [bx+si-0x74],dx
00002AD5  AD                lodsw
00002AD6  9D                popf
00002AD7  E0E8              loopne 0x2ac1
00002AD9  3AED              cmp ch,ch
00002ADB  25016B            and ax,0x6b01
00002ADE  39449D            cmp [si-0x63],ax
00002AE1  41                inc cx
00002AE2  E9C110            jmp 0x3ba6
00002AE5  0130              add [bx+si],si
00002AE7  58                pop ax
00002AE8  09BF60CD          or [bx-0x32a0],di
00002AEC  BAFC07            mov dx,0x7fc
00002AEF  26C704B373        mov word [es:si],0x73b3
00002AF4  0902              or [bp+si],ax
00002AF6  FB                sti
00002AF7  EA569D1A05        jmp 0x51a:0x9d56
00002AFC  6A4F              push byte +0x4f
00002AFE  EB70              jmp short 0x2b70
00002B00  44                inc sp
00002B01  0DFB0E            or ax,0xefb
00002B04  16                push ss
00002B05  84D1              test cl,dl
00002B07  8D                db 0x8d
00002B08  D8ED              fsubr st5
00002B0A  6C                insb
00002B0B  F30565B1          rep add ax,0xb165
00002B0F  D1AF852A          shr word [bx+0x2a85],1
00002B13  91                xchg ax,cx
00002B14  F07F06            lock jg 0x2b1d
00002B17  7524              jnz 0x2b3d
00002B19  B87676            mov ax,0x7676
00002B1C  2024              and [si],ah
00002B1E  A5                movsw
00002B1F  60                pusha
00002B20  19B8130B          sbb [bx+si+0xb13],di
00002B24  B04E              mov al,0x4e
00002B26  1D7A74            sbb ax,0x747a
00002B29  C3                ret
00002B2A  0D6532            or ax,0x3265
00002B2D  51                push cx
00002B2E  43                inc bx
00002B2F  F4                hlt
00002B30  99                cwd
00002B31  5C                pop sp
00002B32  2D46ED            sub ax,0xed46
00002B35  1AC0              sbb al,al
00002B37  058DEC            add ax,0xec8d
00002B3A  E99C00            jmp 0x2bd9
00002B3D  55                push bp
00002B3E  60                pusha
00002B3F  3E9BF2A840        ds wait repne test al,0x40
00002B44  68FB47            push word 0x47fb
00002B47  E187              loope 0x2ad0
00002B49  0082A895          add [bp+si-0x6a58],al
00002B4D  20985F25          and [bx+si+0x255f],bl
00002B51  9AE3E81FFA        call 0xfa1f:0xe8e3
00002B56  16                push ss
00002B57  AC                lodsb
00002B58  0C6F              or al,0x6f
00002B5A  BECEF5            mov si,0xf5ce
00002B5D  8BDA              mov bx,dx
00002B5F  0A803A01          or al,[bx+si+0x13a]
00002B63  5F                pop di
00002B64  09AED0A2          or [bp-0x5d30],bp
00002B68  D91A              fstp dword [bp+si]
00002B6A  DC40F5            fadd qword [bx+si-0xb]
00002B6D  6F                outsw
00002B6E  5A                pop dx
00002B6F  8737              xchg [bx],si
00002B71  C7                db 0xc7
00002B72  EBBC              jmp short 0x2b30
00002B74  652ADB            gs sub bl,bl
00002B77  1E                push ds
00002B78  683A43            push word 0x433a
00002B7B  09473A            or [bx+0x3a],ax
00002B7E  42                inc dx
00002B7F  02D1              add dl,cl
00002B81  3002              xor [bp+si],al
00002B83  E58E              in ax,0x8e
00002B85  10A0195C          adc [bx+si+0x5c19],ah
00002B89  50                push ax
00002B8A  035000            add dx,[bx+si+0x0]
00002B8D  D426              aam 0x26
00002B8F  15B4BF            adc ax,0xbfb4
00002B92  56                push si
00002B93  2ACD              sub cl,ch
00002B95  3607              ss pop es
00002B97  EBE4              jmp short 0x2b7d
00002B99  1D7561            sbb ax,0x6175
00002B9C  10BA3612          adc [bp+si+0x1236],bh
00002BA0  56                push si
00002BA1  A5                movsw
00002BA2  A3125E            mov [0x5e12],ax
00002BA5  DF10              fist word [bx+si]
00002BA7  7691              jna 0x2b3a
00002BA9  82                db 0x82
00002BAA  204DFA            and [di-0x6],cl
00002BAD  3AA61387          cmp ah,[bp-0x78ed]
00002BB1  10C0              adc al,al
00002BB3  AB                stosw
00002BB4  DD8E15FE          fisttp qword [bp-0x1eb]
00002BB8  5E                pop si
00002BB9  EC                in al,dx
00002BBA  A6                cmpsb
00002BBB  4B                dec bx
00002BBC  87E2              xchg dx,sp
00002BBE  BE9B06            mov si,0x69b
00002BC1  E97E76            jmp 0xa242
00002BC4  C7                db 0xc7
00002BC5  0802              or [bp+si],al
00002BC7  06                push es
00002BC8  6A0D              push byte +0xd
00002BCA  C7                db 0xc7
00002BCB  724A              jc 0x2c17
00002BCD  FA                cli
00002BCE  17                pop ss
00002BCF  8B891628          mov cx,[bx+di+0x2816]
00002BD3  0400              add al,0x0
00002BD5  C4                db 0xc4
00002BD6  E829C6            call 0xf202
00002BD9  694A01AD44        imul cx,[bp+si+0x1],word 0x44ad
00002BDE  0D910D            or ax,0xd91
00002BE1  1DBE15            sbb ax,0x15be
00002BE4  05AE70            add ax,0x70ae
00002BE7  06                push es
00002BE8  F017              lock pop ss
00002BEA  EB32              jmp short 0x2c1e
00002BEC  3DA9CD            cmp ax,0xcda9
00002BEF  296126            sub [bx+di+0x26],sp
00002BF2  CF                iret
00002BF3  1B1B              sbb bx,[bp+di]
00002BF5  06                push es
00002BF6  BF0270            mov di,0x7002
00002BF9  7414              jz 0x2c0f
00002BFB  6821E0            push word 0xe021
00002BFE  115253            adc [bp+si+0x53],dx
00002C01  8E92E8E8          mov ss,[bp+si-0x1718]
00002C05  98                cbw
00002C06  EB4D              jmp short 0x2c55
00002C08  F1                int1
00002C09  28A8A571          sub [bx+si+0x71a5],ch
00002C0D  B91133            mov cx,0x3311
00002C10  D8061311          fadd dword [0x1113]
00002C14  67F2097689        repne or [esi-0x77],si
00002C19  44                inc sp
00002C1A  1506CD            adc ax,0xcd06
00002C1D  FE                db 0xfe
00002C1E  17                pop ss
00002C1F  1135              adc [di],si
00002C21  1B8E2A47          sbb cx,[bp+0x472a]
00002C25  93                xchg ax,bx
00002C26  45                inc bp
00002C27  8AD7              mov dl,bh
00002C29  DDD2              fst st2
00002C2B  E84C16            call 0x427a
00002C2E  A6                cmpsb
00002C2F  83AF96F682        sub word [bx-0x96a],byte -0x7e
00002C34  DAA589AE          fisub dword [di-0x5177]
00002C38  67AE              a32 scasb
00002C3A  1329              adc bp,[bx+di]
00002C3C  B95D14            mov cx,0x145d
00002C3F  233B              and di,[bp+di]
00002C41  153417            adc ax,0x1734
00002C44  07                pop es
00002C45  1802              sbb [bp+si],al
00002C47  5C                pop sp
00002C48  2A7801            sub bh,[bx+si+0x1]
00002C4B  689BCC            push word 0xcc9b
00002C4E  DE75F3            fidiv word [di-0xd]
00002C51  34DF              xor al,0xdf
00002C53  1C36              sbb al,0x36
00002C55  50                push ax
00002C56  51                push cx
00002C57  68FF41            push word 0x41ff
00002C5A  BA7077            mov dx,0x7770
00002C5D  3234              xor dh,[si]
00002C5F  5E                pop si
00002C60  6C                insb
00002C61  D1D2              rcl dx,1
00002C63  749E              jz 0x2c03
00002C65  FC                cld
00002C66  E90685            jmp 0xb16f
00002C69  A1F987            mov ax,[0x87f9]
00002C6C  40                inc ax
00002C6D  8795C76A          xchg [di+0x6ac7],dx
00002C71  734A              jnc 0x2cbd
00002C73  57                push di
00002C74  6633808B94        xor eax,[bx+si-0x6b75]
00002C79  7A1B              jpe 0x2c96
00002C7B  774A              ja 0x2cc7
00002C7D  6E                outsb
00002C7E  37                aaa
00002C7F  7C18              jl 0x2c99
00002C81  94                xchg ax,sp
00002C82  0245B8            add al,[di-0x48]
00002C85  4B                dec bx
00002C86  0C89              or al,0x89
00002C88  DD86AA05          fld qword [bp+0x5aa]
00002C8C  16                push ss
00002C8D  51                push cx
00002C8E  F0C2E9F7          lock ret 0xf7e9
00002C92  2CE0              sub al,0xe0
00002C94  830BFD            or word [bp+di],byte -0x3
00002C97  EBBE              jmp short 0x2c57
00002C99  E325              jcxz 0x2cc0
00002C9B  37                aaa
00002C9C  91                xchg ax,cx
00002C9D  60                pusha
00002C9E  E9F3EB            jmp 0x1894
00002CA1  C3                ret
00002CA2  1F                pop ds
00002CA3  1DE9DC            sbb ax,0xdce9
00002CA6  AF                scasw
00002CA7  BC9A44            mov sp,0x449a
00002CAA  BB294E            mov bx,0x4e29
00002CAD  E70E              out 0xe,ax
00002CAF  52                push dx
00002CB0  5B                pop bx
00002CB1  AE                scasb
00002CB2  27                daa
00002CB3  E012              loopne 0x2cc7
00002CB5  4A                dec dx
00002CB6  4B                dec bx
00002CB7  6F                outsw
00002CB8  133C              adc di,[si]
00002CBA  2F                das
00002CBB  7408              jz 0x2cc5
00002CBD  C13C5C            sar word [si],byte 0x5c
00002CC0  5B                pop bx
00002CC1  393A              cmp [bp+si],di
00002CC3  E275              loop 0x2d3a
00002CC5  EB43              jmp short 0x2d0a
00002CC7  157536            adc ax,0x3675
00002CCA  4A                dec dx
00002CCB  BABE37            mov dx,0x37be
00002CCE  7E4B              jng 0x2d1b
00002CD0  055750            add ax,0x5057
00002CD3  E8D08C            call 0xb9a6
00002CD6  5B                pop bx
00002CD7  61                popa
00002CD8  C6                db 0xc6
00002CD9  3E9D              ds popf
00002CDB  DA30              fidiv dword [bx+si]
00002CDD  FA                cli
00002CDE  12C6              adc al,dh
00002CE0  47                inc di
00002CE1  0B00              or ax,[bx+si]
00002CE3  40                inc ax
00002CE4  67C438            les di,[eax]
00002CE7  65FC              gs cld
00002CE9  7A65              jpe 0x2d50
00002CEB  C7                db 0xc7
00002CEC  2BF5              sub si,bp
00002CEE  6442              fs inc dx
00002CF0  ED                in ax,dx
00002CF1  AC                lodsb
00002CF2  367F44            ss jg 0x2d39
00002CF5  0425              add al,0x25
00002CF7  9F                lahf
00002CF8  7F0C              jg 0x2d06
00002CFA  8AC0              mov al,al
00002CFC  5A                pop dx
00002CFD  1505B6            adc ax,0xb605
00002D00  9F                lahf
00002D01  2002              and [bp+si],al
00002D03  ED                in ax,dx
00002D04  21440A            and [si+0xa],ax
00002D07  A27505            mov [0x575],al
00002D0A  0DC574            or ax,0x74c5
00002D0D  E6C8              out 0xc8,al
00002D0F  196DBC            sbb [di-0x44],bp
00002D12  89DF              mov di,bx
00002D14  18A9C420          sbb [bx+di+0x20c4],ch
00002D18  0B7B26            or di,[bp+di+0x26]
00002D1B  A2C616            mov [0x16c6],al
00002D1E  C6                db 0xc6
00002D1F  48                dec ax
00002D20  35A8D6            xor ax,0xd6a8
00002D23  28B95B88          sub [bx+di-0x77a5],bh
00002D27  5D                pop bp
00002D28  F0766D            lock jna 0x2d98
00002D2B  B83777            mov ax,0x7737
00002D2E  07                pop es
00002D2F  67733E            jnc 0x2d70
00002D32  7B09              jpo 0x2d3d
00002D34  E8A119            call 0x46d8
00002D37  06                push es
00002D38  B90FE8            mov cx,0xe80f
00002D3B  C9                leave
00002D3C  C6                db 0xc6
00002D3D  D9B77E04          fnstenv [bx+0x47e]
00002D41  40                inc ax
00002D42  11A97EBC          adc [bx+di-0x4382],bp
00002D46  A9445E            test ax,0x5e44
00002D49  7474              jz 0x2dbf
00002D4B  1C34              sbb al,0x34
00002D4D  CF                iret
00002D4E  8C2F              mov [bx],gs
00002D50  A26A0D            mov [0xd6a],al
00002D53  66AB              stosd
00002D55  6A6A              push byte +0x6a
00002D57  8788FD48          xchg [bx+si+0x48fd],cx
00002D5B  F009D0            lock or ax,dx
00002D5E  7438              jz 0x2d98
00002D60  C6                db 0xc6
00002D61  0CBC              or al,0xbc
00002D63  C020B9            shl byte [bx+si],byte 0xb9
00002D66  B1AE              mov cl,0xae
00002D68  013F              add [bx],di
00002D6A  2F                das
00002D6B  51                push cx
00002D6C  6A02              push byte +0x2
00002D6E  B5B9              mov ch,0xb9
00002D70  DA4BE6            fimul dword [bp+di-0x1a]
00002D73  64899948E0        mov [fs:bx+di-0x1fb8],bx
00002D78  D7                xlatb
00002D79  25B0C6            and ax,0xc6b0
00002D7C  8CB69B8D          mov [bp-0x7265],segr6
00002D80  93                xchg ax,bx
00002D81  04D1              add al,0xd1
00002D83  0E                push cs
00002D84  8BCD              mov cx,bp
00002D86  7112              jno 0x2d9a
00002D88  15C021            adc ax,0x21c0
00002D8B  0E                push cs
00002D8C  99                cwd
00002D8D  AC                lodsb
00002D8E  0E                push cs
00002D8F  35E4FC            xor ax,0xfce4
00002D92  7692              jna 0x2d26
00002D94  01BFB765          add [bx+0x65b7],di
00002D98  3BE8              cmp bp,ax
00002D9A  C5                db 0xc5
00002D9B  C0E50C            shl ch,byte 0xc
00002D9E  8ED6              mov ss,si
00002DA0  E28C              loop 0x2d2e
00002DA2  D0                db 0xd0
00002DA3  31DD              xor bp,bx
00002DA5  82                db 0x82
00002DA6  80E4F0            and ah,0xf0
00002DA9  D9                db 0xd9
00002DAA  0902              or [bp+si],ax
00002DAC  8A71A2            mov dh,[bx+di-0x5e]
00002DAF  6E                outsb
00002DB0  A18701            mov ax,[0x187]
00002DB3  1E                push ds
00002DB4  804E0C20          or byte [bp+0xc],0x20
00002DB8  D0EC              shr ah,1
00002DBA  07                pop es
00002DBB  AC                lodsb
00002DBC  DA                db 0xda
00002DBD  F66096            mul byte [bx+si-0x6a]
00002DC0  CF                iret
00002DC1  2302              and ax,[bp+si]
00002DC3  44                inc sp
00002DC4  6F                outsw
00002DC5  6C                insb
00002DC6  2A0B              sub cl,[bp+di]
00002DC8  08453A            or [di+0x3a],al
00002DCB  1257D8            adc dl,[bx-0x28]
00002DCE  C1BE0E67F8        sar word [bp+0x670e],byte 0xf8
00002DD3  0499              add al,0x99
00002DD5  E93C01            jmp 0x2f14
00002DD8  ED                in ax,dx
00002DD9  61                popa
00002DDA  EBF7              jmp short 0x2dd3
00002DDC  D528              aad 0x28
00002DDE  40                inc ax
00002DDF  BB0F8A            mov bx,0x8a0f
00002DE2  005181            add [bx+di-0x7f],dl
00002DE5  35FF06            xor ax,0x6ff
00002DE8  5B                pop bx
00002DE9  3804              cmp [si],al
00002DEB  6B2A48            imul bp,[bp+si],byte +0x48
00002DEE  6A0D              push byte +0xd
00002DF0  5A                pop dx
00002DF1  3B36CF6E          cmp si,[0x6ecf]
00002DF5  B817B6            mov ax,0xb617
00002DF8  1123              adc [bp+di],sp
00002DFA  F72D              imul word [di]
00002DFC  F3B132            rep mov cl,0x32
00002DFF  73E2              jnc 0x2de3
00002E01  70A3              jo 0x2da6
00002E03  0136410C          add [0xc41],si
00002E07  0BF1              or si,cx
00002E09  76FF              jna 0x2e0a
00002E0B  055AB7            add ax,0xb75a
00002E0E  32D2              xor dl,dl
00002E10  80FBE6            cmp bl,0xe6
00002E13  03C1              add ax,cx
00002E15  EA083D0604        jmp 0x406:0x3d08
00002E1A  2DE382            sub ax,0x82e3
00002E1D  06                push es
00002E1E  37                aaa
00002E1F  2216FD6E          and dl,[0x6efd]
00002E23  352E11            xor ax,0x112e
00002E26  95                xchg ax,bp
00002E27  6C                insb
00002E28  CD37              int 0x37
00002E2A  4C                dec sp
00002E2B  F00AB81611        lock or bh,[bx+si+0x1116]
00002E30  6B042A            imul ax,[si],byte +0x2a
00002E33  42                inc dx
00002E34  AB                stosw
00002E35  D7                xlatb
00002E36  0C92              or al,0x92
00002E38  0B5447            or dx,[si+0x47]
00002E3B  BA60A5            mov dx,0xa560
00002E3E  E819F1            call 0x1f5a
00002E41  B0FC              mov al,0xfc
00002E43  79A3              jns 0x2de8
00002E45  B340              mov bl,0x40
00002E47  E103              loope 0x2e4c
00002E49  B9502B            mov cx,0x2b50
00002E4C  C7                db 0xc7
00002E4D  8DBE9909          lea di,[bp+0x999]
00002E51  DAE9              fucompp
00002E53  A5                movsw
00002E54  F08956EB          lock mov [bp-0x15],dx
00002E58  A6                cmpsb
00002E59  334D6B            xor cx,[di+0x6b]
00002E5C  F4                hlt
00002E5D  2EFC              cs cld
00002E5F  FE                db 0xfe
00002E60  EA46805B51        jmp 0x515b:0x8046
00002E65  F77563            div word [di+0x63]
00002E68  D0805B12          rol byte [bx+si+0x125b],1
00002E6C  FB                sti
00002E6D  2CE9              sub al,0xe9
00002E6F  07                pop es
00002E70  AC                lodsb
00002E71  EE                out dx,al
00002E72  48                dec ax
00002E73  0BD1              or dx,cx
00002E75  C22768            ret 0x6827
00002E78  50                push ax
00002E79  A7                cmpsw
00002E7A  EC                in al,dx
00002E7B  7E80              jng 0x2dfd
00002E7D  E424              in al,0x24
00002E7F  95                xchg ax,bp
00002E80  F3CD07            rep int 0x7
00002E83  83BA040A07        cmp word [bp+si+0xa04],byte +0x7
00002E88  37                aaa
00002E89  68DEE7            push word 0xe7de
00002E8C  886515            mov [di+0x15],ah
00002E8F  29E1              sub cx,sp
00002E91  68625C            push word 0x5c62
00002E94  620E896F          bound cx,[0x6f89]
00002E98  2B2D              sub bp,[di]
00002E9A  41                inc cx
00002E9B  007514            add [di+0x14],dh
00002E9E  05B185            add ax,0x85b1
00002EA1  FC                cld
00002EA2  52                push dx
00002EA3  8CBAC0B8          mov [bp+si-0x4740],segr7
00002EA7  1B8F1111          sbb cx,[bx+0x1111]
00002EAB  21EF              and di,bp
00002EAD  7D21              jnl 0x2ed0
00002EAF  58                pop ax
00002EB0  CC                int3
00002EB1  EF                out dx,ax
00002EB2  0A14              or dl,[si]
00002EB4  EF                out dx,ax
00002EB5  76ED              jna 0x2ea4
00002EB7  E8ABD9            call 0x865
00002EBA  42                inc dx
00002EBB  C7453042B9        mov word [di+0x30],0xb942
00002EC0  5F                pop di
00002EC1  BCA60C            mov sp,0xca6
00002EC4  EB07              jmp short 0x2ecd
00002EC6  F1                int1
00002EC7  0BA87612          or bp,[bx+si+0x1276]
00002ECB  6C                insb
00002ECC  52                push dx
00002ECD  92                xchg ax,dx
00002ECE  76C7              jna 0x2e97
00002ED0  C0                db 0xc0
00002ED1  B678              mov dh,0x78
00002ED3  0C37              or al,0x37
00002ED5  C9                leave
00002ED6  BEF40F            mov si,0xff4
00002ED9  B2EB              mov dl,0xeb
00002EDB  852ECF4B          test [0x4bcf],bp
00002EDF  D3C6              rol si,cl
00002EE1  4D                dec bp
00002EE2  2225              and ah,[di]
00002EE4  4F                dec di
00002EE5  A2F857            mov [0x57f8],al
00002EE8  27                daa
00002EE9  55                push bp
00002EEA  F76B5E            imul word [bp+di+0x5e]
00002EED  60                pusha
00002EEE  9BE8C6D2          wait call 0x1b8
00002EF2  EB11              jmp short 0x2f05
00002EF4  8C0F              mov [bx],cs
00002EF6  C47F34            les di,[bx+0x34]
00002EF9  17                pop ss
00002EFA  CE                into
00002EFB  42                inc dx
00002EFC  F3AE              repe scasb
00002EFE  8D92F0F0          lea dx,[bp+si-0xf10]
00002F02  5D                pop bp
00002F03  EBB0              jmp short 0x2eb5
00002F05  B89A9C            mov ax,0x9c9a
00002F08  F9                stc
00002F09  D003              rol byte [bp+di],1
00002F0B  F0FD              lock std
00002F0D  057C63            add ax,0x637c
00002F10  0932              or [bp+si],si
00002F12  E9E82B            jmp 0x5afd
00002F15  80E652            and dh,0x52
00002F18  12A1A0D2          adc ah,[bx+di-0x2d60]
00002F1C  AF                scasw
00002F1D  C10723            rol word [bx],byte 0x23
00002F20  EBC6              jmp short 0x2ee8
00002F22  E2E8              loop 0x2f0c
00002F24  2EFC              cs cld
00002F26  4F                dec di
00002F27  37                aaa
00002F28  7C11              jl 0x2f3b
00002F2A  4D                dec bp
00002F2B  1AF0              sbb dh,al
00002F2D  1B4100            sbb ax,[bx+di+0x0]
00002F30  0DD206            or ax,0x6d2
00002F33  B6BB              mov dh,0xbb
00002F35  26B92F1F          es mov cx,0x1f2f
00002F39  0273E0            add dh,[bp+di-0x20]
00002F3C  EB71              jmp short 0x2faf
00002F3E  C18C9E04D1        ror word [si+0x49e],byte 0xd1
00002F43  E96E2E            jmp 0x5db4
00002F46  7D31              jnl 0x2f79
00002F48  FF8C6E6E          dec word [si+0x6e6e]
00002F4C  D839              fdivr dword [bx+di]
00002F4E  F9                stc
00002F4F  9E                sahf
00002F50  35FC3E            xor ax,0x3efc
00002F53  630A              arpl [bp+si],cx
00002F55  775C              ja 0x2fb3
00002F57  E0EB              loopne 0x2f44
00002F59  3EA5              ds movsw
00002F5B  6806F1            push word 0xf106
00002F5E  30CB              xor bl,cl
00002F60  56                push si
00002F61  8CB8795D          mov [bx+si+0x5d79],segr7
00002F65  38FA              cmp dl,bh
00002F67  40                inc ax
00002F68  D1CF              ror di,1
00002F6A  261F              es pop ds
00002F6C  FB                sti
00002F6D  55                push bp
00002F6E  5D                pop bp
00002F6F  3245DB            xor al,[di-0x25]
00002F72  368ED1            ss mov ss,cx
00002F75  5E                pop si
00002F76  89FA              mov dx,di
00002F78  43                inc bx
00002F79  45                inc bp
00002F7A  A16A27            mov ax,[0x276a]
00002F7D  7A01              jpe 0x2f80
00002F7F  CF                iret
00002F80  6556              gs push si
00002F82  B6B5              mov dh,0xb5
00002F84  8A39              mov bh,[bx+di]
00002F86  B670              mov dh,0x70
00002F88  E154              loope 0x2fde
00002F8A  58                pop ax
00002F8B  093E2810          or [0x1028],di
00002F8F  E7EE              out 0xee,ax
00002F91  C163E0E8          shl word [bp+di-0x20],byte 0xe8
00002F95  D0F8              sar al,1
00002F97  F4                hlt
00002F98  FF8BA56A          dec word [bp+di+0x6aa5]
00002F9C  26D304            rol word [es:si],cl
00002F9F  3810              cmp [bx+si],dl
00002FA1  67DD1506B0E4FC    fst qword [dword 0xfce4b006]
00002FA8  00ED              add ch,ch
00002FAA  06                push es
00002FAB  CAFCDA            retf 0xdafc
00002FAE  8CE9              mov cx,gs
00002FB0  E8586C            call 0x9c0b
00002FB3  2B08              sub cx,[bx+si]
00002FB5  1BA505BB          sbb sp,[di-0x44fb]
00002FB9  3494              xor al,0x94
00002FBB  7F07              jg 0x2fc4
00002FBD  6D                insw
00002FBE  0B4537            or ax,[di+0x37]
00002FC1  6C                insb
00002FC2  17                pop ss
00002FC3  897EFC            mov [bp-0x4],di
00002FC6  F8                clc
00002FC7  8C6EFA            mov [bp-0x6],gs
00002FCA  6A0E              push byte +0xe
00002FCC  82                db 0x82
00002FCD  37                aaa
00002FCE  D2DB              rcr bl,cl
00002FD0  EC                in al,dx
00002FD1  A20957            mov [0x5709],al
00002FD4  6F                outsw
00002FD5  3E819D51301650    sbb word [ds:di+0x3051],0x5016
00002FDC  9A42C5EE75        call 0x75ee:0xc542
00002FE1  FF                db 0xff
00002FE2  B9C270            mov cx,0x70c2
00002FE5  1013              adc [bp+di],dl
00002FE7  B117              mov cl,0x17
00002FE9  1F                pop ds
00002FEA  F005052E          lock add ax,0x2e05
00002FEE  0E                push cs
00002FEF  5F                pop di
00002FF0  FF81B940          inc word [bx+di+0x40b9]
00002FF4  F094              lock xchg ax,sp
00002FF6  1C2C              sbb al,0x2c
00002FF8  D6                salc
00002FF9  091D              or [di],bx
00002FFB  2415              and al,0x15
00002FFD  208A973E          and [bp+si+0x3e97],cl
00003001  CC                int3
00003002  E578              in ax,0x78
00003004  3B45E1            cmp ax,[di-0x1f]
00003007  CC                int3
00003008  CC                int3
00003009  46                inc si
0000300A  7AE9              jpe 0x2ff5
0000300C  30FF              xor bh,bh
0000300E  0CE8              or al,0xe8
00003010  C23678            ret 0x7836
00003013  E8E48B            call 0xbbfa
00003016  1251B6            adc dl,[bx+di-0x4a]
00003019  25F8C1            and ax,0xc1f8
0000301C  4D                dec bp
0000301D  12C2              adc al,dl
0000301F  97                xchg ax,di
00003020  A5                movsw
00003021  45                inc bp
00003022  AD                lodsw
00003023  C6                db 0xc6
00003024  0FB604            movzx ax,[si]
00003027  34D2              xor al,0xd2
00003029  ED                in ax,dx
0000302A  7007              jo 0x3033
0000302C  FF5CA1            call far [si-0x5f]
0000302F  8D                db 0x8d
00003030  E182              loope 0x2fb4
00003032  53                push bx
00003033  336EA2            xor bp,[bp-0x5e]
00003036  D6                salc
00003037  50                push ax
00003038  EB0A              jmp short 0x3044
0000303A  2F                das
0000303B  D12E76DF          shr word [0xdf76],1
0000303F  FB                sti
00003040  F68304041F        test byte [bp+di+0x404],0x1f
00003045  357AE6            xor ax,0xe67a
00003048  01A3A2C5          add [bp+di-0x3a5e],sp
0000304C  A4                movsb
0000304D  05E218            add ax,0x18e2
00003050  C7                db 0xc7
00003051  CF                iret
00003052  7436              jz 0x308a
00003054  C1680CB2          shr word [bx+si+0xc],byte 0xb2
00003058  07                pop es
00003059  50                push ax
0000305A  CB                retf
0000305B  EA90BBE527        jmp 0x27e5:0xbb90
00003060  D88B680A          fmul dword [bp+di+0xa68]
00003064  262B85F684        sub ax,[es:di-0x7b0a]
00003069  82                db 0x82
0000306A  8B583F            mov bx,[bx+si+0x3f]
0000306D  0483              add al,0x83
0000306F  B353              mov bl,0x53
00003071  0F42EC            cmovc bp,sp
00003074  7A8A              jpe 0x3000
00003076  3561B2            xor ax,0xb261
00003079  07                pop es
0000307A  EE                out dx,al
0000307B  CAFA20            retf 0x20fa
0000307E  94                xchg ax,sp
0000307F  102E905F          adc [0x5f90],ch
00003083  45                inc bp
00003084  A1A7B1            mov ax,[0xb1a7]
00003087  45                inc bp
00003088  47                inc di
00003089  C8B84775          enter 0x47b8,0x75
0000308D  DB                db 0xdb
0000308E  74B7              jz 0x3047
00003090  9D                popf
00003091  3475              xor al,0x75
00003093  114709            adc [bx+0x9],ax
00003096  0DE6C6            or ax,0xc6e6
00003099  07                pop es
0000309A  E84A87            call 0xb7e7
0000309D  B95BB0            mov cx,0xb05b
000030A0  188AFFC7          sbb [bp+si-0x3801],cl
000030A4  F737              div word [bx]
000030A6  214F05            and [bx+0x5],cx
000030A9  F715              not word [di]
000030AB  E2CB              loop 0x3078
000030AD  AE                scasb
000030AE  38B94063          cmp [bx+di+0x6340],bh
000030B2  43                inc bx
000030B3  EF                out dx,ax
000030B4  00B60889          add [bp-0x76f8],dh
000030B8  2EC7C57F0F        cs mov bp,0xf7f
000030BD  DBC8              fcmovne st0
000030BF  8C00              mov [bx+si],es
000030C1  1A84A364          sbb al,[si+0x64a3]
000030C5  267FE3            es jg 0x30ab
000030C8  06                push es
000030C9  D1E0              shl ax,1
000030CB  D1D7              rcl di,1
000030CD  82                db 0x82
000030CE  E258              loop 0x3128
000030D0  C0                db 0xc0
000030D1  F25B              repne pop bx
000030D3  76F4              jna 0x30c9
000030D5  267E7F            es jng 0x3157
000030D8  2D83C7            sub ax,0xc783
000030DB  FF06CCF7          inc word [0xf7cc]
000030DF  2F                das
000030E0  83D1FF            adc cx,byte -0x1
000030E3  98                cbw
000030E4  40                inc ax
000030E5  0DFCA3            or ax,0xa3fc
000030E8  E8B21C            call 0x4d9d
000030EB  16                push ss
000030EC  0C82              or al,0x82
000030EE  9ABDC90E18        call 0x180e:0xc9bd
000030F3  F0FFF5            lock push bp
000030F6  7622              jna 0x311a
000030F8  4C                dec sp
000030F9  B717              mov bh,0x17
000030FB  61                popa
000030FC  817EFFF200        cmp word [bp-0x1],0xf2
00003101  807315D1          xor byte [bp+di+0x15],0xd1
00003105  66F2ED            repne in eax,dx
00003108  D156F4            rcl word [bp-0xc],1
0000310B  05A2FC            add ax,0xfca2
0000310E  17                pop ss
0000310F  73DF              jnc 0x30f0
00003111  D1FE              sar si,1
00003113  6E                outsb
00003114  F8                clc
00003115  D15EF6            rcr word [bp-0xa],1
00003118  EBD5              jmp short 0x30ef
0000311A  C3                ret
0000311B  2AF7              sub dh,bh
0000311D  03BFF5FF          add di,[bx-0xb]
00003121  D0DD              rcr ch,1
00003123  3F                aas
00003124  4C                dec sp
00003125  6501E0            gs add ax,sp
00003128  1B37              sbb si,[bx]
0000312A  48                dec ax
0000312B  F6F5              div ch
0000312D  53                push bx
0000312E  CC                int3
0000312F  4A                dec dx
00003130  F5                cmc
00003131  9D                popf
00003132  C8BBF6EB          enter 0xf6bb,0xeb
00003136  4D                dec bp
00003137  68A409            push word 0x9a4
0000313A  6549              gs dec cx
0000313C  8C04              mov [si],es
0000313E  8640B0            xchg [bx+si-0x50],al
00003141  814888066E        or word [bx+si-0x78],0x6e06
00003146  DB4076            fild dword [bx+si+0x76]
00003149  2DD054            sub ax,0x54d0
0000314C  E224              loop 0x3172
0000314E  5F                pop di
0000314F  C404              les ax,[si]
00003151  3DFA7F            cmp ax,0x7ffa
00003154  E273              loop 0x31c9
00003156  0401              add al,0x1
00003158  0E                push cs
00003159  A06B3D            mov al,[0x3d6b]
0000315C  295C21            sub [si+0x21],bx
0000315F  19EB              sbb bx,bp
00003161  801284            adc byte [bp+si],0x84
00003164  3918              cmp [bx+si],bx
00003166  FC                cld
00003167  97                xchg ax,di
00003168  3D4FFC            cmp ax,0xfc4f
0000316B  45                inc bp
0000316C  8187C2C2C58B      add word [bx-0x3d3e],0x8bc5
00003172  41                inc cx
00003173  57                push di
00003174  8F                db 0x8f
00003175  0D51F1            or ax,0xf151
00003178  2CE8              sub al,0xe8
0000317A  67E0B0            loopne 0x312d,ecx
0000317D  0304              add ax,[si]
0000317F  6BE5FA            imul sp,bp,byte -0x6
00003182  53                push bx
00003183  64089A8D20        or [fs:bp+si+0x208d],bl
00003188  EE                out dx,al
00003189  052E74            add ax,0x742e
0000318C  1A6E5C            sbb ch,[bp+0x5c]
0000318F  7406              jz 0x3197
00003191  6E                outsb
00003192  2F                das
00003193  7515              jnz 0x31aa
00003195  231D              and bx,[di]
00003197  9B0C0E            wait or al,0xe
0000319A  7806              js 0x31a2
0000319C  36AF              ss scasw
0000319E  07                pop es
0000319F  8CD4              mov sp,ss
000031A1  77EB              ja 0x318e
000031A3  130D              adc cx,[di]
000031A5  83B56813FE        xor word [di+0x1368],byte -0x2
000031AA  26E86667          es call 0x9914
000031AE  15EF77            adc ax,0x77ef
000031B1  5C                pop sp
000031B2  E813F5            call 0x26c8
000031B5  5D                pop bp
000031B6  0BD0              or dx,ax
000031B8  0C93              or al,0x93
000031BA  16                push ss
000031BB  F6FF              idiv bh
000031BD  69F170F3          imul si,cx,word 0xf370
000031C1  F9                stc
000031C2  A195ED            mov ax,[0xed95]
000031C5  6645              inc ebp
000031C7  9B46              wait inc si
000031C9  50                push ax
000031CA  57                push di
000031CB  2CF8              sub al,0xf8
000031CD  B9A2E3            mov cx,0xe3a2
000031D0  A2E1E5            mov [0xe5e1],al
000031D3  83D18D            adc cx,byte -0x73
000031D6  04C0              add al,0xc0
000031D8  81E6CE0C          and si,0xcce
000031DC  CDFA              int 0xfa
000031DE  1034              adc [si],dh
000031E0  12F3              adc dh,bl
000031E2  FC                cld
000031E3  4D                dec bp
000031E4  080A              or [bp+si],cl
000031E6  3CFE              cmp al,0xfe
000031E8  D30C              ror word [si],cl
000031EA  41                inc cx
000031EB  0E                push cs
000031EC  5B                pop bx
000031ED  16                push ss
000031EE  6A52              push byte +0x52
000031F0  1ACD              sbb cl,ch
000031F2  5D                pop bp
000031F3  7DB8              jnl 0x31ad
000031F5  47                inc di
000031F6  60                pusha
000031F7  3DF89B            cmp ax,0x9bf8
000031FA  30F2              xor dl,dh
000031FC  37                aaa
000031FD  7D54              jnl 0x3253
000031FF  1F                pop ds
00003200  1DD290            sbb ax,0x90d2
00003203  C3                ret
00003204  8EC7              mov es,di
00003206  D6                salc
00003207  B239              mov dl,0x39
00003209  C2DB2D            ret 0x2ddb
0000320C  8A13              mov dl,[bp+di]
0000320E  B35D              mov bl,0x5d
00003210  2D182F            sub ax,0x2f18
00003213  DDEB              fucomp st3
00003215  06                push es
00003216  090D              or [di],cx
00003218  6BE567            imul sp,bp,byte +0x67
0000321B  6554              gs push sp
0000321D  95                xchg ax,bp
0000321E  898E39E7          mov [bp-0x18c7],cx
00003222  1AF7              sbb dh,bh
00003224  5C                pop sp
00003225  125C0E            adc bl,[si+0xe]
00003228  3D311D            cmp ax,0x1d31
0000322B  BD9994            mov bp,0x9499
0000322E  D410              aam 0x10
00003230  06                push es
00003231  AE                scasb
00003232  2927              sub [bx],sp
00003234  95                xchg ax,bp
00003235  8BD7              mov dx,di
00003237  0B20              or sp,[bx+si]
00003239  135C22            adc bx,[si+0x22]
0000323C  0BD9              or bx,cx
0000323E  288B5D0B          sub [bp+di+0xb5d],cl
00003242  1C75              sbb al,0x75
00003244  131ED30F          adc bx,[0xfd3]
00003248  105B12            adc [bp+di+0x12],bl
0000324B  035C97            add bx,[si-0x69]
0000324E  044C              add al,0x4c
00003250  06                push es
00003251  EE                out dx,al
00003252  E862CC            call 0xfeb7
00003255  1A9A181A          sbb bl,[bp+si+0x1a18]
00003259  C9                leave
0000325A  2A611A            sub ah,[bx+di+0x1a]
0000325D  CF                iret
0000325E  47                inc di
0000325F  1434              adc al,0x34
00003261  16                push ss
00003262  236CE9            and bp,[si-0x17]
00003265  D0DA              rcr dl,1
00003267  F8                clc
00003268  9A716F30CB        call 0xcb30:0x6f71
0000326D  FEC8              dec al
0000326F  3C6E              cmp al,0x6e
00003271  CB                retf
00003272  03A01753          add sp,[bx+si+0x5317]
00003276  241F              and al,0x1f
00003278  D004              rol byte [si],1
0000327A  41                inc cx
0000327B  2A985C3F          sub bl,[bx+si+0x3f5c]
0000327F  FD                std
00003280  3A51A2            cmp dl,[bx+di-0x5e]
00003283  1E                push ds
00003284  61                popa
00003285  2C28              sub al,0x28
00003287  FF9F1C6D          call far [bx+0x6d1c]
0000328B  5D                pop bp
0000328C  5C                pop sp
0000328D  E036              loopne 0x32c5
0000328F  1F                pop ds
00003290  F1                int1
00003291  5B                pop bx
00003292  0B34              or si,[si]
00003294  55                push bp
00003295  B4CD              mov ah,0xcd
00003297  C1B895E9DE        sar word [bx+si-0x166b],byte 0xde
0000329C  99                cwd
0000329D  63578B            arpl [bx-0x75],dx
000032A0  095307            or [bp+di+0x7],dx
000032A3  4B                dec bx
000032A4  5D                pop bp
000032A5  0AD3              or dl,bl
000032A7  07                pop es
000032A8  04C5              add al,0xc5
000032AA  B8FDFF            mov ax,0xfffd
000032AD  C6                db 0xc6
000032AE  E8BCF7            call 0x2a6d
000032B1  A1A202            mov ax,[0x2a2]
000032B4  45                inc bp
000032B5  3B0B              cmp cx,[bp+di]
000032B7  681CBF            push word 0xbf1c
000032BA  E6DE              out 0xde,al
000032BC  3D4300            cmp ax,0x43
000032BF  73F0              jnc 0x32b1
000032C1  E4F6              in al,0xf6
000032C3  C3                ret
000032C4  40                inc ax
000032C5  2F                das
000032C6  A0B805            mov al,[0x5b8]
000032C9  11EA              adc dx,bp
000032CB  E8FE67            call 0x9acc
000032CE  154CDA            adc ax,0xda4c
000032D1  17                pop ss
000032D2  C51A              lds bx,[bp+si]
000032D4  F7E4              mul sp
000032D6  29538B            sub [bp+di-0x75],dx
000032D9  94                xchg ax,sp
000032DA  3E2D1820          ds sub ax,0x2018
000032DE  95                xchg ax,bp
000032DF  16                push ss
000032E0  FF30              push word [bx+si]
000032E2  8BDE              mov bx,si
000032E4  A0C503            mov al,[0x3c5]
000032E7  00CA              add dl,cl
000032E9  9D                popf
000032EA  56                push si
000032EB  E71C              out 0x1c,ax
000032ED  894EA0            mov [bp-0x60],cx
000032F0  08911E03          or [bx+di+0x31e],dl
000032F4  7A0A              jpe 0x3300
000032F6  55                push bp
000032F7  1DB5DB            sbb ax,0xdbb5
000032FA  16                push ss
000032FB  344E              xor al,0x4e
000032FD  0E                push cs
000032FE  AE                scasb
000032FF  3CEE              cmp al,0xee
00003301  3B5152            cmp dx,[bx+di+0x52]
00003304  30FB              xor bl,bh
00003306  046A              add al,0x6a
00003308  15E816            adc ax,0x16e8
0000330B  3277DE            xor dh,[bx-0x22]
0000330E  042A              add al,0x2a
00003310  7615              jna 0x3327
00003312  A1E906            mov ax,[0x6e9]
00003315  FC                cld
00003316  894716            mov [bx+0x16],ax
00003319  A1EBFE            mov ax,[0xfeeb]
0000331C  18A1EF04          sbb [bx+di+0x4ef],ah
00003320  DB5CF1            fistp dword [si-0xf]
00003323  0AED              or ch,ch
00003325  1A03              sbb al,[bp+di]
00003327  885716            mov [bx+0x16],dl
0000332A  F4                hlt
0000332B  D322              shl word [bp+si],cl
0000332D  DAB71E05          fidiv dword [bx+0x51e]
00003331  35C0E5            xor ax,0xe5c0
00003334  08AFB8BF          or [bx-0x4048],ch
00003338  1583D8            adc ax,0xd883
0000333B  D06A13            shr byte [bp+si+0x13],1
0000333E  95                xchg ax,bp
0000333F  E44D              in al,0x4d
00003341  C7                db 0xc7
00003342  1E                push ds
00003343  53                push bx
00003344  E8205B            call 0x8e67
00003347  E206              loop 0x334f
00003349  D4F3              aam 0xf3
0000334B  765C              jna 0x33a9
0000334D  A5                movsw
0000334E  B88D8D            mov ax,0x8d8d
00003351  56                push si
00003352  C4                db 0xc4
00003353  EBF6              jmp short 0x334b
00003355  0DEE6D            or ax,0x6dee
00003358  0A03              or al,[bp+di]
0000335A  DB6CA3            fld tword [si-0x5d]
0000335D  25668C            and ax,0x8c66
00003360  17                pop ss
00003361  127B4B            adc bh,[bp+di+0x4b]
00003364  E8C3DD            call 0x112a
00003367  D4C0              aam 0xc0
00003369  6BE4C3            imul sp,sp,byte -0x3d
0000336C  A5                movsw
0000336D  0E                push cs
0000336E  DBB81BDC          fstp tword [bx+si-0x23e5]
00003372  16                push ss
00003373  2D56A2            sub ax,0xa256
00003376  145F              adc al,0x5f
00003378  FC                cld
00003379  48                dec ax
0000337A  C706CBB704D3      mov word [0xb7cb],0xd304
00003380  C6066F9640        mov byte [0x966f],0x40
00003385  E806CB            call 0xfe8e
00003388  11A3E8AB          adc [bp+di-0x5418],sp
0000338C  D123              shl word [bp+di],1
0000338E  5A                pop dx
0000338F  95                xchg ax,bp
00003390  E4F8              in al,0xf8
00003392  3654              ss push sp
00003394  71F6              jno 0x338c
00003396  D7                xlatb
00003397  5A                pop dx
00003398  8B626A            mov sp,[bp+si+0x6a]
0000339B  20853AE9          and [di-0x16c6],al
0000339F  7EDD              jng 0x337e
000033A1  319E7B0B          xor [bp+0xb7b],bx
000033A5  88840E68          mov [si+0x680e],al
000033A9  43                inc bx
000033AA  AD                lodsw
000033AB  38E0              cmp al,ah
000033AD  087D0A            or [di+0xa],bh
000033B0  56                push si
000033B1  DD                db 0xdd
000033B2  FB                sti
000033B3  A190A5            mov ax,[0xa590]
000033B6  2E04B4            cs add al,0xb4
000033B9  2D0930            sub ax,0x3009
000033BC  8D86E0D5          lea ax,[bp-0x2a20]
000033C0  59                pop cx
000033C1  07                pop es
000033C2  7291              jc 0x3355
000033C4  D84BF8            fmul dword [bp+di-0x8]
000033C7  AF                scasw
000033C8  C603EC            mov byte [bp+di],0xec
000033CB  EC                in al,dx
000033CC  8B36AFC3          mov si,[0xc3af]
000033D0  01B4C736          add [si+0x36c7],si
000033D4  0312              add dx,[bp+si]
000033D6  DD23              frstor [bp+di]
000033D8  877FCA            xchg [bx-0x36],di
000033DB  0424              add al,0x24
000033DD  9E                sahf
000033DE  3D0841            cmp ax,0x4108
000033E1  BB28F6            mov bx,0xf628
000033E4  06                push es
000033E5  16                push ss
000033E6  44                inc sp
000033E7  DB                db 0xdb
000033E8  B783              mov bh,0x83
000033EA  3E8693094B        xchg [ds:bp+di+0x4b09],dl
000033EF  EE                out dx,al
000033F0  D9B9F972          fnstcw [bx+di+0x72f9]
000033F4  BEB620            mov si,0x20b6
000033F7  E80CDD            call 0x1106
000033FA  D6                salc
000033FB  9C                pushf
000033FC  3BB51EEC          cmp si,[di-0x13e2]
00003400  C7                db 0xc7
00003401  2656              es push si
00003403  55                push bp
00003404  DDBA0DD9          fnstsw [bp+si-0x26f3]
00003408  DAB81CBF          fidivr dword [bx+si-0x40e4]
0000340C  96                xchg ax,si
0000340D  91                xchg ax,cx
0000340E  EBDB              jmp short 0x33eb
00003410  F9                stc
00003411  396C56            cmp [si+0x56],bp
00003414  7CF8              jl 0x340e
00003416  D9E8              fld1
00003418  8CFE              mov si,segr7
0000341A  B60F              mov dh,0xf
0000341C  F9                stc
0000341D  1922              sbb [bp+si],sp
0000341F  11EB              adc bx,bp
00003421  3B5A53            cmp bx,[bp+si+0x53]
00003424  B6A9              mov dh,0xa9
00003426  8F                db 0x8f
00003427  245A              and al,0x5a
00003429  3C3A              cmp al,0x3a
0000342B  D10F              ror word [bx],1
0000342D  B9BE72            mov cx,0x72be
00003430  1950F8            sbb [bx+si-0x8],dx
00003433  32FD              xor bh,ch
00003435  35D2A0            xor ax,0xa0d2
00003438  2916795A          sub [0x5a79],dx
0000343C  C22668            ret 0x6826
0000343F  5E                pop si
00003440  B3A4              mov bl,0xa4
00003442  53                push bx
00003443  91                xchg ax,cx
00003444  2B4170            sub ax,[bx+di+0x70]
00003447  06                push es
00003448  40                inc ax
00003449  BB8377            mov bx,0x7783
0000344C  0F03694F          lsl bp,[bx+di+0x4f]
00003450  02863B03          add al,[bp+0x33b]
00003454  0F                db 0x0f
00003455  9F                lahf
00003456  5B                pop bx
00003457  7C2F              jl 0x3488
00003459  C6803E58A2        mov byte [bx+si+0x583e],0xa2
0000345E  1A4C10            sbb cl,[si+0x10]
00003461  887C6D            mov [si+0x6d],bh
00003464  79F5              jns 0x345b
00003466  3A5A16            cmp bl,[bp+si+0x16]
00003469  830FDD            or word [bx],byte -0x23
0000346C  92                xchg ax,dx
0000346D  CE                into
0000346E  65C11053          rcl word [gs:bx+si],byte 0x53
00003472  C6                db 0xc6
00003473  5E                pop si
00003474  CE                into
00003475  FE                db 0xfe
00003476  3F                aas
00003477  3BBC1819          cmp di,[si+0x1918]
0000347B  11D9              adc cx,bx
0000347D  CE                into
0000347E  43                inc bx
0000347F  E4CB              in al,0xcb
00003481  5A                pop dx
00003482  7B48              jpo 0x34cc
00003484  E84236            call 0x6ac9
00003487  1F                pop ds
00003488  0D680E            or ax,0xe68
0000348B  1107              adc [bx],ax
0000348D  AB                stosw
0000348E  7D56              jnl 0x34e6
00003490  E8BADF            call 0x144d
00003493  5E                pop si
00003494  96                xchg ax,si
00003495  3AE1              cmp ah,cl
00003497  0A7EB8            or bh,[bp-0x48]
0000349A  8F02              pop word [bp+si]
0000349C  69160400ADF0      imul dx,[0x4],word 0xf0ad
000034A2  11DD              adc bp,bx
000034A4  34DF              xor al,0xdf
000034A6  3B0C              cmp cx,[si]
000034A8  5B                pop bx
000034A9  153CB5            adc ax,0xb53c
000034AC  DFF6              fcomip st6
000034AE  E35C              jcxz 0x350c
000034B0  885F9E            mov [bx-0x62],bl
000034B3  88A2C36C          mov [bp+si+0x6cc3],ah
000034B7  99                cwd
000034B8  C2F018            ret 0x18f0
000034BB  352841            xor ax,0x4128
000034BE  C3                ret
000034BF  E90488            jmp 0xbcc6
000034C2  1E                push ds
000034C3  27                daa
000034C4  7BA0              jpo 0x3466
000034C6  47                inc di
000034C7  007D03            add [di+0x3],bh
000034CA  93                xchg ax,bx
000034CB  4D                dec bp
000034CC  F624              mul byte [si]
000034CE  E8C4F4            call 0x2995
000034D1  B472              mov ah,0x72
000034D3  13A3B458          adc sp,[bp+di+0x58b4]
000034D7  795B              jns 0x3534
000034D9  59                pop cx
000034DA  3CE9              cmp al,0xe9
000034DC  0B6674            or sp,[bp+0x74]
000034DF  836F82E6          sub word [bx-0x7e],byte -0x1a
000034E3  EE                out dx,al
000034E4  3A04              cmp al,[si]
000034E6  1D85EF            sbb ax,0xef85
000034E9  4B                dec bx
000034EA  802DD6            sub byte [di],0xd6
000034ED  60                pusha
000034EE  64                fs
000034EF  DB                db 0xdb
000034F0  A16383            mov ax,[0x8363]
000034F3  16                push ss
000034F4  782B              js 0x3521
000034F6  AE                scasb
000034F7  37                aaa
000034F8  46                inc si
000034F9  4B                dec bx
000034FA  11D2              adc dx,dx
000034FC  E864E9            call 0x1e63
000034FF  0F866089          jna near 0xbe63
00003503  8F                db 0x8f
00003504  197107            sbb [bx+di+0x7],si
00003507  FE4985            dec byte [bx+di-0x7b]
0000350A  A6                cmpsb
0000350B  057677            add ax,0x7776
0000350E  3E04A3            ds add al,0xa3
00003511  94                xchg ax,sp
00003512  54                push sp
00003513  6F                outsw
00003514  91                xchg ax,cx
00003515  E8CF59            call 0x8ee7
00003518  777B              ja 0x3595
0000351A  36256042          ss and ax,0x4260
0000351E  B3A9              mov bl,0xa9
00003520  53                push bx
00003521  92                xchg ax,dx
00003522  A5                movsw
00003523  CB                retf
00003524  FE                db 0xfe
00003525  296296            sub [bp+si-0x6a],sp
00003528  34E0              xor al,0xe0
0000352A  5D                pop bp
0000352B  F7B28859          div word [bp+si+0x5988]
0000352F  9BDB7C17          wait fstp tword [si+0x17]
00003533  FD                std
00003534  E829F4            call 0x2960
00003537  83E160            and cx,byte +0x60
0000353A  5A                pop dx
0000353B  48                dec ax
0000353C  DF8FDEB9          fisttp word [bx-0x4622]
00003540  37                aaa
00003541  00B5BA3C          add [di+0x3cba],dh
00003545  E28D              loop 0x34d4
00003547  5F                pop di
00003548  B05D              mov al,0x5d
0000354A  E9D8F4            jmp 0x2a25
0000354D  65                gs
0000354E  C7                db 0xc7
0000354F  E485              in al,0x85
00003551  59                pop cx
00003552  7C38              jl 0x358c
00003554  E8FCF3            call 0x2953
00003557  F1                int1
00003558  13B78D39          adc si,[bx+0x398d]
0000355C  50                push ax
0000355D  680311            push word 0x1103
00003560  06                push es
00003561  9E                sahf
00003562  6E                outsb
00003563  D14764            rol word [bx+0x64],1
00003566  49                dec cx
00003567  9D                popf
00003568  FB                sti
00003569  8F                db 0x8f
0000356A  1DBAB4            sbb ax,0xb4ba
0000356D  47                inc di
0000356E  2F                das
0000356F  BA7A43            mov dx,0x437a
00003572  764E              jna 0x35c2
00003574  FFD2              call dx
00003576  C4                db 0xc4
00003577  DB04              fild dword [si]
00003579  E3E4              jcxz 0x355f
0000357B  08B14EF0          or [bx+di-0xfb2],dh
0000357F  787E              js 0x35ff
00003581  92                xchg ax,dx
00003582  B762              mov bh,0x62
00003584  41                inc cx
00003585  CC                int3
00003586  7245              jc 0x35cd
00003588  E82766            call 0x9bb2
0000358B  94                xchg ax,sp
0000358C  C9                leave
0000358D  FC                cld
0000358E  E84F01            call 0x36e0
00003591  EB2C              jmp short 0x35bf
00003593  06                push es
00003594  39C0              cmp ax,ax
00003596  004A5F            add [bp+si+0x5f],cl
00003599  28C6              sub dh,al
0000359B  42                inc dx
0000359C  1E                push ds
0000359D  2C19              sub al,0x19
0000359F  D7                xlatb
000035A0  694BD91101        imul cx,[bp+di-0x27],word 0x111
000035A5  ED                in ax,dx
000035A6  43                inc bx
000035A7  2615C014          es adc ax,0x14c0
000035AB  346C              xor al,0x6c
000035AD  2CE1              sub al,0xe1
000035AF  DD04              fld qword [si]
000035B1  DDDB              fstp st3
000035B3  E9D3F1            jmp 0x2789
000035B6  095B7C            or [bp+di+0x7c],bx
000035B9  E82BF3            call 0x28e7
000035BC  7A6B              jpe 0x3629
000035BE  0B13              or dx,[bp+di]
000035C0  A92633            test ax,0x3326
000035C3  D4BA              aam 0xba
000035C5  47                inc di
000035C6  AB                stosw
000035C7  006835            add [bx+si+0x35],ch
000035CA  183C              sbb [si],bh
000035CC  17                pop ss
000035CD  42                inc dx
000035CE  5A                pop dx
000035CF  EE                out dx,al
000035D0  9E                sahf
000035D1  0008              add [bx+si],cl
000035D3  AB                stosw
000035D4  0266FB            add ah,[bp-0x5]
000035D7  3A4701            cmp al,[bx+0x1]
000035DA  0E                push cs
000035DB  7D8F              jnl 0x356c
000035DD  00BB485B          add [bp+di+0x5b48],bh
000035E1  635E41            arpl [bp+0x41],bx
000035E4  CF                iret
000035E5  F4                hlt
000035E6  94                xchg ax,sp
000035E7  800756            add byte [bx],0x56
000035EA  4F                dec di
000035EB  14E1              adc al,0xe1
000035ED  7A00              jpe 0x35ef
000035EF  6D                insw
000035F0  C5FDEF5F31        vpxor ymm3,ymm0,yword [bx+0x31]
000035F5  C9                leave
000035F6  6C                insb
000035F7  95                xchg ax,bp
000035F8  41                inc cx
000035F9  2A20              sub ah,[bx+si]
000035FB  5A                pop dx
000035FC  7F49              jg 0x3647
000035FE  BFA4FE            mov di,0xfea4
00003601  01B5CE53          add [di+0x53ce],si
00003605  308355EF          xor [bp+di-0x10ab],al
00003609  D487              aam 0x87
0000360B  1B33              sbb si,[bp+di]
0000360D  6819FB            push word 0xfb19
00003610  2F                das
00003611  89DE              mov si,bx
00003613  16                push ss
00003614  C0BBD93C20        sar byte [bp+di+0x3cd9],byte 0x20
00003619  17                pop ss
0000361A  1F                pop ds
0000361B  1F                pop ds
0000361C  41                inc cx
0000361D  EBE8              jmp short 0x3607
0000361F  17                pop ss
00003620  6660              pushad
00003622  EA60252473        jmp 0x7324:0x2560
00003627  221D              and bl,[di]
00003629  11AD331E          adc [di+0x1e33],bp
0000362D  F6E8              imul al
0000362F  D8603A            fsub dword [bx+si+0x3a]
00003632  11EE              adc si,bp
00003634  74B1              jz 0x35e7
00003636  336867            xor bp,[bx+si+0x67]
00003639  BA024E            mov dx,0x4e02
0000363C  A5                movsw
0000363D  E8B816            call 0x4cf8
00003640  1F                pop ds
00003641  17                pop ss
00003642  F5                cmc
00003643  CA4726            retf 0x2647
00003646  FEC4              inc ah
00003648  E97734            jmp 0x6ac2
0000364B  6BC912            imul cx,cx,byte +0x12
0000364E  A0ED3F            mov al,[0x3fed]
00003651  F6D1              not cl
00003653  1BFE              sbb di,si
00003655  7497              jz 0x35ee
00003657  138C1100          adc cx,[si+0x11]
0000365B  AA                stosb
0000365C  CDD8              int 0xd8
0000365E  F5                cmc
0000365F  DC19              fcomp qword [bx+di]
00003661  8C02              mov [bp+si],es
00003663  87B50DB7          xchg [di-0x48f3],si
00003667  B4BE              mov ah,0xbe
00003669  052AC1            add ax,0xc12a
0000366C  90                nop
0000366D  C3                ret
0000366E  6A04              push byte +0x4
00003670  A2E4E2            mov [0xe2e4],al
00003673  57                push di
00003674  43                inc bx
00003675  46                inc si
00003676  C0088D            ror byte [bx+si],byte 0x8d
00003679  2B5F2E            sub bx,[bx+0x2e]
0000367C  A6                cmpsb
0000367D  4E                dec si
0000367E  F2811EB610F326    repne sbb word [0x10b6],0x26f3
00003685  C1C8F5            ror ax,byte 0xf5
00003688  AD                lodsw
00003689  5E                pop si
0000368A  A2DA56            mov [0x56da],al
0000368D  EF                out dx,ax
0000368E  05CB0A            add ax,0xacb
00003691  F8                clc
00003692  2C0C              sub al,0xc
00003694  B4FA              mov ah,0xfa
00003696  0BCE              or cx,si
00003698  8976F7            mov [bp-0x9],si
0000369B  5E                pop si
0000369C  10BBD968          adc [bp+di+0x68d9],bh
000036A0  0A16F032          or dl,[0x32f0]
000036A4  F6FA              idiv dl
000036A6  9F                lahf
000036A7  DCC9              fmul to st1
000036A9  59                pop cx
000036AA  21A61651          and [bp+0x5116],sp
000036AE  8BAA7B39          mov bp,[bp+si+0x397b]
000036B2  FFC7              inc di
000036B4  99                cwd
000036B5  56                push si
000036B6  03F6              add si,si
000036B8  3D160D            cmp ax,0xd16
000036BB  7BBB              jpo 0x3678
000036BD  0920              or [bx+si],sp
000036BF  06                push es
000036C0  B666              mov dh,0x66
000036C2  052D88            add ax,0x882d
000036C5  E7F7              out 0xf7,ax
000036C7  07                pop es
000036C8  4E                dec si
000036C9  3137              xor [bx],si
000036CB  2309              and cx,[bx+di]
000036CD  D6                salc
000036CE  F8                clc
000036CF  7512              jnz 0x36e3
000036D1  C47729            les si,[bx+0x29]
000036D4  36D37C69          sar word [ss:si+0x69],cl
000036D8  087254            or [bp+si+0x54],dh
000036DB  35E04C            xor ax,0x4ce0
000036DE  37                aaa
000036DF  05CD06            add ax,0x6cd
000036E2  53                push bx
000036E3  AD                lodsw
000036E4  07                pop es
000036E5  DB4C11            fisttp dword [si+0x11]
000036E8  0B0F              or cx,[bx]
000036EA  6D                insw
000036EB  1211              adc dl,[bx+di]
000036ED  2CDC              sub al,0xdc
000036EF  350B67            xor ax,0x670b
000036F2  37                aaa
000036F3  A25E30            mov [0x305e],al
000036F6  5A                pop dx
000036F7  30B618CB          xor [bp-0x34e8],dh
000036FB  C9                leave
000036FC  C404              les ax,[si]
000036FE  F5                cmc
000036FF  9D                popf
00003700  C3                ret
00003701  2E7F47            cs jg 0x374b
00003704  29D8              sub ax,bx
00003706  1F                pop ds
00003707  2B23              sub sp,[bp+di]
00003709  B591              mov ch,0x91
0000370B  3438              xor al,0x38
0000370D  FF00              inc word [bx+si]
0000370F  BDC6C7            mov bp,0xc7c6
00003712  45                inc bp
00003713  0DCDB4            or ax,0xb4cd
00003716  72D0              jc 0x36e8
00003718  46                inc si
00003719  46                inc si
0000371A  DC16FE80          fcom qword [0x80fe]
0000371E  3C37              cmp al,0x37
00003720  B97100            mov cx,0x71
00003723  46                inc si
00003724  7607              jna 0x372d
00003726  746B              jz 0x3793
00003728  0B9C96F1          or bx,[si-0xe6a]
0000372C  8ADB              mov bl,bl
0000372E  F7C74651          test di,0x5146
00003732  EA532D79B6        jmp 0xb679:0x2d53
00003737  3D0454            cmp ax,0x5404
0000373A  C7                db 0xc7
0000373B  3B6600            cmp sp,[bp+0x0]
0000373E  47                inc di
0000373F  53                push bx
00003740  D6                salc
00003741  1B5CE5            sbb bx,[si-0x1b]
00003744  0F08              invd
00003746  EF                out dx,ax
00003747  8D5704            lea dx,[bx+0x4]
0000374A  29C7              sub di,ax
0000374C  69064A5D0C53      imul ax,[0x5d4a],word 0x530c
00003752  FF2EEBDB          jmp far [0xdbeb]
00003756  08DB              or bl,bl
00003758  B306              mov bl,0x6
0000375A  1E                push ds
0000375B  A21027            mov [0x2710],al
0000375E  16                push ss
0000375F  ED                in ax,dx
00003760  218D4F22          and [di+0x224f],cx
00003764  6C                insb
00003765  7B8B              jpo 0x36f2
00003767  AB                stosw
00003768  3A5B4F            cmp bl,[bp+di+0x4f]
0000376B  D101              rol word [bx+di],1
0000376D  F6D2              not dl
0000376F  047E              add al,0x7e
00003771  4E                dec si
00003772  EB88              jmp short 0x36fc
00003774  D00E2656          ror byte [0x5626],1
00003778  140B              adc al,0xb
0000377A  0B7D3C            or di,[di+0x3c]
0000377D  9A05E52510        call 0x1025:0xe505
00003782  E180              loope 0x3704
00003784  37                aaa
00003785  E07B              loopne 0x3802
00003787  D8C8              fmul st0
00003789  7CC4              jl 0x374f
0000378B  5C                pop sp
0000378C  293A              sub [bp+si],di
0000378E  BE8637            mov si,0x3786
00003791  A17CBA            mov ax,[0xba7c]
00003794  5A                pop dx
00003795  3600C6            ss add dh,al
00003798  EC                in al,dx
00003799  7296              jc 0x3731
0000379B  C1E75B            shl di,byte 0x5b
0000379E  DFC1              ffreep st1
000037A0  7F45              jg 0x37e7
000037A2  110B              adc [bp+di],cx
000037A4  45                inc bp
000037A5  0F75B82187        pcmpeqw mm7,[bx+si-0x78df]
000037AA  46                inc si
000037AB  C5                db 0xc5
000037AC  F00973E9          lock or [bp+di-0x17],si
000037B0  DCF5              fdivr to st5
000037B2  C1E905            shr cx,byte 0x5
000037B5  51                push cx
000037B6  DC942603          fcom qword [si+0x326]
000037BA  47                inc di
000037BB  2E17              cs pop ss
000037BD  44                inc sp
000037BE  242D              and al,0x2d
000037C0  11BA2669          adc [bp+si+0x6926],di
000037C4  51                push cx
000037C5  80754D42          xor byte [di+0x4d],0x42
000037C9  E4A1              in al,0xa1
000037CB  E5A6              in ax,0xa6
000037CD  D2C2              rol dl,cl
000037CF  44                inc sp
000037D0  2D3ED5            sub ax,0xd53e
000037D3  2F                das
000037D4  63BC48BB          arpl [si-0x44b8],di
000037D8  0E                push cs
000037D9  BEB18B            mov si,0x8bb1
000037DC  6C                insb
000037DD  118BA804          adc [bp+di+0x4a8],cx
000037E1  A4                movsb
000037E2  77A8              ja 0x378c
000037E4  C474A3            les si,[si-0x5d]
000037E7  17                pop ss
000037E8  BF0430            mov di,0x3004
000037EB  ED                in ax,dx
000037EC  20C1              and cl,al
000037EE  06                push es
000037EF  B653              mov dh,0x53
000037F1  1B35              sbb si,[di]
000037F3  5E                pop si
000037F4  37                aaa
000037F5  E83EAD            call 0xe536
000037F8  4D                dec bp
000037F9  EE                out dx,al
000037FA  DB01              fild dword [bx+di]
000037FC  C852DB11          enter 0xdb52,0x11
00003800  DA3C              fidivr dword [si]
00003802  265A              es pop dx
00003804  C0C724            rol bh,byte 0x24
00003807  BE0F6C            mov si,0x6c0f
0000380A  1D24BE            sbb ax,0xbe24
0000380D  26E803DD          es call 0x1514
00003811  03CA              add cx,dx
00003813  8172574658        xor word [bp+si+0x57],0x5846
00003818  EC                in al,dx
00003819  5A                pop dx
0000381A  42                inc dx
0000381B  B8CB42            mov ax,0x42cb
0000381E  C7C0D1DB          mov ax,0xdbd1
00003822  830524            add word [di],byte +0x24
00003825  97                xchg ax,di
00003826  37                aaa
00003827  85BB9A88          test [bp+di-0x7766],di
0000382B  54                push sp
0000382C  E8288D            call 0xc557
0000382F  54                push sp
00003830  AD                lodsw
00003831  CC                int3
00003832  1DB528            sbb ax,0x28b5
00003835  D6                salc
00003836  C1E07F            shl ax,byte 0x7f
00003839  FEC3              inc bl
0000383B  1401              adc al,0x1
0000383D  D85750            fcom dword [bx+0x50]
00003840  0E                push cs
00003841  22D5              and dl,ch
00003843  C6                db 0xc6
00003844  D6                salc
00003845  2C1F              sub al,0x1f
00003847  F02A8E95A6        lock sub cl,[bp-0x596b]
0000384C  59                pop cx
0000384D  20D5              and ch,dl
0000384F  C9                leave
00003850  816287D798        and word [bp+si-0x79],0x98d7
00003855  C3                ret
00003856  16                push ss
00003857  44                inc sp
00003858  856DFE            test [di-0x2],bp
0000385B  07                pop es
0000385C  254040            and ax,0x4040
0000385F  3D4000            cmp ax,0x40
00003862  88E7              mov bh,ah
00003864  94                xchg ax,sp
00003865  894F77            mov [bx+0x77],cx
00003868  0CCB              or al,0xcb
0000386A  8B4757            mov ax,[bx+0x57]
0000386D  2E79DC            cs jns 0x384c
00003870  0A60EC            or ah,[bx+si-0x14]
00003873  C9                leave
00003874  27                daa
00003875  A0588E            mov al,[0x8e58]
00003878  60                pusha
00003879  EF                out dx,ax
0000387A  2889008D          sub [bx+di-0x7300],cl
0000387E  7F8A              jg 0x380a
00003880  0437              add al,0x37
00003882  27                daa
00003883  92                xchg ax,dx
00003884  FE                db 0xfe
00003885  6C                insb
00003886  7547              jnz 0x38cf
00003888  8EC6              mov es,si
0000388A  1425              adc al,0x25
0000388C  D584              aad 0x84
0000388E  01E1              add cx,sp
00003890  ED                in ax,dx
00003891  47                inc di
00003892  61                popa
00003893  C41E57D0          les bx,[0xd057]
00003897  1446              adc al,0x46
00003899  281E51BA          sub [0xba51],bl
0000389D  52                push dx
0000389E  7EE2              jng 0x3882
000038A0  0B8B7DB9          or cx,[bp+di-0x4683]
000038A4  44                inc sp
000038A5  16                push ss
000038A6  B306              mov bl,0x6
000038A8  1C4B              sbb al,0x4b
000038AA  181E371A          sbb [0x1a37],bl
000038AE  0F                db 0x0f
000038AF  B4F8              mov ah,0xf8
000038B1  7F29              jg 0x38dc
000038B3  64837DEB87        cmp word [fs:di-0x15],byte -0x79
000038B8  07                pop es
000038B9  116618            adc [bp+0x18],sp
000038BC  B614              mov dh,0x14
000038BE  7120              jno 0x38e0
000038C0  5D                pop bp
000038C1  22260D18          and ah,[0x180d]
000038C5  26309535EE        xor [es:di-0x11cb],dl
000038CA  46                inc si
000038CB  C6C4FF            mov ah,0xff
000038CE  D5A2              aad 0xa2
000038D0  EE                out dx,al
000038D1  5D                pop bp
000038D2  7828              js 0x38fc
000038D4  FE4260            inc byte [bp+si+0x60]
000038D7  FD                std
000038D8  6580640591        and byte [gs:si+0x5],0x91
000038DD  BD044C            mov bp,0x4c04
000038E0  05649B            add ax,0x9b64
000038E3  A4                movsb
000038E4  16                push ss
000038E5  74AC              jz 0x3893
000038E7  DC5DDC            fcomp qword [di-0x24]
000038EA  2591FF            and ax,0xff91
000038ED  54                push sp
000038EE  B679              mov dh,0x79
000038F0  BE14A2            mov si,0xa214
000038F3  50                push ax
000038F4  D53C              aad 0x3c
000038F6  44                inc sp
000038F7  EE                out dx,al
000038F8  BC32BA            mov sp,0xba32
000038FB  DC04              fadd qword [si]
000038FD  D8ED              fsubr st5
000038FF  E203              loop 0x3904
00003901  46                inc si
00003902  45                inc bp
00003903  FD                std
00003904  5A                pop dx
00003905  219BCA80          and [bp+di-0x7f36],bx
00003909  E2A2              loop 0x38ad
0000390B  9E                sahf
0000390C  9A12073CC0        call 0xc03c:0x712
00003911  0BED              or bp,bp
00003913  FC                cld
00003914  1B2B              sbb bp,[bp+di]
00003916  2C42              sub al,0x42
00003918  2F                das
00003919  D104              rol word [si],1
0000391B  2B63A8            sub sp,[bp+di-0x58]
0000391E  52                push dx
0000391F  B88515            mov ax,0x1585
00003922  016CA2            add [si-0x5e],bp
00003925  FE                db 0xfe
00003926  B6BB              mov dh,0xbb
00003928  38B8494C          cmp [bx+si+0x4c49],bh
0000392C  8BEA              mov bp,dx
0000392E  63D1              arpl cx,dx
00003930  B774              mov bh,0x74
00003932  050D2F            add ax,0x2f0d
00003935  07                pop es
00003936  0DE8D3            or ax,0xd3e8
00003939  3215              xor dl,[di]
0000393B  B745              mov bh,0x45
0000393D  69B92ACD0477      imul di,[bx+di-0x32d6],word 0x7704
00003943  CF                iret
00003944  0459              add al,0x59
00003946  6385FCC6          arpl [di-0x3904],ax
0000394A  B39F              mov bl,0x9f
0000394C  FD                std
0000394D  FB                sti
0000394E  52                push dx
0000394F  01440D            add [si+0xd],ax
00003952  7963              jns 0x39b7
00003954  0477              add al,0x77
00003956  6E                outsb
00003957  ED                in ax,dx
00003958  F5                cmc
00003959  55                push bp
0000395A  6F                outsw
0000395B  98                cbw
0000395C  0F74E4            pcmpeqb mm4,mm4
0000395F  1DD28D            sbb ax,0x8dd2
00003962  A14482            mov ax,[0x8244]
00003965  60                pusha
00003966  0BD9              or bx,cx
00003968  AF                scasw
00003969  F9                stc
0000396A  F6D4              not ah
0000396C  8A6189            mov ah,[bx+di-0x77]
0000396F  D86E3C            fsubr dword [bp+0x3c]
00003972  7AB7              jpe 0x392b
00003974  8421              test [bx+di],ah
00003976  74C6              jz 0x393e
00003978  C2EB0F            ret 0xfeb
0000397B  92                xchg ax,dx
0000397C  FA                cli
0000397D  F7D0              not ax
0000397F  251E23            and ax,0x231e
00003982  F4                hlt
00003983  42                inc dx
00003984  90                nop
00003985  F8                clc
00003986  85D0              test ax,dx
00003988  75B5              jnz 0x393f
0000398A  98                cbw
0000398B  D928              fldcw [bx+si]
0000398D  BCB506            mov sp,0x6b5
00003990  D8F2              fdiv st2
00003992  00D5              add ch,dl
00003994  6C                insb
00003995  6351FE            arpl [bx+di-0x2],dx
00003998  4F                dec di
00003999  F04B              lock dec bx
0000399B  82                db 0x82
0000399C  FE4C1E            dec byte [si+0x1e]
0000399F  0C25              or al,0x25
000039A1  82                db 0x82
000039A2  D6                salc
000039A3  2AB4FC8E          sub dh,[si-0x7104]
000039A7  660C64            o32 or al,0x64
000039AA  800D22            or byte [di],0x22
000039AD  031C              add bx,[si]
000039AF  7034              jo 0x39e5
000039B1  4D                dec bp
000039B2  0D8956            or ax,0x5689
000039B5  10B898DB          adc [bx+si-0x2468],bh
000039B9  D4AD              aam 0xad
000039BB  6C                insb
000039BC  0A7E08            or bh,[bp+0x8]
000039BF  5B                pop bx
000039C0  93                xchg ax,bx
000039C1  48                dec ax
000039C2  A1A20A            mov ax,[0xaa2]
000039C5  199FB124          sbb [bx+0x24b1],bx
000039C9  3D50B1            cmp ax,0xb150
000039CC  D7                xlatb
000039CD  40                inc ax
000039CE  1D2675            sbb ax,0x7526
000039D1  AA                stosb
000039D2  2D954B            sub ax,0x4b95
000039D5  CC                int3
000039D6  37                aaa
000039D7  1BE4              sbb sp,sp
000039D9  F737              div word [bx]
000039DB  0D5514            or ax,0x1455
000039DE  BDE107            mov bp,0x7e1
000039E1  2E43              cs inc bx
000039E3  9A465C4F42        call 0x424f:0x5c46
000039E8  52                push dx
000039E9  2F                das
000039EA  D0D4              rcl ah,1
000039EC  01D3              add bx,dx
000039EE  7613              jna 0x3a03
000039F0  005D82            add [di-0x7e],bl
000039F3  C41C              les bx,[si]
000039F5  3209              xor cl,[bx+di]
000039F7  8E30              mov segr6,[bx+si]
000039F9  8B50E4            mov dx,[bx+si-0x1c]
000039FC  1C99              sbb al,0x99
000039FE  D455              aam 0x55
00003A00  34D8              xor al,0xd8
00003A02  846F30            test [bx+0x30],ch
00003A05  1E                push ds
00003A06  80FA8A            cmp dl,0x8a
00003A09  5C                pop sp
00003A0A  DB                db 0xdb
00003A0B  B3CE              mov bl,0xce
00003A0D  707E              jo 0x3a8d
00003A0F  8814              mov [si],dl
00003A11  40                inc ax
00003A12  43                inc bx
00003A13  3DDFDF            cmp ax,0xdfdf
00003A16  7D0C              jnl 0x3a24
00003A18  8A17              mov dl,[bx]
00003A1A  6B1393            imul dx,[bp+di],byte -0x6d
00003A1D  6AE3              push byte -0x1d
00003A1F  34B2              xor al,0xb2
00003A21  56                push si
00003A22  B3FA              mov bl,0xfa
00003A24  D8E9              fsubr st1
00003A26  95                xchg ax,bp
00003A27  FD                std
00003A28  6785D7            a32 test di,dx
00003A2B  7A01              jpe 0x3a2e
00003A2D  C1E20B            shl dx,byte 0xb
00003A30  98                cbw
00003A31  DA7620            fidiv dword [bp+0x20]
00003A34  09C2              or dx,ax
00003A36  3B29              cmp bp,[bx+di]
00003A38  03D1              add dx,cx
00003A3A  E8F809            call 0x4435
00003A3D  D0CC              ror ah,1
00003A3F  050DF3            add ax,0xf30d
00003A42  CB                retf
00003A43  58                pop ax
00003A44  86A34F47          xchg [bp+di+0x474f],ah
00003A48  1E                push ds
00003A49  41                inc cx
00003A4A  31E2              xor dx,sp
00003A4C  77A9              ja 0x39f7
00003A4E  B15C              mov cl,0x5c
00003A50  0AB1777B          or dh,[bx+di+0x7b77]
00003A54  F02211            lock and dl,[bx+di]
00003A57  5A                pop dx
00003A58  0C87              or al,0x87
00003A5A  F758AF            neg word [bx+si-0x51]
00003A5D  DB060C0A          fild dword [0xa0c]
00003A61  2E145D            cs adc al,0x5d
00003A64  C3                ret
00003A65  99                cwd
00003A66  0E                push cs
00003A67  16                push ss
00003A68  02E5              add ah,ch
00003A6A  7221              jc 0x3a8d
00003A6C  A0E577            mov al,[0x77e5]
00003A6F  29CF              sub di,cx
00003A71  7F2B              jg 0x3a9e
00003A73  77AB              ja 0x3a20
00003A75  0B886205          or cx,[bx+si+0x562]
00003A79  5E                pop si
00003A7A  44                inc sp
00003A7B  83D2FF            adc dx,byte -0x1
00003A7E  0190C03A          add [bx+si+0x3ac0],dx
00003A82  8E6FA8            mov gs,[bx-0x58]
00003A85  01F0              add ax,si
00003A87  11FA              adc dx,di
00003A89  77D8              ja 0x3a63
00003A8B  59                pop cx
00003A8C  EBBE              jmp short 0x3a4c
00003A8E  F653E8            not byte [bp+di-0x18]
00003A91  AE                scasb
00003A92  E8A08B            call 0xc635
00003A95  0E                push cs
00003A96  305926            xor [bx+di+0x26],bl
00003A99  89AD9126          mov [di+0x2691],bp
00003A9D  B689              mov dh,0x89
00003A9F  37                aaa
00003AA0  050183            add ax,0x8301
00003AA3  B650              mov dh,0x50
00003AA5  43                inc bx
00003AA6  6F                outsw
00003AA7  E19C              loope 0x3a45
00003AA9  D324              shl word [si],cl
00003AAB  A10A05            mov ax,[0x50a]
00003AAE  B664              mov dh,0x64
00003AB0  D3933614          rcl word [bp+di+0x1436],cl
00003AB4  99                cwd
00003AB5  CD06              int 0x6
00003AB7  88B65711          mov [bp+0x1157],dh
00003ABB  EC                in al,dx
00003ABC  EF                out dx,ax
00003ABD  08168947          or [0x4789],dl
00003AC1  0E                push cs
00003AC2  CDE8              int 0xe8
00003AC4  B418              mov ah,0x18
00003AC6  2E105D81          adc [cs:di-0x7f],bl
00003ACA  0C17              or al,0x17
00003ACC  9F                lahf
00003ACD  88D7              mov bh,dl
00003ACF  B1B5              mov cl,0xb5
00003AD1  76E8              jna 0x3abb
00003AD3  8413              test [bp+di],dl
00003AD5  CE                into
00003AD6  A6                cmpsb
00003AD7  6E                outsb
00003AD8  F0CA80CA          lock retf 0xca80
00003ADC  37                aaa
00003ADD  A04F7C            mov al,[0x7c4f]
00003AE0  109101A3          adc [bx+di-0x5cff],dl
00003AE4  127275            adc dh,[bp+si+0x75]
00003AE7  58                pop ax
00003AE8  EA0FF60554        jmp 0x5405:0xf60f
00003AED  F5                cmc
00003AEE  7420              jz 0x3b10
00003AF0  A819              test al,0x19
00003AF2  B5F5              mov ch,0xf5
00003AF4  25DE82            and ax,0x82de
00003AF7  56                push si
00003AF8  FA                cli
00003AF9  F7D2              not dx
00003AFB  340C              xor al,0xc
00003AFD  42                inc dx
00003AFE  A4                movsb
00003AFF  35BCFC            xor ax,0xfcbc
00003B02  51                push cx
00003B03  E205              loop 0x3b0a
00003B05  BF04B7            mov di,0xb704
00003B08  97                xchg ax,di
00003B09  4B                dec bx
00003B0A  254201            and ax,0x142
00003B0D  78B8              js 0x3ac7
00003B0F  0511A8            add ax,0xa811
00003B12  7016              jo 0x3b2a
00003B14  F8                clc
00003B15  0408              add al,0x8
00003B17  5F                pop di
00003B18  20FC              and ah,bh
00003B1A  A818              test al,0x18
00003B1C  75BA              jnz 0x3ad8
00003B1E  D80B              fmul dword [bp+di]
00003B20  0E                push cs
00003B21  DC15              fcom qword [di]
00003B23  FC                cld
00003B24  03A89687          add bp,[bx+si-0x786a]
00003B28  B0DE              mov al,0xde
00003B2A  338800BF          xor cx,[bx+si-0x4100]
00003B2E  085EFB            or [bp-0x5],bl
00003B31  1C3D              sbb al,0x3d
00003B33  FE                db 0xfe
00003B34  251995            and ax,0x9519
00003B37  85C2              test dx,ax
00003B39  2F                das
00003B3A  DA9F7423          ficomp dword [bx+0x2374]
00003B3E  E71D              out 0x1d,ax
00003B40  E305              jcxz 0x3b47
00003B42  D8706A            fdiv dword [bx+si+0x6a]
00003B45  BF964D            mov di,0x4d96
00003B48  8AD5              mov dl,ch
00003B4A  90                nop
00003B4B  2C64              sub al,0x64
00003B4D  3919              cmp [bx+di],bx
00003B4F  1C1F              sbb al,0x1f
00003B51  8127BFF0          and word [bx],0xf0bf
00003B55  BF800F            mov di,0xf80
00003B58  40                inc ax
00003B59  2BCF              sub cx,di
00003B5B  6680D522          o32 adc ch,0x22
00003B5F  40                inc ax
00003B60  07                pop es
00003B61  5E                pop si
00003B62  267876            es js 0x3bdb
00003B65  90                nop
00003B66  E8F7B8            call 0xf460
00003B69  6775E7            jnz 0x3b53
00003B6C  C440DD            les ax,[bx+si-0x23]
00003B6F  2B8465FF          sub ax,[si-0x9b]
00003B73  CA2214            retf 0x1422
00003B76  A4                movsb
00003B77  2D58D0            sub ax,0xd058
00003B7A  D813              fcom dword [bp+di]
00003B7C  EE                out dx,al
00003B7D  0112              add [bp+si],dx
00003B7F  94                xchg ax,sp
00003B80  ED                in ax,dx
00003B81  27                daa
00003B82  65834739DD        add word [gs:bx+0x39],byte -0x23
00003B87  16                push ss
00003B88  44                inc sp
00003B89  6E                outsb
00003B8A  EF                out dx,ax
00003B8B  F8                clc
00003B8C  C9                leave
00003B8D  21DD              and bp,bx
00003B8F  050F28            add ax,0x280f
00003B92  49                dec cx
00003B93  15A2FF            adc ax,0xffa2
00003B96  50                push ax
00003B97  1F                pop ds
00003B98  3497              xor al,0x97
00003B9A  3F                aas
00003B9B  2A6E19            sub ch,[bp+0x19]
00003B9E  3252EC            xor dl,[bp+si-0x14]
00003BA1  2A5D2B            sub bl,[di+0x2b]
00003BA4  EBE7              jmp short 0x3b8d
00003BA6  0CCD              or al,0xcd
00003BA8  11F1              adc cx,si
00003BAA  EE                out dx,al
00003BAB  E86112            call 0x4e0f
00003BAE  27                daa
00003BAF  FC                cld
00003BB0  C6                db 0xc6
00003BB1  F60740            test byte [bx],0x40
00003BB4  7519              jnz 0x3bcf
00003BB6  2E8C01            mov [cs:bx+di],es
00003BB9  40                inc ax
00003BBA  2645              es inc bp
00003BBC  C3                ret
00003BBD  94                xchg ax,sp
00003BBE  056009            add ax,0x960
00003BC1  1C5D              sbb al,0x5d
00003BC3  051C01            add ax,0x11c
00003BC6  7C89              jl 0x3b51
00003BC8  82                db 0x82
00003BC9  6C                insb
00003BCA  6F                outsw
00003BCB  44                inc sp
00003BCC  1AE3              sbb ah,bl
00003BCE  0467              add al,0x67
00003BD0  EE                out dx,al
00003BD1  388B6045          cmp [bp+di+0x4560],cl
00003BD5  A3A230            mov [0x30a2],ax
00003BD8  43                inc bx
00003BD9  C189116D3E        ror word [bx+di+0x6d11],byte 0x3e
00003BDE  28B5DE26          sub [di+0x26de],dh
00003BE2  6E                outsb
00003BE3  F2FF5CB1          repne call far [si-0x4f]
00003BE7  A7                cmpsw
00003BE8  831827            sbb word [bx+si],byte +0x27
00003BEB  9E                sahf
00003BEC  30DD              xor ch,bl
00003BEE  91                xchg ax,cx
00003BEF  32F9              xor bh,cl
00003BF1  0BB7035C          or si,[bx+0x5c03]
00003BF5  0E                push cs
00003BF6  82                db 0x82
00003BF7  D7                xlatb
00003BF8  81C5010E          add bp,0xe01
00003BFC  DA2D              fisubr dword [di]
00003BFE  8AE1              mov ah,cl
00003C00  F4                hlt
00003C01  AE                scasb
00003C02  CE                into
00003C03  0E                push cs
00003C04  9D                popf
00003C05  94                xchg ax,sp
00003C06  49                dec cx
00003C07  24D5              and al,0xd5
00003C09  CB                retf
00003C0A  D858B2            fcomp dword [bx+si-0x4e]
00003C0D  FF06099B          inc word [0x9b09]
00003C11  75E9              jnz 0x3bfc
00003C13  C0A603E1CF        shl byte [bp-0x1efd],byte 0xcf
00003C18  BDF92B            mov bp,0x2bf9
00003C1B  51                push cx
00003C1C  BA5901            mov dx,0x159
00003C1F  C2FA8C            ret 0x8cfa
00003C22  C4A3BAA3          les sp,[bp+di-0x5c46]
00003C26  14D0              adc al,0xd0
00003C28  84B034FA          test [bx+si-0x5cc],dh
00003C2C  B0D2              mov al,0xd2
00003C2E  21EC              and sp,bp
00003C30  B16E              mov cl,0x6e
00003C32  7193              jno 0x3bc7
00003C34  03A07AD9          add sp,[bx+si-0x2686]
00003C38  B84468            mov ax,0x6844
00003C3B  CB                retf
00003C3C  6E                outsb
00003C3D  C2E985            ret 0x85e9
00003C40  03C5              add ax,bp
00003C42  94                xchg ax,sp
00003C43  C2125B            ret 0x5b12
00003C46  57                push di
00003C47  0D0586            or ax,0x8605
00003C4A  ED                in ax,dx
00003C4B  CB                retf
00003C4C  0D29B5            or ax,0xb529
00003C4F  FF0B              dec word [bp+di]
00003C51  DB516B            fist dword [bx+di+0x6b]
00003C54  F9                stc
00003C55  41                inc cx
00003C56  61                popa
00003C57  7FE4              jg 0x3c3d
00003C59  1E                push ds
00003C5A  7502              jnz 0x3c5e
00003C5C  80A8DD5075        sub byte [bx+si+0x50dd],0x75
00003C61  1102              adc [bp+si],ax
00003C63  1BC2              sbb ax,dx
00003C65  05663B            add ax,0x3b66
00003C68  5D                pop bp
00003C69  FA                cli
00003C6A  7BB8              jpo 0x3c24
00003C6C  D0EB              shr bl,1
00003C6E  E39D              jcxz 0x3c0d
00003C70  95                xchg ax,bp
00003C71  8C2B              mov [bp+di],gs
00003C73  3F                aas
00003C74  DF7ED4            fistp qword [bp-0x2c]
00003C77  E92FFF            jmp 0x3ba9
00003C7A  E08D              loopne 0x3c09
00003C7C  4C                dec sp
00003C7D  049B              add al,0x9b
00003C7F  EC                in al,dx
00003C80  742D              jz 0x3caf
00003C82  45                inc bp
00003C83  FA                cli
00003C84  EF                out dx,ax
00003C85  744D              jz 0x3cd4
00003C87  269D              es popf
00003C89  0B76D0            or si,[bp-0x30]
00003C8C  A2FCD9            mov [0xd9fc],al
00003C8F  CE                into
00003C90  116013            adc [bx+si+0x13],sp
00003C93  3462              xor al,0x62
00003C95  07                pop es
00003C96  61                popa
00003C97  B89606            mov ax,0x696
00003C9A  5C                pop sp
00003C9B  A9D4C0            test ax,0xc0d4
00003C9E  B566              mov ch,0x66
00003CA0  EB6E              jmp short 0x3d10
00003CA2  B98FFC            mov cx,0xfc8f
00003CA5  A059EF            mov al,[0xef59]
00003CA8  2B602D            sub sp,[bx+si+0x2d]
00003CAB  D95D20            fstp dword [di+0x20]
00003CAE  6E                outsb
00003CAF  220D              and cl,[di]
00003CB1  9A11135A1C        call 0x1c5a:0x1311
00003CB6  06                push es
00003CB7  9C                pushf
00003CB8  E68B              out 0x8b,al
00003CBA  44                inc sp
00003CBB  1A5B7A            sbb bl,[bp+di+0x7a]
00003CBE  3B8AFFD8          cmp cx,[bp+si-0x2701]
00003CC2  CD5E              int 0x5e
00003CC4  86C3              xchg bl,al
00003CC6  A88B              test al,0x8b
00003CC8  58                pop ax
00003CC9  2155A3            and [di-0x5d],dx
00003CCC  C6                db 0xc6
00003CCD  51                push cx
00003CCE  355334            xor ax,0x3453
00003CD1  0389FEE9          add cx,[bx+di-0x1602]
00003CD5  CD01              int 0x1
00003CD7  E8BF10            call 0x4d99
00003CDA  D09F603D          rcr byte [bx+0x3d60],1
00003CDE  C10A59            ror word [bp+si],byte 0x59
00003CE1  0CA1              or al,0xa1
00003CE3  FB                sti
00003CE4  B004              mov al,0x4
00003CE6  F7D1              not cx
00003CE8  0BDD              or bx,bp
00003CEA  0AAE2E01          or ch,[bp+0x12e]
00003CEE  FC                cld
00003CEF  3E2A00            sub al,[ds:bx+si]
00003CF2  A12C00            mov ax,[0x2c]
00003CF5  108AA931          adc [bp+si+0x31a9],cl
00003CF9  35530C            xor ax,0xc53
00003CFC  F5                cmc
00003CFD  BF8EE8            mov di,0xe88e
00003D00  1229              adc ch,[bx+di]
00003D02  D404              aam 0x4
00003D04  2F                das
00003D05  298D5D06          sub [di+0x65d],cx
00003D09  E2FF              loop 0x3d0a
00003D0B  4E                dec si
00003D0C  FA                cli
00003D0D  265D              es pop bp
00003D0F  C17C99DB          sar word [si-0x67],byte 0xdb
00003D13  AD                lodsw
00003D14  393B              cmp [bp+di],di
00003D16  347A              xor al,0x7a
00003D18  7488              jz 0x3ca2
00003D1A  658D03            lea ax,[gs:bp+di]
00003D1D  DB                db 0xdb
00003D1E  7482              jz 0x3ca2
00003D20  99                cwd
00003D21  292D              sub [di],bp
00003D23  2B40A8            sub ax,[bx+si-0x58]
00003D26  CE                into
00003D27  5D                pop bp
00003D28  6B4EF6DC          imul cx,[bp-0xa],byte -0x24
00003D2C  06                push es
00003D2D  0939              or [bx+di],di
00003D2F  CA6EBF            retf 0xbf6e
00003D32  6BFFDB            imul di,di,byte -0x25
00003D35  21F6              and si,si
00003D37  06                push es
00003D38  7A64              jpe 0x3d9e
00003D3A  FFF6              push si
00003D3C  5B                pop bx
00003D3D  250807            and ax,0x708
00003D40  775C              ja 0x3d9e
00003D42  FFF7              push di
00003D44  5C                pop sp
00003D45  0408              add al,0x8
00003D47  97                xchg ax,di
00003D48  898A4CFB          mov [bp+si-0x4b4],cx
00003D4C  28653A            sub [di+0x3a],ah
00003D4F  4F                dec di
00003D50  1F                pop ds
00003D51  0A7048            or dh,[bx+si+0x48]
00003D54  FFB75B24          push word [bx+0x245b]
00003D58  3237              xor dh,[bx]
00003D5A  052665            add ax,0x6526
00003D5D  ED                in ax,dx
00003D5E  3B4F1D            cmp cx,[bx+0x1d]
00003D61  109537CD          adc [di-0x32c9],dl
00003D65  40                inc ax
00003D66  0A971B2C          or dl,[bx+0x2c1b]
00003D6A  FF0C              dec word [si]
00003D6C  2D9A06            sub ax,0x69a
00003D6F  C7                db 0xc7
00003D70  38BE037E          cmp [bp+0x7e03],bh
00003D74  63A1ECBF          arpl [bx+di-0x4014],sp
00003D78  E116              loope 0x3d90
00003D7A  7275              jc 0x3df1
00003D7C  2EFFC3            cs inc bx
00003D7F  9D                popf
00003D80  7060              jo 0x3de2
00003D82  FE                db 0xfe
00003D83  68001B            push word 0x1b00
00003D86  006868            add [bx+si+0x68],ch
00003D89  02497B            add cl,[bx+di+0x7b]
00003D8C  C1E1F8            shl cx,byte 0xf8
00003D8F  8C29              mov [bx+di],gs
00003D91  FB                sti
00003D92  57                push di
00003D93  2D8238            sub ax,0x3882
00003D96  337430            xor si,[si+0x30]
00003D99  E614              out 0x14,al
00003D9B  DF0E12F6          fisttp word [0xf612]
00003D9F  06                push es
00003DA0  EB0C              jmp short 0x3dae
00003DA2  A011F8            mov al,[0xf811]
00003DA5  9B59              wait pop cx
00003DA7  D7                xlatb
00003DA8  7115              jno 0x3dbf
00003DAA  0234              add dh,[si]
00003DAC  315957            xor [bx+di+0x57],bx
00003DAF  CE                into
00003DB0  02841B1F          add al,[si+0x1f1b]
00003DB4  59                pop cx
00003DB5  E41E              in al,0x1e
00003DB7  56                push si
00003DB8  44                inc sp
00003DB9  AB                stosw
00003DBA  9E                sahf
00003DBB  E346              jcxz 0x3e03
00003DBD  3D32F0            cmp ax,0xf032
00003DC0  E396              jcxz 0x3d58
00003DC2  008A6502          add [bp+si+0x265],cl
00003DC6  B40C              mov ah,0xc
00003DC8  050316            add ax,0x1603
00003DCB  86EE              xchg dh,ch
00003DCD  DC840053          fadd qword [si+0x5300]
00003DD1  31CE              xor si,cx
00003DD3  80A0D03FC3        and byte [bx+si+0x3fd0],0xc3
00003DD8  2A680F            sub ch,[bx+si+0xf]
00003DDB  6B001F            imul ax,[bx+si],byte +0x1f
00003DDE  4F                dec di
00003DDF  A985CE            test ax,0xce85
00003DE2  35BBD8            xor ax,0xd8bb
00003DE5  884BF7            mov [bp+di-0x9],cl
00003DE8  07                pop es
00003DE9  4B                dec bx
00003DEA  01506D            add [bx+si+0x6d],dx
00003DED  CD05              int 0x5
00003DEF  F4                hlt
00003DF0  052075            add ax,0x7520
00003DF3  C7                db 0xc7
00003DF4  260E              es push cs
00003DF6  E91634            jmp 0x720f
00003DF9  39B6BE2E          cmp [bp+0x2ebe],si
00003DFD  75B0              jnz 0x3daf
00003DFF  8B5F50            mov bx,[bx+0x50]
00003E02  AB                stosw
00003E03  B84EF0            mov ax,0xf04e
00003E06  1CF7              sbb al,0xf7
00003E08  7F82              jg 0x3d8c
00003E0A  148B              adc al,0x8b
00003E0C  5E                pop si
00003E0D  91                xchg ax,cx
00003E0E  FE8C0652          dec byte [si+0x5206]
00003E12  6E                outsb
00003E13  90                nop
00003E14  0E                push cs
00003E15  42                inc dx
00003E16  42                inc dx
00003E17  80DA70            sbb dl,0x70
00003E1A  BAB42D            mov dx,0x2db4
00003E1D  1483              adc al,0x83
00003E1F  D6                salc
00003E20  95                xchg ax,bp
00003E21  7E2D              jng 0x3e50
00003E23  00FF              add bh,bh
00003E25  2C0A              sub al,0xa
00003E27  D548              aad 0x48
00003E29  DD1D              fstp qword [di]
00003E2B  FC                cld
00003E2C  83C395            add bx,byte -0x6b
00003E2F  91                xchg ax,cx
00003E30  E3C8              jcxz 0x3dfa
00003E32  45                inc bp
00003E33  CF                iret
00003E34  77BD              ja 0x3df3
00003E36  B18A              mov cl,0x8a
00003E38  350D50            xor ax,0x500d
00003E3B  B344              mov bl,0x44
00003E3D  DB                db 0xdb
00003E3E  FA                cli
00003E3F  AC                lodsb
00003E40  00B8161D          add [bx+si+0x1d16],bh
00003E44  3973C9            cmp [bp+di-0x37],si
00003E47  1585BA            adc ax,0xba85
00003E4A  04C5              add al,0xc5
00003E4C  FC                cld
00003E4D  E16D              loope 0x3ebc
00003E4F  6B451AF7          imul ax,[di+0x1a],byte -0x9
00003E53  91                xchg ax,cx
00003E54  00E3              add bl,ah
00003E56  C6                db 0xc6
00003E57  8B09              mov cx,[bx+di]
00003E59  F1                int1
00003E5A  36180D            sbb [ss:di],cl
00003E5D  BEAD01            mov si,0x1ad
00003E60  8B1EDED1          mov bx,[0xd1de]
00003E64  39A32F89          cmp [bp+di-0x76d1],sp
00003E68  7D11              jnl 0x3e7b
00003E6A  3B4411            cmp ax,[si+0x11]
00003E6D  BB9E3B            mov bx,0x3b9e
00003E70  54                push sp
00003E71  94                xchg ax,sp
00003E72  61                popa
00003E73  0F3C              cpu_write
00003E75  9C                pushf
00003E76  3BB58DDE          cmp si,[di-0x2173]
00003E7A  4A                dec dx
00003E7B  7D43              jnl 0x3ec0
00003E7D  EB61              jmp short 0x3ee0
00003E7F  1D570A            sbb ax,0xa57
00003E82  DE0A              fimul word [bp+si]
00003E84  57                push di
00003E85  E753              out 0x53,ax
00003E87  6AE8              push byte -0x18
00003E89  40                inc ax
00003E8A  FB                sti
00003E8B  47                inc di
00003E8C  4E                dec si
00003E8D  2184C197          and [si-0x683f],ax
00003E91  9C                pushf
00003E92  AE                scasb
00003E93  44                inc sp
00003E94  13B605A0          adc si,[bp-0x5ffb]
00003E98  50                push ax
00003E99  E710              out 0x10,ax
00003E9B  06                push es
00003E9C  8185B0E7CD6E      add word [di-0x1850],0x6ecd
00003EA2  E3E0              jcxz 0x3e84
00003EA4  0C19              or al,0x19
00003EA6  AB                stosw
00003EA7  F1                int1
00003EA8  2334              and si,[si]
00003EAA  F7798F            idiv word [bx+di-0x71]
00003EAD  D03E1C51          sar byte [0x511c],1
00003EB1  9BCB              wait retf
00003EB3  C9                leave
00003EB4  CD6B              int 0x6b
00003EB6  18DF              sbb bh,bl
00003EB8  EF                out dx,ax
00003EB9  1B18              sbb bx,[bx+si]
00003EBB  44                inc sp
00003EBC  3B488D            cmp cx,[bx+si-0x73]
00003EBF  81206A8B          and word [bx+si],0x8b6a
00003EC3  F3357ACF          rep xor ax,0xcf7a
00003EC7  0E                push cs
00003EC8  B656              mov dh,0x56
00003ECA  8D                db 0x8d
00003ECB  C081CA21E9        rol byte [bx+di+0x21ca],byte 0xe9
00003ED0  41                inc cx
00003ED1  F9                stc
00003ED2  A06B81            mov al,[0x816b]
00003ED5  10851DAC          adc [di-0x53e3],al
00003ED9  E188              loope 0x3e63
00003EDB  1490              adc al,0x90
00003EDD  64E105            fs loope 0x3ee5
00003EE0  50                push ax
00003EE1  B076              mov al,0x76
00003EE3  61                popa
00003EE4  1C80              sbb al,0x80
00003EE6  CF                iret
00003EE7  1ACD              sbb cl,ch
00003EE9  1140B8            adc [bx+si-0x48],ax
00003EEC  2D5165            sub ax,0x6551
00003EEF  316BA6            xor [bp+di-0x5a],bp
00003EF2  245B              and al,0x5b
00003EF4  E03B              loopne 0x3f31
00003EF6  650B5D43          or bx,[gs:di+0x43]
00003EFA  7410              jz 0x3f0c
00003EFC  FA                cli
00003EFD  0939              or [bx+di],di
00003EFF  C60100            mov byte [bx+di],0x0
00003F02  6320              arpl [bx+si],sp
00003F04  73B4              jnc 0x3eba
00003F06  3973CD            cmp [bp+di-0x33],si
00003F09  49                dec cx
00003F0A  0545BB            add ax,0xbb45
00003F0D  FF                db 0xff
00003F0E  3BEB              cmp bp,bx
00003F10  19EF              sbb di,bp
00003F12  1D8651            sbb ax,0x5186
00003F15  2D4B04            sub ax,0x44b
00003F18  D415              aam 0x15
00003F1A  1D30B3            sbb ax,0xb330
00003F1D  B9C11A            mov cx,0x1ac1
00003F20  A5                movsw
00003F21  CE                into
00003F22  42                inc dx
00003F23  07                pop es
00003F24  C7                db 0xc7
00003F25  54                push sp
00003F26  F1                int1
00003F27  104F5A            adc [bx+0x5a],cl
00003F2A  6D                insw
00003F2B  80F9B8            cmp cl,0xb8
00003F2E  96                xchg ax,si
00003F2F  09477A            or [bx+0x7a],ax
00003F32  DF                db 0xdf
00003F33  F8                clc
00003F34  DFB409C1          fbstp tword [si-0x3ef7]
00003F38  740B              jz 0x3f45
00003F3A  0A85C110          or al,[di+0x10c1]
00003F3E  80401D5E          add byte [bx+si+0x1d],0x5e
00003F42  724A              jc 0x3f8e
00003F44  F8                clc
00003F45  C7                db 0xc7
00003F46  F5                cmc
00003F47  78E9              js 0x3f32
00003F49  0E                push cs
00003F4A  46                inc si
00003F4B  E60F              out 0xf,al
00003F4D  BA6D01            mov dx,0x16d
00003F50  6AE8              push byte -0x18
00003F52  E9C29D            jmp 0xdd17
00003F55  AC                lodsb
00003F56  5E                pop si
00003F57  256AD3            and ax,0xd36a
00003F5A  47                inc di
00003F5B  18EE              sbb dh,ch
00003F5D  FA                cli
00003F5E  1DE2CA            sbb ax,0xcae2
00003F61  1175BC            adc [di-0x44],si
00003F64  1A7880            sbb bh,[bx+si-0x80]
00003F67  5A                pop dx
00003F68  7E0B              jng 0x3f75
00003F6A  50                push ax
00003F6B  43                inc bx
00003F6C  D0CF              ror bh,1
00003F6E  FC                cld
00003F6F  3A2B              cmp ch,[bp+di]
00003F71  1A12              sbb dl,[bp+si]
00003F73  5C                pop sp
00003F74  7802              js 0x3f78
00003F76  113F              adc [bx],di
00003F78  0E                push cs
00003F79  16                push ss
00003F7A  2321              and sp,[bx+di]
00003F7C  B043              mov al,0x43
00003F7E  DF6E18            fild qword [bp+0x18]
00003F81  FF24              jmp [si]
00003F83  2E94              cs xchg ax,sp
00003F85  683F96            push word 0x963f
00003F88  B505              mov ch,0x5
00003F8A  DE0B              fimul word [bp+di]
00003F8C  FE                db 0xfe
00003F8D  241F              and al,0x1f
00003F8F  51                push cx
00003F90  2AB66D39          sub dh,[bp+0x396d]
00003F94  2DBC1B            sub ax,0x1bbc
00003F97  207F89            and [bx-0x77],bh
00003F9A  00C4              add ah,al
00003F9C  61                popa
00003F9D  0902              or [bp+si],ax
00003F9F  6C                insb
00003FA0  C9                leave
00003FA1  2E9D              cs popf
00003FA3  8ADE              mov bl,dh
00003FA5  F005172A          lock add ax,0x2a17
00003FA9  E68C              out 0x8c,al
00003FAB  4E                dec si
00003FAC  B55C              mov ch,0x5c
00003FAE  C6                db 0xc6
00003FAF  8D                db 0x8d
00003FB0  C7                db 0xc7
00003FB1  D1BE025A          sar word [bp+0x5a02],1
00003FB5  52                push dx
00003FB6  BD7E30            mov bp,0x307e
00003FB9  F2E057            repne loopne 0x4013
00003FBC  9C                pushf
00003FBD  3322              xor sp,[bp+si]
00003FBF  B37F              mov bl,0x7f
00003FC1  4B                dec bx
00003FC2  7F08              jg 0x3fcc
00003FC4  2E7739            cs ja 0x4000
00003FC7  9AE23B0059        call 0x5900:0x3be2
00003FCC  3F                aas
00003FCD  2D192F            sub ax,0x2f19
00003FD0  70EB              jo 0x3fbd
00003FD2  0A833102          or al,[bp+di+0x231]
00003FD6  1D8FF7            sbb ax,0xf78f
00003FD9  55                push bp
00003FDA  AD                lodsw
00003FDB  41                inc cx
00003FDC  55                push bp
00003FDD  0823              or [bp+di],ah
00003FDF  E2E8              loop 0x3fc9
00003FE1  1386E963          adc ax,[bp+0x63e9]
00003FE5  11EB              adc bx,bp
00003FE7  A32C66            mov [0x662c],ax
00003FEA  7B01              jpo 0x3fed
00003FEC  11C1              adc cx,ax
00003FEE  91                xchg ax,cx
00003FEF  82                db 0x82
00003FF0  54                push sp
00003FF1  808FF7F676        or byte [bx-0x909],0x76
00003FF6  FA                cli
00003FF7  7605              jna 0x3ffe
00003FF9  6D                insw
00003FFA  313B              xor [bp+di],di
00003FFC  12F0              adc dh,al
00003FFE  ED                in ax,dx
00003FFF  CF                iret
00004000  3903              cmp [bp+di],ax
00004002  89CB              mov bx,cx
00004004  F77E89            idiv word [bp-0x77]
00004007  7EFE              jng 0x4007
00004009  BEFF89            mov si,0x89ff
0000400C  C6                db 0xc6
0000400D  6C                insb
0000400E  0F77              emms
00004010  C52B              lds bp,[bp+di]
00004012  2E7354            cs jnc 0x4069
00004015  638D3B62          arpl [di+0x623b],cx
00004019  4F                dec di
0000401A  8D71A0            lea si,[bx+di-0x60]
0000401D  EB1A              jmp short 0x4039
0000401F  F61D              neg byte [di]
00004021  34CE              xor al,0xce
00004023  02B8EA24          add bh,[bx+si+0x24ea]
00004027  FB                sti
00004028  F9                stc
00004029  E308              jcxz 0x4033
0000402B  0DAD45            or ax,0x45ad
0000402E  3F                aas
0000402F  52                push dx
00004030  AD                lodsw
00004031  680597            push word 0x9705
00004034  FEC7              inc bh
00004036  0F8FBBFD          jg near 0x3df5
0000403A  6A01              push byte +0x1
0000403C  A7                cmpsw
0000403D  95                xchg ax,bp
0000403E  53                push bx
0000403F  B535              mov ch,0x35
00004041  7307              jnc 0x404a
00004043  056A88            add ax,0x886a
00004046  F77834            idiv word [bx+si+0x34]
00004049  F8                clc
0000404A  02554E            add dl,[di+0x4e]
0000404D  06                push es
0000404E  18A96654          sbb [bx+di+0x5466],ch
00004052  6C                insb
00004053  1913              sbb [bp+di],dx
00004055  4D                dec bp
00004056  1F                pop ds
00004057  55                push bp
00004058  B5D1              mov ch,0xd1
0000405A  1506A5            adc ax,0xa506
0000405D  18FF              sbb bh,bh
0000405F  FF                db 0xff
00004060  FD                std
00004061  051400            add ax,0x14
00004064  8052BBF7          adc byte [bp+si-0x45],0xf7
00004068  0002              add [bp+si],al
0000406A  EAE84DCB71        jmp 0x71cb:0x4de8
0000406F  B96E84            mov cx,0x846e
00004072  60                pusha
00004073  85962305          test [bp+0x523],dx
00004077  FF08              dec word [bx+si]
00004079  0147EB            add [bx-0x15],ax
0000407C  9B1421            wait adc al,0x21
0000407F  51                push cx
00004080  D2C7              rol bh,cl
00004082  69E28BCB          imul sp,dx,word 0xcb8b
00004086  96                xchg ax,si
00004087  5A                pop dx
00004088  72B1              jc 0x403b
0000408A  03E9              add bp,cx
0000408C  67FC              a32 cld
0000408E  BB1DA9            mov bx,0xa91d
00004091  D9AFD256          fldcw [bx+0x56d2]
00004095  E46E              in al,0x6e
00004097  F9                stc
00004098  9C                pushf
00004099  4F                dec di
0000409A  FC                cld
0000409B  F9                stc
0000409C  49                dec cx
0000409D  FC                cld
0000409E  53                push bx
0000409F  4F                dec di
000040A0  2A3A              sub bh,[bp+si]
000040A2  17                pop ss
000040A3  FA                cli
000040A4  18D0              sbb al,dl
000040A6  7CAA              jl 0x4052
000040A8  FA                cli
000040A9  35CA0B            xor ax,0xbca
000040AC  7242              jc 0x40f0
000040AE  E4EC              in al,0xec
000040B0  7E89              jng 0x403b
000040B2  74FE              jz 0x40b2
000040B4  9F                lahf
000040B5  96                xchg ax,si
000040B6  D6                salc
000040B7  818EFADA880B      or word [bp-0x2506],0xb88
000040BD  46                inc si
000040BE  BFE4DE            mov di,0xdee4
000040C1  37                aaa
000040C2  11FC              adc sp,di
000040C4  A1D136            mov ax,[0x36d1]
000040C7  2CCF              sub al,0xcf
000040C9  52                push dx
000040CA  15A024            adc ax,0x24a0
000040CD  E1BC              loope 0x408b
000040CF  0230              add dh,[bx+si]
000040D1  E9BA10            jmp 0x518e
000040D4  E67B              out 0x7b,al
000040D6  23F7              and si,di
000040D8  68247B            push word 0x7b24
000040DB  6AFF              push byte -0x1
000040DD  56                push si
000040DE  14A8              adc al,0xa8
000040E0  A1D9DD            mov ax,[0xddd9]
000040E3  8BF1              mov si,cx
000040E5  EA0ED1E2CE        jmp 0xcee2:0xd10e
000040EA  7D2C              jnl 0x4118
000040EC  F1                int1
000040ED  D256E5            rcl byte [bp-0x1b],cl
000040F0  38D5              cmp ch,dl
000040F2  FB                sti
000040F3  1117              adc [bx],dx
000040F5  C0C9F3            ror cl,byte 0xf3
000040F8  FB                sti
000040F9  3A79FF            cmp bh,[bx+di-0x1]
000040FC  1C0F              sbb al,0xf
000040FE  8D                db 0x8d
000040FF  F1                int1
00004100  02EB              add ch,bl
00004102  B453              mov ah,0x53
00004104  0377BB            add si,[bx-0x45]
00004107  0D63FD            or ax,0xfd63
0000410A  EF                out dx,ax
0000410B  680C14            push word 0x140c
0000410E  49                dec cx
0000410F  7058              jo 0x4169
00004111  0313              add dx,[bp+di]
00004113  B6C7              mov dh,0xc7
00004115  F634              div byte [si]
00004117  32943B44          xor dl,[si+0x443b]
0000411B  FF0A              dec word [bp+si]
0000411D  AB                stosw
0000411E  41                inc cx
0000411F  7BEE              jpo 0x410f
00004121  0B55CF            or dx,[di-0x31]
00004124  E400              in al,0x0
00004126  7F80              jg 0x40a8
00004128  FB                sti
00004129  C3                ret
0000412A  84861A59          test [bp+0x591a],al
0000412E  AD                lodsw
0000412F  261DD537          es sbb ax,0x37d5
00004133  750C              jnz 0x4141
00004135  80EC08            sub ah,0x8
00004138  357556            xor ax,0x5675
0000413B  29B9E0CE          sub [bx+di-0x3120],di
0000413F  DD5451            fst qword [si+0x51]
00004142  73BE              jnc 0x4102
00004144  B39F              mov bl,0x9f
00004146  B072              mov al,0x72
00004148  A0F696            mov al,[0x96f6]
0000414B  842EC658          test [0x58c6],ch
0000414F  3B47EB            cmp ax,[bx-0x15]
00004152  FE                db 0xfe
00004153  137161            adc si,[bx+di+0x61]
00004156  35FB4A            xor ax,0x4afb
00004159  92                xchg ax,dx
0000415A  D87DE8            fdivr dword [di-0x18]
0000415D  76FD              jna 0x415c
0000415F  59                pop cx
00004160  AA                stosb
00004161  A7                cmpsw
00004162  C10802            ror word [bx+si],byte 0x2
00004165  8AFB              mov bh,bl
00004167  90                nop
00004168  6D                insw
00004169  E714              out 0x14,ax
0000416B  93                xchg ax,bx
0000416C  4B                dec bx
0000416D  0570E4            add ax,0xe470
00004170  AD                lodsw
00004171  C21821            ret 0x2118
00004174  805DC847          sbb byte [di-0x38],0x47
00004178  37                aaa
00004179  2BC6              sub ax,si
0000417B  726D              jc 0x41ea
0000417D  104349            adc [bp+di+0x49],al
00004180  7E7E              jng 0x4200
00004182  80F5EB            xor ch,0xeb
00004185  33DD              xor bx,bp
00004187  7777              ja 0x4200
00004189  35830E            xor ax,0xe83
0000418C  CDB2              int 0xb2
0000418E  104BDB            adc [bp+di-0x25],cl
00004191  37                aaa
00004192  18FD              sbb ch,bh
00004194  14E8              adc al,0xe8
00004196  16                push ss
00004197  54                push sp
00004198  EBC0              jmp short 0x415a
0000419A  AC                lodsb
0000419B  2F                das
0000419C  2107              and [bx],ax
0000419E  B20D              mov dl,0xd
000041A0  0D37AD            or ax,0xad37
000041A3  1E                push ds
000041A4  2134              and [si],si
000041A6  3F                aas
000041A7  6A53              push byte +0x53
000041A9  B740              mov bh,0x40
000041AB  A3FA33            mov [0x33fa],ax
000041AE  8F81ADB7          pop word [bx+di-0x4853]
000041B2  8D09              lea cx,[bx+di]
000041B4  8A0E88FA          mov cl,[0xfa88]
000041B8  91                xchg ax,cx
000041B9  9C                pushf
000041BA  80890FD787        or byte [bx+di-0x28f1],0x87
000041BF  7BBD              jpo 0x417e
000041C1  AE                scasb
000041C2  27                daa
000041C3  E85629            call 0x6b1c
000041C6  AB                stosw
000041C7  CE                into
000041C8  0FDDCF            paddusw mm1,mm7
000041CB  7F18              jg 0x41e5
000041CD  45                inc bp
000041CE  F7E9              imul cx
000041D0  56                push si
000041D1  198F2200          sbb [bx+0x22],cx
000041D5  21A285EE          and [bp+si-0x117b],sp
000041D9  6C                insb
000041DA  A7                cmpsw
000041DB  44                inc sp
000041DC  B527              mov ch,0x27
000041DE  57                push di
000041DF  7000              jo 0x41e1
000041E1  F8                clc
000041E2  AC                lodsb
000041E3  3D29AA            cmp ax,0xaa29
000041E6  B603              mov dh,0x3
000041E8  FF5E43            call far [bp+0x43]
000041EB  27                daa
000041EC  80FA8E            cmp dl,0x8e
000041EF  79F6              jns 0x41e7
000041F1  54                push sp
000041F2  37                aaa
000041F3  C47C4E            les di,[si+0x4e]
000041F6  A29833            mov [0x3398],al
000041F9  07                pop es
000041FA  86ABE5B5          xchg [bp+di-0x4a1b],ch
000041FE  24B6              and al,0xb6
00004200  3407              xor al,0x7
00004202  4D                dec bp
00004203  E0A1              loopne 0x41a6
00004205  C45174            les dx,[bx+di+0x74]
00004208  96                xchg ax,si
00004209  FA                cli
0000420A  70ED              jo 0x41f9
0000420C  17                pop ss
0000420D  8D33              lea si,[bp+di]
0000420F  724B              jc 0x425c
00004211  44                inc sp
00004212  2E0B7231          or si,[cs:bp+si+0x31]
00004216  C1                db 0xc1
00004217  7329              jnc 0x4242
00004219  A89F              test al,0x9f
0000421B  56                push si
0000421C  58                pop ax
0000421D  47                inc di
0000421E  82                db 0x82
0000421F  7513              jnz 0x4234
00004221  BA5455            mov dx,0x5554
00004224  11518B            adc [bx+di-0x75],dx
00004227  706A              jo 0x4293
00004229  D482              aam 0x82
0000422B  5B                pop bx
0000422C  3B53B3            cmp dx,[bp+di-0x4d]
0000422F  F4                hlt
00004230  51                push cx
00004231  46                inc si
00004232  25C844            and ax,0x44c8
00004235  B652              mov dh,0x52
00004237  3326B51A          xor sp,[0x1ab5]
0000423B  EA82D53F46        jmp 0x463f:0xd582
00004240  42                inc dx
00004241  8584E07B          test [si+0x7be0],ax
00004245  FE                db 0xfe
00004246  660BC1            or eax,ecx
00004249  44                inc sp
0000424A  9F                lahf
0000424B  BDE8A2            mov bp,0xa2e8
0000424E  0F572C            xorps xmm5,oword [si]
00004251  A6                cmpsb
00004252  0951DD            or [bx+di-0x23],dx
00004255  2B0F              sub cx,[bx]
00004257  86569C            xchg [bp-0x64],dl
0000425A  9E                sahf
0000425B  23F1              and si,cx
0000425D  1E                push ds
0000425E  12A1885D          adc ah,[bx+di+0x5d88]
00004262  C043FFDB          rol byte [bp+di-0x1],byte 0xdb
00004266  B64C              mov dh,0x4c
00004268  FE                db 0xfe
00004269  26D81B            fcomp dword [es:bp+di]
0000426C  CC                int3
0000426D  07                pop es
0000426E  C6                db 0xc6
0000426F  154CDE            adc ax,0xde4c
00004272  645C              fs pop sp
00004274  37                aaa
00004275  83DD54            sbb bp,byte +0x54
00004278  0183A895          add [bp+di-0x6a58],ax
0000427C  D8BE9999          fdivr dword [bp-0x6667]
00004280  9F                lahf
00004281  126FAE            adc ch,[bx-0x52]
00004284  18F8              sbb al,bh
00004286  3B4722            cmp ax,[bx+0x22]
00004289  722B              jc 0x42b6
0000428B  005FEC            add [bx-0x14],bl
0000428E  57                push di
0000428F  207624            and [bp+0x24],dh
00004292  C7                db 0xc7
00004293  BA026C            mov dx,0x6c02
00004296  E8E6FE            call 0x417f
00004299  77F9              ja 0x4294
0000429B  ED                in ax,dx
0000429C  58                pop ax
0000429D  5B                pop bx
0000429E  2236891B          and dh,[0x1b89]
000042A2  DA892531          fimul dword [bx+di+0x3125]
000042A6  18A86094          sbb [bx+si-0x6ba0],ch
000042AA  9B19D6            wait sbb si,dx
000042AD  D014              rcl byte [si],1
000042AF  5D                pop bp
000042B0  49                dec cx
000042B1  E8D10D            call 0x5085
000042B4  08E8              or al,ch
000042B6  53                push bx
000042B7  2CBD              sub al,0xbd
000042B9  E30A              jcxz 0x42c5
000042BB  F9                stc
000042BC  815B6002D2        sbb word [bp+di+0x60],0xd202
000042C1  751B              jnz 0x42de
000042C3  84E8              test al,ch
000042C5  0F20F7            mov edi,cr6
000042C8  EE                out dx,al
000042C9  4D                dec bp
000042CA  6695              xchg eax,ebp
000042CC  FF                db 0xff
000042CD  BB0A08            mov bx,0x80a
000042D0  92                xchg ax,dx
000042D1  08462E            or [bp+0x2e],al
000042D4  228EA6D8          and cl,[bp-0x275a]
000042D8  7528              jnz 0x4302
000042DA  26C21E3E          es ret 0x3e1e
000042DE  6D                insw
000042DF  FF962022          call [bp+0x2220]
000042E3  EC                in al,dx
000042E4  B61D              mov dh,0x1d
000042E6  091D              or [di],bx
000042E8  B109              mov cl,0x9
000042EA  4C                dec sp
000042EB  8800              mov [bx+si],al
000042ED  E850F0            call 0x3340
000042F0  816670EBCA        and word [bp+0x70],0xcaeb
000042F5  59                pop cx
000042F6  4E                dec si
000042F7  7A46              jpe 0x433f
000042F9  EA551BBDAB        jmp 0xabbd:0x1b55
000042FE  7B33              jpo 0x4333
00004300  89B20889          mov [bp+si-0x76f8],si
00004304  8ECB              mov cs,bx
00004306  B73B              mov bh,0x3b
00004308  700F              jo 0x4319
0000430A  83526DB8          adc word [bp+si+0x6d],byte -0x48
0000430E  4A                dec dx
0000430F  2DB21D            sub ax,0x1db2
00004312  AD                lodsw
00004313  47                inc di
00004314  CC                int3
00004315  95                xchg ax,bp
00004316  44                inc sp
00004317  0A9CBAB6          or bl,[si-0x4946]
0000431B  1017              adc [bx],dl
0000431D  7820              js 0x433f
0000431F  72BB              jc 0x42dc
00004321  0B501F            or dx,[bx+si+0x1f]
00004324  087726            or [bx+0x26],dh
00004327  E9A402            jmp 0x45ce
0000432A  15AE00            adc ax,0xae
0000432D  0D8B0E            or ax,0xe8b
00004330  09EC              or sp,bp
00004332  E97962            jmp 0xa5ae
00004335  07                pop es
00004336  C7                db 0xc7
00004337  1F                pop ds
00004338  93                xchg ax,bx
00004339  F60580            test byte [di],0x80
0000433C  46                inc si
0000433D  F9                stc
0000433E  61                popa
0000433F  B4C4              mov ah,0xc4
00004341  7CA0              jl 0x42e3
00004343  55                push bp
00004344  0599D4            add ax,0xd499
00004347  20D0              and al,dl
00004349  6B581C03          imul bx,[bx+si+0x1c],byte +0x3
0000434D  FE44B4            inc byte [si-0x4c]
00004350  895EF0            mov [bp-0x10],bx
00004353  06                push es
00004354  57                push di
00004355  0B5A3D            or bx,[bp+si+0x3d]
00004358  E3F2              jcxz 0x434c
0000435A  BF128B            mov di,0x8b12
0000435D  7EF2              jng 0x4351
0000435F  01C7              add di,ax
00004361  51                push cx
00004362  BB7B11            mov bx,0x117b
00004365  CA8D78            retf 0x788d
00004368  F685DBDD53        test byte [di-0x2225],0x53
0000436D  3C01              cmp al,0x1
0000436F  9F                lahf
00004370  838916ACF0        or word [bx+di-0x53ea],byte -0x10
00004375  0CA3              or al,0xa3
00004377  AE                scasb
00004378  0C04              or al,0x4
0000437A  AC                lodsb
0000437B  2A996D18          sub bl,[bx+di+0x186d]
0000437F  159720            adc ax,0x2097
00004382  222B              and ch,[bp+di]
00004384  6C                insb
00004385  1B1B              sbb bx,[bp+di]
00004387  A1D650            mov ax,[0x50d6]
0000438A  BA7573            mov dx,0x7375
0000438D  06                push es
0000438E  17                pop ss
0000438F  4A                dec dx
00004390  202B              and [bp+di],ch
00004392  82                db 0x82
00004393  4C                dec sp
00004394  0DC94B            or ax,0x4bc9
00004397  6AF7              push byte -0x9
00004399  F376FC            rep jna 0x4398
0000439C  89C1              mov cx,ax
0000439E  E0FF              loopne 0x439f
000043A0  004315            add [bp+di+0x15],al
000043A3  0B4F43            or cx,[bx+0x43]
000043A6  FC                cld
000043A7  2B5EF2            sub bx,[bp-0xe]
000043AA  39CB              cmp bx,cx
000043AC  7306              jnc 0x43b4
000043AE  FD                std
000043AF  A2B65D            mov [0x5db6],al
000043B2  C801E56D          enter 0xe501,0x6d
000043B6  AF                scasw
000043B7  FD                std
000043B8  6D                insw
000043B9  2A01              sub al,[bx+di]
000043BB  B28D              mov dl,0x8d
000043BD  11BA1769          adc [bp+si+0x6917],di
000043C1  CF                iret
000043C2  CD40              int 0x40
000043C4  FD                std
000043C5  365D              ss pop bp
000043C7  8BDE              mov bx,si
000043C9  8001DF            add byte [bx+di],0xdf
000043CC  8B5D11            mov bx,[di+0x11]
000043CF  C2B185            ret 0x85b1
000043D2  EE                out dx,al
000043D3  D6                salc
000043D4  2829              sub [bx+di],ch
000043D6  A10F41            mov ax,[0x410f]
000043D9  F23B6F0F          repne cmp bp,[bx+0xf]
000043DD  753E              jnz 0x441d
000043DF  39EC              cmp sp,bp
000043E1  F8                clc
000043E2  753A              jnz 0x441e
000043E4  D5D1              aad 0xd1
000043E6  A01E35            mov al,[0x351e]
000043E9  A881              test al,0x81
000043EB  55                push bp
000043EC  8B599B            mov bx,[bx+di-0x65]
000043EF  58                pop ax
000043F0  D0                db 0xd0
000043F1  7035              jo 0x4428
000043F3  59                pop cx
000043F4  BCEC9D            mov sp,0x9dec
000043F7  B4A1              mov ah,0xa1
000043F9  2D03B2            sub ax,0xb203
000043FC  0E                push cs
000043FD  13DB              adc bx,bx
000043FF  89AB892E          mov [bp+di+0x2e89],bp
00004403  EB93              jmp short 0x4398
00004405  99                cwd
00004406  70A8              jo 0x43b0
00004408  227041            and dh,[bx+si+0x41]
0000440B  1ABCC745          sbb bh,[si+0x45c7]
0000440F  BE05AA            mov si,0xaa05
00004412  50                push ax
00004413  B9ABB6            mov cx,0xb6ab
00004416  72DA              jc 0x43f2
00004418  25FFF6            and ax,0xf6ff
0000441B  83C2FF            add dx,byte -0x1
0000441E  15FFFF            adc ax,0xffff
00004421  CB                retf
00004422  50                push ax
00004423  52                push dx
00004424  F4                hlt
00004425  7080              jo 0x43a7
00004427  58                pop ax
00004428  21CB              and bx,cx
0000442A  835B0C0B          sbb word [bp+di+0xc],byte +0xb
0000442E  095328            or [bp+di+0x28],dx
00004431  83AE62EA11        sub word [bp-0x159e],byte +0x11
00004436  72B9              jc 0x43f1
00004438  07                pop es
00004439  311D              xor [di],bx
0000443B  32E8              xor ch,al
0000443D  DF7CCD            fistp qword [si-0x33]
00004440  E9C961            jmp 0xa60c
00004443  6BB36577C9        imul si,[bp+di+0x7765],byte -0x37
00004448  7906              jns 0x4450
0000444A  E9C40A            jmp 0x4f11
0000444D  FE                db 0xfe
0000444E  249F              and al,0x9f
00004450  B34E              mov bl,0x4e
00004452  C163CB30          shl word [bp+di-0x35],byte 0x30
00004456  8F                db 0x8f
00004457  EBE9              jmp short 0x4442
00004459  06                push es
0000445A  34F7              xor al,0xf7
0000445C  32FE              xor bh,dh
0000445E  AE                scasb
0000445F  752B              jnz 0x448c
00004461  56                push si
00004462  F0C0FB01          lock sar bl,byte 0x1
00004466  CA5ABF            retf 0xbf5a
00004469  E8EDFE            call 0x4359
0000446C  47                inc di
0000446D  5D                pop bp
0000446E  1B8B9644          sbb cx,[bp+di+0x4496]
00004472  4C                dec sp
00004473  59                pop cx
00004474  44                inc sp
00004475  7F4C              jg 0x44c3
00004477  2F                das
00004478  85C9              test cx,cx
0000447A  7706              ja 0x4482
0000447C  6B2F20            imul bp,[bx],byte +0x20
0000447F  65730C            gs jnc 0x448e
00004482  BF068A            mov di,0x8a06
00004485  F01403            lock adc al,0x3
00004488  46                inc si
00004489  F0                lock
0000448A  8F                db 0x8f
0000448B  EF                out dx,ax
0000448C  150650            adc ax,0x5006
0000448F  6691              xchg eax,ecx
00004491  286CC6            sub [si-0x3a],ch
00004494  10C5              adc ch,al
00004496  182D              sbb [di],ch
00004498  EC                in al,dx
00004499  EB0E              jmp short 0x44a9
0000449B  12DC              adc bl,ah
0000449D  1A28              sbb ch,[bx+si]
0000449F  5C                pop sp
000044A0  DB                db 0xdb
000044A1  FB                sti
000044A2  C4A0DD4C          les sp,[bx+si+0x4cdd]
000044A6  741B              jz 0x44c3
000044A8  8D561A            lea dx,[bp+0x1a]
000044AB  CDE6              int 0xe6
000044AD  9E                sahf
000044AE  55                push bp
000044AF  6C                insb
000044B0  8813              mov [bp+di],dl
000044B2  625314            bound dx,[bp+di+0x14]
000044B5  B674              mov dh,0x74
000044B7  51                push cx
000044B8  7519              jnz 0x44d3
000044BA  5B                pop bx
000044BB  8700              xchg [bx+si],ax
000044BD  4A                dec dx
000044BE  68DB1C            push word 0x1cdb
000044C1  1119              adc [bx+di],bx
000044C3  41                inc cx
000044C4  D1                db 0xd1
000044C5  F4                hlt
000044C6  015296            add [bp+si-0x6a],dx
000044C9  B493              mov ah,0x93
000044CB  739B              jnc 0x4468
000044CD  6963FE9EF2        imul sp,[bp+di-0x2],word 0xf29e
000044D2  DC30              fdiv qword [bx+si]
000044D4  6F                outsw
000044D5  751B              jnz 0x44f2
000044D7  12598C            adc bl,[bx+di-0x74]
000044DA  FD                std
000044DB  96                xchg ax,si
000044DC  0E                push cs
000044DD  0B6D76            or bp,[di+0x76]
000044E0  06                push es
000044E1  59                pop cx
000044E2  42                inc dx
000044E3  8C7F7E            mov [bx+0x7e],segr7
000044E6  13F4              adc si,sp
000044E8  E937FD            jmp 0x4222
000044EB  3BA67805          cmp sp,[bp+0x578]
000044EF  3209              xor cl,[bx+di]
000044F1  46                inc si
000044F2  95                xchg ax,bp
000044F3  B1D0              mov cl,0xd0
000044F5  F025EAA1          lock and ax,0xa1ea
000044F9  48                dec ax
000044FA  C482E3A4          les ax,[bp+si-0x5b1d]
000044FE  FB                sti
000044FF  44                inc sp
00004500  9D                popf
00004501  6D                insw
00004502  29D4              sub sp,dx
00004504  06                push es
00004505  210A              and [bp+si],cx
00004507  98                cbw
00004508  EA061F8D39        jmp 0x398d:0x1f06
0000450D  13E5              adc sp,bp
0000450F  44                inc sp
00004510  1F                pop ds
00004511  DEED              fsubp st5
00004513  21E9              and cx,bp
00004515  97                xchg ax,di
00004516  0024              add [si],ah
00004518  EC                in al,dx
00004519  8610              xchg [bx+si],dl
0000451B  681F1E            push word 0x1e1f
0000451E  52                push dx
0000451F  07                pop es
00004520  3461              xor al,0x61
00004522  54                push sp
00004523  B11F              mov cl,0x1f
00004525  7733              ja 0x455a
00004527  C3                ret
00004528  06                push es
00004529  45                inc bp
0000452A  4A                dec dx
0000452B  47                inc di
0000452C  26CC              es int3
0000452E  89FF              mov di,di
00004530  DFE0              fnstsw ax
00004532  C7                db 0xc7
00004533  21C4              and sp,ax
00004535  6E                outsb
00004536  47                inc di
00004537  C1973B773F        rcl word [bx+0x773b],byte 0x3f
0000453C  865702            xchg [bx+0x2],dl
0000453F  12BB30DC          adc bh,[bp+di-0x23d0]
00004543  17                pop ss
00004544  AF                scasw
00004545  B793              mov bh,0x93
00004547  09C8              or ax,cx
00004549  0A5ACE            or bl,[bp+si-0x32]
0000454C  700D              jo 0x455b
0000454E  24DA              and al,0xda
00004550  D0D2              rcl dl,1
00004552  737F              jnc 0x45d3
00004554  82                db 0x82
00004555  3375EB            xor si,[di-0x15]
00004558  1D83C1            sbb ax,0xc183
0000455B  46                inc si
0000455C  7BD6              jpo 0x4534
0000455E  0083FFB5          add [bp+di-0x4a01],al
00004562  83D7B6            adc di,byte -0x4a
00004565  4C                dec sp
00004566  B029              mov al,0x29
00004568  6AE7              push byte -0x19
0000456A  F28C4A89          repne mov [bp+si-0x77],cs
0000456E  2C05              sub al,0x5
00004570  7377              jnc 0x45e9
00004572  07                pop es
00004573  B410              mov ah,0x10
00004575  776B              ja 0x45e2
00004577  F2E91E81          bnd jmp 0xc699
0000457B  F3B015            rep mov al,0x15
0000457E  2298A5BC          and bl,[bx+si-0x435b]
00004582  AD                lodsw
00004583  EB31              jmp short 0x45b6
00004585  52                push dx
00004586  93                xchg ax,bx
00004587  1E                push ds
00004588  D9F4              fxtract
0000458A  A5                movsw
0000458B  149F              adc al,0x9f
0000458D  07                pop es
0000458E  80D810            sbb al,0x10
00004591  E27F              loop 0x4612
00004593  D19B327D          rcr word [bp+di+0x7d32],1
00004597  8D88F549          lea cx,[bx+si+0x49f5]
0000459B  E9A2F1            jmp 0x3740
0000459E  781B              js 0x45bb
000045A0  98                cbw
000045A1  A81B              test al,0x1b
000045A3  EC                in al,dx
000045A4  F1                int1
000045A5  57                push di
000045A6  328DC247          xor cl,[di+0x47c2]
000045AA  C7                db 0xc7
000045AB  50                push ax
000045AC  59                pop cx
000045AD  23E5              and sp,bp
000045AF  52                push dx
000045B0  046C              add al,0x6c
000045B2  10C8              adc al,cl
000045B4  118CC644          adc [si+0x44c6],cx
000045B8  49                dec cx
000045B9  CF                iret
000045BA  BA26A0            mov dx,0xa026
000045BD  7B35              jpo 0x45f4
000045BF  19AD10F2          sbb [di-0xdf0],bp
000045C3  46                inc si
000045C4  F33F              rep aas
000045C6  74DF              jz 0x45a7
000045C8  80670FA1          and byte [bx+0xf],0xa1
000045CC  1866AA            sbb [bp-0x56],ah
000045CF  0851F5            or [bx+di-0xb],dl
000045D2  17                pop ss
000045D3  94                xchg ax,sp
000045D4  813E60F209C3      cmp word [0xf260],0xc309
000045DA  EB0E              jmp short 0x45ea
000045DC  CA1D57            retf 0x571d
000045DF  EC                in al,dx
000045E0  DB0A              fisttp dword [bp+si]
000045E2  03B9435B          add di,[bx+di+0x5b43]
000045E6  A1C944            mov ax,[0x44c9]
000045E9  60                pusha
000045EA  39C1              cmp cx,ax
000045EC  661BA32314        sbb esp,[bp+di+0x1423]
000045F1  0CE2              or al,0xe2
000045F3  EB07              jmp short 0x45fc
000045F5  27                daa
000045F6  055F0E            add ax,0xe5f
000045F9  350394            xor ax,0x9403
000045FC  AE                scasb
000045FD  83BA0B9529        cmp word [bp+si-0x6af5],byte +0x29
00004602  EB0F              jmp short 0x4613
00004604  2B0D              sub cx,[di]
00004606  190D              sbb [di],cx
00004608  A6                cmpsb
00004609  2D942F            sub ax,0x2f94
0000460C  52                push dx
0000460D  F01C30            lock sbb al,0x30
00004610  C006B1F88D        rol byte [0xf8b1],byte 0x8d
00004615  4E                dec si
00004616  D01E51BB          rcr byte [0xbb51],1
0000461A  9D                popf
0000461B  29E8              sub ax,bp
0000461D  C0A5C28A1A        shl byte [di-0x753e],byte 0x1a
00004622  218C7FD2          and [si-0x2d81],cx
00004626  8A4EFA            mov cl,[bp-0x6]
00004629  D3F8              sar ax,cl
0000462B  03B5767E          add si,[di+0x7e76]
0000462F  05FF12            add ax,0x12ff
00004632  FD                std
00004633  EBED              jmp short 0x4622
00004635  65884C1D          mov [gs:si+0x1d],cl
00004639  01DA              add dx,bx
0000463B  6E                outsb
0000463C  06                push es
0000463D  44                inc sp
0000463E  17                pop ss
0000463F  16                push ss
00004640  53                push bx
00004641  D0AB7541          shr byte [bp+di+0x4175],1
00004645  4B                dec bx
00004646  24D2              and al,0xd2
00004648  6BD40F            imul dx,sp,byte +0xf
0000464B  A5                movsw
0000464C  049A              add al,0x9a
0000464E  D3065BD5          rol word [0xd55b],cl
00004652  0DA508            or ax,0x8a5
00004655  98                cbw
00004656  D6                salc
00004657  04B0              add al,0xb0
00004659  69D850FA          imul bx,ax,word 0xfa50
0000465D  245E              and al,0x5e
0000465F  E55D              in ax,0x5d
00004661  4A                dec dx
00004662  E7EB              out 0xeb,ax
00004664  7225              jc 0x468b
00004666  05DFA1            add ax,0xa1df
00004669  5E                pop si
0000466A  4F                dec di
0000466B  DB1F              fistp dword [bx]
0000466D  DB                db 0xdb
0000466E  3215              xor dl,[di]
00004670  8BBA6354          mov di,[bp+si+0x5463]
00004674  0865D0            or [di-0x30],ah
00004677  5B                pop bx
00004678  D206BC01          rol byte [0x1bc],cl
0000467C  4F                dec di
0000467D  288D3B6C          sub [di+0x6c3b],cl
00004681  C1EFBB            shr di,byte 0xbb
00004684  051009            add ax,0x910
00004687  01D7              add di,dx
00004689  F8                clc
0000468A  48                dec ax
0000468B  6B52F736          imul dx,[bp+si-0x9],byte +0x36
0000468F  BA1D11            mov dx,0x111d
00004692  46                inc si
00004693  0BDA              or bx,dx
00004695  0F293B            movaps oword [bp+di],xmm7
00004698  A5                movsw
00004699  19D1              sbb cx,dx
0000469B  54                push sp
0000469C  AD                lodsw
0000469D  D19806B6          rcr word [bx+si-0x49fa],1
000046A1  1D40D0            sbb ax,0xd040
000046A4  190D              sbb [di],cx
000046A6  020C              add cl,[si]
000046A8  F702D1EB          test word [bp+si],0xebd1
000046AC  29450F            sub [di+0xf],ax
000046AF  3EBF34AF          ds mov di,0xaf34
000046B3  2612F7            es adc dh,bh
000046B6  772F              ja 0x46e7
000046B8  742D              jz 0x46e7
000046BA  3D7E81            cmp ax,0x817e
000046BD  7C0D              jl 0x46cc
000046BF  F5                cmc
000046C0  0F760D            pcmpeqd mm1,[di]
000046C3  52                push dx
000046C4  7704              ja 0x46ca
000046C6  1E                push ds
000046C7  EB11              jmp short 0x46da
000046C9  FA                cli
000046CA  3D0040            cmp ax,0x4000
000046CD  7317              jnc 0x46e6
000046CF  36B302            ss mov bl,0x2
000046D2  2A592D            sub bl,[bx+di+0x2d]
000046D5  035C1F            add bx,[si+0x1f]
000046D8  37                aaa
000046D9  E00D              loopne 0x46e8
000046DB  77DA              ja 0x46b7
000046DD  054A44            add ax,0x444a
000046E0  D00654BC          rol byte [0xbc54],1
000046E4  7E18              jng 0x46fe
000046E6  006600            add [bp+0x0],ah
000046E9  B0DF              mov al,0xdf
000046EB  1DE24D            sbb ax,0x4de2
000046EE  255C15            and ax,0x155c
000046F1  BBFAC0            mov bx,0xc0fa
000046F4  00AB98C4          add [bp+di-0x3b68],ch
000046F8  E946E9            jmp 0x3041
000046FB  2B77EB            sub si,[bx-0x15]
000046FE  EB38              jmp short 0x4738
00004700  3A6F31            cmp ch,[bx+0x31]
00004703  EB2E              jmp short 0x4733
00004705  3329              xor bp,[bx+di]
00004707  E139              loope 0x4742
00004709  68DE08            push word 0x8de
0000470C  35D7C3            xor ax,0xc3d7
0000470F  00824743          add [bp+si+0x4347],al
00004713  46                inc si
00004714  6A6C              push byte +0x6c
00004716  8BC2              mov ax,dx
00004718  9B3A859A85        wait cmp al,[di-0x7a66]
0000471D  ED                in ax,dx
0000471E  EB2C              jmp short 0x474c
00004720  230666F5          and ax,[0xf566]
00004724  96                xchg ax,si
00004725  25F76B            and ax,0x6bf7
00004728  27                daa
00004729  2CAD              sub al,0xad
0000472B  0933              or [bp+di],si
0000472D  7505              jnz 0x4734
0000472F  11AE300B          adc [bp+0xb30],bp
00004733  98                cbw
00004734  0D06F5            or ax,0xf506
00004737  DA08              fimul dword [bx+si]
00004739  57                push di
0000473A  0059D0            add [bx+di-0x30],bl
0000473D  316233            xor [bp+si+0x33],sp
00004740  D8B1AE01          fdiv dword [bx+di+0x1ae]
00004744  D7                xlatb
00004745  90                nop
00004746  6D                insw
00004747  08C1              or cl,al
00004749  BC2F4C            mov sp,0x4c2f
0000474C  2911              sub [bx+di],dx
0000474E  3658              ss pop ax
00004750  5C                pop sp
00004751  2B00              sub ax,[bx+si]
00004753  E5B6              in ax,0xb6
00004755  B430              mov ah,0x30
00004757  29DB              sub bx,bx
00004759  C6                db 0xc6
0000475A  19DA              sbb dx,bx
0000475C  FC                cld
0000475D  014ADA            add [bp+si-0x26],cx
00004760  0A6E75            or ch,[bp+0x75]
00004763  2D83D2            sub ax,0xd283
00004766  EA06546BDB        jmp 0xdb6b:0x5406
0000476B  F1                int1
0000476C  0DAD35            or ax,0x35ad
0000476F  06                push es
00004770  9AF337C68D        call 0x8dc6:0x37f3
00004775  2208              and cl,[bx+si]
00004777  CF                iret
00004778  44                inc sp
00004779  E981A8            jmp 0xeffd
0000477C  ED                in ax,dx
0000477D  90                nop
0000477E  4C                dec sp
0000477F  E888FF            call 0x470a
00004782  0D89CF            or ax,0xcf89
00004785  C606A87C96        mov byte [0x7ca8],0x96
0000478A  38C7              cmp bh,al
0000478C  A27837            mov [0x3778],al
0000478F  7DAB              jnl 0x473c
00004791  4E                dec si
00004792  BAA27E            mov dx,0x7ea2
00004795  0383FBEA          add ax,[bp+di-0x1505]
00004799  89ADB9EA          mov [di-0x1547],bp
0000479D  A37F03            mov [0x37f],ax
000047A0  25FF5B            and ax,0x5bff
000047A3  840A              test [bp+si],cl
000047A5  85C7              test di,ax
000047A7  D38003A5          rol word [bx+si-0x5afd],cl
000047AB  64D51E            fs aad 0x1e
000047AE  8C6B8D            mov [bp+di-0x73],gs
000047B1  2F                das
000047B2  5A                pop dx
000047B3  2EA0C76C          mov al,[cs:0x6cc7]
000047B7  79C1              jns 0x477a
000047B9  FFA08003          jmp [bx+si+0x380]
000047BD  A880              test al,0x80
000047BF  7504              jnz 0x47c5
000047C1  A85B              test al,0x5b
000047C3  772C              ja 0x47f1
000047C5  0206B016          add al,[0x16b0]
000047C9  54                push sp
000047CA  1E                push ds
000047CB  60                pusha
000047CC  DE24              fisub word [si]
000047CE  E830D4            call 0x1c01
000047D1  A04694            mov al,[0x9446]
000047D4  9D                popf
000047D5  46                inc si
000047D6  DF29              fild qword [bx+di]
000047D8  4D                dec bp
000047D9  BCEBD9            mov sp,0xd9eb
000047DC  B8F140            mov ax,0x40f1
000047DF  82                db 0x82
000047E0  C0D88C            rcr al,byte 0x8c
000047E3  F2F4              repne hlt
000047E5  7E19              jng 0x4800
000047E7  CC                int3
000047E8  A92039            test ax,0x3920
000047EB  F1                int1
000047EC  7080              jo 0x476e
000047EE  F1                int1
000047EF  3523F9            xor ax,0xf923
000047F2  53                push bx
000047F3  C8445337          enter 0x5344,0x37
000047F7  8D8C70F1          lea cx,[si-0xe90]
000047FB  729D              jc 0x479a
000047FD  A1446D            mov ax,[0x6d44]
00004800  1803              sbb [bp+di],al
00004802  7284              jc 0x4788
00004804  154D40            adc ax,0x404d
00004807  D42F              aam 0x2f
00004809  4D                dec bp
0000480A  7831              js 0x483d
0000480C  218AE995          and [bp+si-0x6a17],cx
00004810  8F                db 0x8f
00004811  EF                out dx,ax
00004812  3E21750C          and [ds:di+0xc],si
00004816  640B0EDA74        or cx,[fs:0x74da]
0000481B  3A02              cmp al,[bp+si]
0000481D  B218              mov dl,0x18
0000481F  3F                aas
00004820  35F1C4            xor ax,0xc4f1
00004823  368EA3034B        mov fs,[ss:bp+di+0x4b03]
00004828  AD                lodsw
00004829  0B32              or si,[bp+si]
0000482B  EB06              jmp short 0x4833
0000482D  8CD8              mov ax,ds
0000482F  386875            cmp [bx+si+0x75],ch
00004832  AC                lodsb
00004833  FC                cld
00004834  1F                pop ds
00004835  50                push ax
00004836  57                push di
00004837  53                push bx
00004838  A16819            mov ax,[0x1968]
0000483B  16                push ss
0000483C  CE                into
0000483D  90                nop
0000483E  DCA6FBFC          fsub qword [bp-0x305]
00004842  4D                dec bp
00004843  DC0B              fmul qword [bp+di]
00004845  A8F1              test al,0xf1
00004847  B89C11            mov ax,0x119c
0000484A  BA897B            mov dx,0x7b89
0000484D  D5FE              aad 0xfe
0000484F  BC880E            mov sp,0xe88
00004852  15394C            adc ax,0x4c39
00004855  1B52A3            sbb dx,[bp+si-0x5d]
00004858  88DC              mov ah,bl
0000485A  2623D2            es and dx,dx
0000485D  04A2              add al,0xa2
0000485F  92                xchg ax,dx
00004860  A6                cmpsb
00004861  D05B39            rcr byte [bp+di+0x39],1
00004864  044A              add al,0x4a
00004866  1B20              sbb sp,[bx+si]
00004868  D4CA              aam 0xca
0000486A  DE1E0BE8          ficomp word [0xe80b]
0000486E  86BFBFE0          xchg [bx-0x1f41],bh
00004872  A3F6BB            mov [0xbbf6],ax
00004875  0C06              or al,0x6
00004877  0FA39CF877        bt [si+0x77f8],bx
0000487C  B657              mov dh,0x57
0000487E  13A3A5FC          adc sp,[bp+di-0x35b]
00004882  D3DF              rcr di,cl
00004884  16                push ss
00004885  FE0E0735          dec byte [0x3507]
00004889  09061C62          or [0x621c],ax
0000488D  118CDD43          adc [si+0x43dd],cx
00004891  EB4C              jmp short 0x48df
00004893  1F                pop ds
00004894  DFA2045A          fbld tword [bp+si+0x5a04]
00004898  1B771D            sbb si,[bx+0x1d]
0000489B  1DA300            sbb ax,0xa3
0000489E  3502F3            xor ax,0xf302
000048A1  0E                push cs
000048A2  157317            adc ax,0x1773
000048A5  A3094F            mov [0x4f09],ax
000048A8  0B35              or si,[di]
000048AA  37                aaa
000048AB  37                aaa
000048AC  A31134            mov [0x3411],ax
000048AF  13DB              adc bx,bx
000048B1  57                push di
000048B2  0B12              or dx,[bp+si]
000048B4  BB19A3            mov bx,0xa319
000048B7  0D0EB0            or ax,0xb00e
000048BA  0F                db 0x0f
000048BB  0D1ADC            or ax,0xdc1a
000048BE  A870              test al,0x70
000048C0  141E              adc al,0x1e
000048C2  B581              mov ch,0x81
000048C4  47                inc di
000048C5  96                xchg ax,si
000048C6  DFF1              fcomip st1
000048C8  E8C6D4            call 0x1d91
000048CB  07                pop es
000048CC  D8628B            fsub dword [bp+si-0x75]
000048CF  07                pop es
000048D0  06                push es
000048D1  7A41              jpe 0x4914
000048D3  A96089            test ax,0x8960
000048D6  F7                db 0xf7
000048D7  8D44A7            lea ax,[si-0x59]
000048DA  23B79AB1          and si,[bx-0x4e66]
000048DE  ED                in ax,dx
000048DF  AC                lodsb
000048E0  D9BE023B          fnstcw [bp+0x3b02]
000048E4  A7                cmpsw
000048E5  2044A9            and [si-0x57],al
000048E8  6571D1            gs jno 0x48bc
000048EB  224C9C            and cl,[si-0x64]
000048EE  69752F1318        imul si,[di+0x2f],word 0x1813
000048F3  A93B85            test ax,0x853b
000048F6  EA10A62BB6        jmp 0xb62b:0xa610
000048FB  2D4228            sub ax,0x2842
000048FE  6A1F              push byte +0x1f
00004900  24E4              and al,0xe4
00004902  5D                pop bp
00004903  251B34            and ax,0x341b
00004906  1D9B0D            sbb ax,0xd9b
00004909  A6                cmpsb
0000490A  07                pop es
0000490B  A1095D            mov ax,[0x5d09]
0000490E  37                aaa
0000490F  095D15            or [di+0x15],bx
00004912  1117              adc [bx],dx
00004914  73B0              jnc 0x48c6
00004916  AF                scasw
00004917  8774BA            xchg [si-0x46],si
0000491A  1137              adc [bx],si
0000491C  DB0D              fisttp dword [di]
0000491E  310A              xor [bp+si],cx
00004920  AA                stosb
00004921  1995EB38          sbb [di+0x38eb],dx
00004925  AD                lodsw
00004926  6D                insw
00004927  E7AF              out 0xaf,ax
00004929  EF                out dx,ax
0000492A  18AFD710          sbb [bx+0x10d7],ch
0000492E  6481E91BFC        fs sub cx,0xfc1b
00004933  3B847508          cmp ax,[si+0x875]
00004937  7FA1              jg 0x48da
00004939  52                push dx
0000493A  16                push ss
0000493B  56                push si
0000493C  66D6              o32 salc
0000493E  F6                db 0xf6
0000493F  C8C40B2C          enter 0xbc4,0x2c
00004943  ED                in ax,dx
00004944  1470              adc al,0x70
00004946  DD                db 0xdd
00004947  AB                stosw
00004948  7257              jc 0x49a1
0000494A  9D                popf
0000494B  37                aaa
0000494C  08FE              or dh,bh
0000494E  153896            adc ax,0x9638
00004951  C80AA484          enter 0xa40a,0x84
00004955  D281E298          rol byte [bx+di-0x671e],cl
00004959  0091AAD4          add [bx+di-0x2b56],dl
0000495D  04F5              add al,0xf5
0000495F  FB                sti
00004960  048F              add al,0x8f
00004962  007281            add [bp+si-0x7f],dh
00004965  03CE              add cx,si
00004967  6547              gs inc di
00004969  37                aaa
0000496A  1305              adc ax,[di]
0000496C  005075            add [bx+si+0x75],dl
0000496F  2F                das
00004970  AB                stosw
00004971  E83E05            call 0x4eb2
00004974  053054            add ax,0x5430
00004977  94                xchg ax,sp
00004978  B212              mov dl,0x12
0000497A  A208B7            mov [0xb708],al
0000497D  6F                outsw
0000497E  4F                dec di
0000497F  225B67            and bl,[bp+di+0x67]
00004982  F06E              lock outsb
00004984  052009            add ax,0x920
00004987  50                push ax
00004988  6C                insb
00004989  156608            adc ax,0x866
0000498C  1222              adc ah,[bp+si]
0000498E  B8BC2B            mov ax,0x2bbc
00004991  1931              sbb [bx+di],si
00004993  1DB0E9            sbb ax,0xe9b0
00004996  7529              jnz 0x49c1
00004998  C06A1092          shr byte [bp+si+0x10],byte 0x92
0000499C  C6                db 0xc6
0000499D  E030              loopne 0x49cf
0000499F  6B6FB80C          imul bp,[bx-0x48],byte +0xc
000049A3  41                inc cx
000049A4  16                push ss
000049A5  05B055            add ax,0x55b0
000049A8  F5                cmc
000049A9  EF                out dx,ax
000049AA  0135              add [di],si
000049AC  C21ED2            ret 0xd21e
000049AF  0E                push cs
000049B0  F23ACF            repne cmp cl,bh
000049B3  EF                out dx,ax
000049B4  90                nop
000049B5  90                nop
000049B6  F4                hlt
000049B7  4C                dec sp
000049B8  C47B6D            les di,[bp+di+0x6d]
000049BB  BF811E            mov di,0x1e81
000049BE  4F                dec di
000049BF  CDB7              int 0xb7
000049C1  C0                db 0xc0
000049C2  B4A5              mov ah,0xa5
000049C4  62                db 0x62
000049C5  E0E9              loopne 0x49b0
000049C7  BAEE0F            mov dx,0xfee
000049CA  044F              add al,0x4f
000049CC  60                pusha
000049CD  B8AB2E            mov ax,0x2eab
000049D0  16                push ss
000049D1  77FF              ja 0x49d2
000049D3  47                inc di
000049D4  BA6AFA            mov dx,0xfa6a
000049D7  47                inc di
000049D8  053657            add ax,0x5736
000049DB  AD                lodsw
000049DC  005BBE            add [bp+di-0x42],bl
000049DF  AE                scasb
000049E0  0A0C              or cl,[si]
000049E2  4B                dec bx
000049E3  41                inc cx
000049E4  A3A247            mov [0x47a2],ax
000049E7  1B50D5            sbb dx,[bx+si-0x2b]
000049EA  46                inc si
000049EB  059A89            add ax,0x899a
000049EE  41                inc cx
000049EF  9C                pushf
000049F0  0F                db 0x0f
000049F1  CF                iret
000049F2  6A55              push byte +0x55
000049F4  7503              jnz 0x49f9
000049F6  0CBF              or al,0xbf
000049F8  4D                dec bp
000049F9  0E                push cs
000049FA  8B5610            mov dx,[bp+0x10]
000049FD  E8CD0E            call 0x58cd
00004A00  C3                ret
00004A01  C7                db 0xc7
00004A02  51                push cx
00004A03  24E3              and al,0xe3
00004A05  D436              aam 0x36
00004A07  25F2A8            and ax,0xa8f2
00004A0A  55                push bp
00004A0B  16                push ss
00004A0C  52                push dx
00004A0D  B5E1              mov ch,0xe1
00004A0F  8C6FF8            mov [bx-0x8],gs
00004A12  7F8A              jg 0x499e
00004A14  4C                dec sp
00004A15  0826884F          or [0x4f88],ah
00004A19  AE                scasb
00004A1A  0A38              or bh,[bx+si]
00004A1C  0134              add [si],si
00004A1E  860B              xchg [bp+di],cl
00004A20  15A112            adc ax,0x12a1
00004A23  F66BF6            imul byte [bp+di-0xa]
00004A26  7A69              jpe 0x4a91
00004A28  8094BAC647        adc byte [si-0x3946],0x47
00004A2D  0A8A514D          or cl,[bp+si+0x4d51]
00004A31  52                push dx
00004A32  9B3BB84392        wait cmp di,[bx+si-0x6dbd]
00004A37  6A5E              push byte +0x5e
00004A39  0DFF5C            or ax,0x5cff
00004A3C  47                inc di
00004A3D  284B48            sub [bp+di+0x48],cl
00004A40  195089            sbb [bx+si-0x77],dx
00004A43  B91825            mov cx,0x2518
00004A46  7B09              jpo 0x4a51
00004A48  6B8010374A        imul ax,[bx+si+0x3710],byte +0x4a
00004A4D  E891C2            call 0xce1
00004A50  50                push ax
00004A51  7AF6              jpe 0x4a49
00004A53  866095            xchg [bx+si-0x6b],ah
00004A56  264B              es dec bx
00004A58  1F                pop ds
00004A59  C6                db 0xc6
00004A5A  D5F8              aad 0xf8
00004A5C  016E1F            add [bp+0x1f],bp
00004A5F  0426              add al,0x26
00004A61  06                push es
00004A62  B151              mov cl,0x51
00004A64  6C                insb
00004A65  5B                pop bx
00004A66  2F                das
00004A67  9F                lahf
00004A68  2D7205            sub ax,0x572
00004A6B  50                push ax
00004A6C  387796            cmp [bx-0x6a],dh
00004A6F  4C                dec sp
00004A70  57                push di
00004A71  6D                insw
00004A72  47                inc di
00004A73  21D3              and bx,dx
00004A75  2208              and cl,[bx+si]
00004A77  27                daa
00004A78  D905              fld dword [di]
00004A7A  5A                pop dx
00004A7B  68AA56            push word 0x56aa
00004A7E  90                nop
00004A7F  2B0C              sub cx,[si]
00004A81  0AF8              or bh,al
00004A83  7604              jna 0x4a89
00004A85  7779              ja 0x4b00
00004A87  2A4139            sub al,[bx+di+0x39]
00004A8A  337D85            xor di,[di-0x7b]
00004A8D  54                push sp
00004A8E  647EB0            fs jng 0x4a41
00004A91  83396E            cmp word [bx+di],byte +0x6e
00004A94  260D7007          es or ax,0x770
00004A98  0B5FE2            or bx,[bx-0x1e]
00004A9B  87D1              xchg cx,dx
00004A9D  2032              and [bp+si],dh
00004A9F  4C                dec sp
00004AA0  1D21D1            sbb ax,0xd121
00004AA3  ED                in ax,dx
00004AA4  3B2EB675          cmp bp,[0x75b6]
00004AA8  14E6              adc al,0xe6
00004AAA  13782E            adc di,[bx+si+0x2e]
00004AAD  13AD3B54          adc bp,[di+0x543b]
00004AB1  10C1              adc cl,al
00004AB3  7CA6              jl 0x4a5b
00004AB5  7564              jnz 0x4b1b
00004AB7  806CE340          sub byte [si-0x1d],0x40
00004ABB  5E                pop si
00004ABC  58                pop ax
00004ABD  2E7768            cs ja 0x4b28
00004AC0  99                cwd
00004AC1  29805B03          sub [bx+si+0x35b],ax
00004AC5  4C                dec sp
00004AC6  6C                insb
00004AC7  1A8BA219          sbb cl,[bp+di+0x19a2]
00004ACB  A5                movsw
00004ACC  CD0B              int 0xb
00004ACE  30948930          xor [si+0x3089],dl
00004AD2  0C83              or al,0x83
00004AD4  E542              in ax,0x42
00004AD6  860C              xchg [si],cl
00004AD8  0E                push cs
00004AD9  9A819C500A        call 0xa50:0x9c81
00004ADE  FD                std
00004ADF  38AE14A0          cmp [bp-0x5fec],ch
00004AE3  6E                outsb
00004AE4  A6                cmpsb
00004AE5  DB00              fild dword [bx+si]
00004AE7  221EE80C          and bl,[0xce8]
00004AEB  2D3A68            sub ax,0x683a
00004AEE  2F                das
00004AEF  8AE1              mov ah,cl
00004AF1  5C                pop sp
00004AF2  5D                pop bp
00004AF3  CA01A1            retf 0xa101
00004AF6  7623              jna 0x4b1b
00004AF8  5B                pop bx
00004AF9  227242            and dh,[bp+si+0x42]
00004AFC  C4                db 0xc4
00004AFD  FC                cld
00004AFE  1539D7            adc ax,0xd739
00004B01  7611              jna 0x4b14
00004B03  10FC              adc ah,bh
00004B05  CAB84B            retf 0x4bb8
00004B08  1405              adc al,0x5
00004B0A  68F522            push word 0x22f5
00004B0D  6D                insw
00004B0E  D29A020B          rcr byte [bp+si+0xb02],cl
00004B12  A1141A            mov ax,[0x1a14]
00004B15  53                push bx
00004B16  2309              and cx,[bx+di]
00004B18  60                pusha
00004B19  1DE84F            sbb ax,0x4fe8
00004B1C  F735              div word [di]
00004B1E  7ABA              jpe 0x4ada
00004B20  2A14              sub dl,[si]
00004B22  729F              jc 0x4ac3
00004B24  EC                in al,dx
00004B25  56                push si
00004B26  12ED              adc ch,ch
00004B28  730B              jnc 0x4b35
00004B2A  8B04              mov ax,[si]
00004B2C  682C17            push word 0x172c
00004B2F  305514            xor [di+0x14],dl
00004B32  DCEB              fsub to st3
00004B34  D150AF            rcl word [bx+si-0x51],1
00004B37  2F                das
00004B38  7606              jna 0x4b40
00004B3A  0D480E            or ax,0xe48
00004B3D  A9FA73            test ax,0x73fa
00004B40  0D6BFF            or ax,0xff6b
00004B43  032B              add bp,[bp+di]
00004B45  3F                aas
00004B46  C40B              les cx,[bp+di]
00004B48  EAEB880D15        jmp 0x150d:0x88eb
00004B4D  93                xchg ax,bx
00004B4E  9D                popf
00004B4F  7C03              jl 0x4b54
00004B51  C109BC            ror word [bx+di],byte 0xbc
00004B54  1527E0            adc ax,0xe027
00004B57  6380A835          arpl [bx+si+0x35a8],ax
00004B5B  03800FE3          add ax,[bx+si-0x1cf1]
00004B5F  53                push bx
00004B60  A828              test al,0x28
00004B62  113A              adc [bp+si],di
00004B64  4E                dec si
00004B65  9B7BC7            wait jpo 0x4b2f
00004B68  11730A            adc [bp+di+0xa],si
00004B6B  36181ECE0A        sbb [ss:0xace],bl
00004B70  17                pop ss
00004B71  ED                in ax,dx
00004B72  1823              sbb [bp+di],ah
00004B74  25A00F            and ax,0xfa0
00004B77  C9                leave
00004B78  68D80D            push word 0xdd8
00004B7B  A824              test al,0x24
00004B7D  A147A0            mov ax,[0xa047]
00004B80  57                push di
00004B81  C7                db 0xc7
00004B82  2C78              sub al,0x78
00004B84  FD                std
00004B85  48                dec ax
00004B86  45                inc bp
00004B87  D1                db 0xd1
00004B88  F687C13CBB        test byte [bx+0x3cc1],0xbb
00004B8D  FF2A              jmp far [bp+si]
00004B8F  0D4BDA            or ax,0xda4b
00004B92  81FB91AD          cmp bx,0xad91
00004B96  B4B7              mov ah,0xb7
00004B98  ED                in ax,dx
00004B99  8B6EFA            mov bp,[bp-0x6]
00004B9C  05A0C1            add ax,0xc1a0
00004B9F  B4E8              mov ah,0xe8
00004BA1  45                inc bp
00004BA2  D6                salc
00004BA3  B0C3              mov al,0xc3
00004BA5  7AC2              jpe 0x4b69
00004BA7  F4                hlt
00004BA8  95                xchg ax,bp
00004BA9  DF43B8            fild word [bp+di-0x48]
00004BAC  48                dec ax
00004BAD  43                inc bx
00004BAE  8EE1              mov fs,cx
00004BB0  2F                das
00004BB1  47                inc di
00004BB2  B059              mov al,0x59
00004BB4  45                inc bp
00004BB5  CB                retf
00004BB6  32C7              xor al,bh
00004BB8  52                push dx
00004BB9  07                pop es
00004BBA  07                pop es
00004BBB  F647F535          test byte [bx-0xb],0x35
00004BBF  36A80B            ss test al,0xb
00004BC2  0E                push cs
00004BC3  AD                lodsw
00004BC4  058DEB            add ax,0xeb8d
00004BC7  60                pusha
00004BC8  56                push si
00004BC9  8D                db 0x8d
00004BCA  D426              aam 0x26
00004BCC  7F00              jg 0x4bce
00004BCE  088E66AB          or [bp-0x549a],cl
00004BD2  F8                clc
00004BD3  0E                push cs
00004BD4  AD                lodsw
00004BD5  640CA5            fs or al,0xa5
00004BD8  156A02            adc ax,0x26a
00004BDB  84C6              test dh,al
00004BDD  F6F2              div dl
00004BDF  B622              mov dh,0x22
00004BE1  0328              add bp,[bx+si]
00004BE3  DE6780            fisub word [bx-0x80]
00004BE6  E40F              in al,0xf
00004BE8  F02EB8D63D        cs lock mov ax,0x3dd6
00004BED  F8                clc
00004BEE  58                pop ax
00004BEF  3C09              cmp al,0x9
00004BF1  25971B            and ax,0x1b97
00004BF4  5E                pop si
00004BF5  0FFBE9            psubq mm5,mm1
00004BF8  4F                dec di
00004BF9  013D              add [di],di
00004BFB  F7                db 0xf7
00004BFC  887E85            mov [bp-0x7b],bh
00004BFF  46                inc si
00004C00  01B8F70D          add [bx+si+0xdf7],di
00004C04  49                dec cx
00004C05  E2EE              loop 0x4bf5
00004C07  30D2              xor dl,dl
00004C09  3AABB2AD          cmp ch,[bp+di-0x524e]
00004C0D  C06E2781          shr byte [bp+0x27],byte 0x81
00004C11  E7D6              out 0xd6,ax
00004C13  1D3A34            sbb ax,0x343a
00004C16  0B2F              or bp,[bx]
00004C18  16                push ss
00004C19  30EC              xor ah,ch
00004C1B  24F4              and al,0xf4
00004C1D  0FC1E7            xadd di,sp
00004C20  042B              add al,0x2b
00004C22  F5                cmc
00004C23  0AA2C8A5          or ah,[bp+si-0x5a38]
00004C27  CAD809            retf 0x9d8
00004C2A  F8                clc
00004C2B  623B              bound di,[bp+di]
00004C2D  8805              mov [di],al
00004C2F  57                push di
00004C30  53                push bx
00004C31  236007            and sp,[bx+si+0x7]
00004C34  8EA3A7AC          mov fs,[bp+di-0x5359]
00004C38  F2864146          xacquire xchg [bx+di+0x46],al
00004C3C  61                popa
00004C3D  AD                lodsw
00004C3E  7E83              jng 0x4bc3
00004C40  1220              adc ah,[bx+si]
00004C42  7684              jna 0x4bc8
00004C44  D2A5D5EE          shl byte [di-0x112b],cl
00004C48  4A                dec dx
00004C49  55                push bp
00004C4A  EE                out dx,al
00004C4B  07                pop es
00004C4C  85A9001F          test [bx+di+0x1f00],bp
00004C50  B7AE              mov bh,0xae
00004C52  0016370C          add [0xc37],dl
00004C56  3C33              cmp al,0x33
00004C58  41                inc cx
00004C59  07                pop es
00004C5A  7777              ja 0x4cd3
00004C5C  35F2DA            xor ax,0xdaf2
00004C5F  DBD3              fcmovnbe st3
00004C61  887BA5            mov [bp+di-0x5b],bh
00004C64  149A              adc al,0x9a
00004C66  1911              sbb [bx+di],dx
00004C68  5B                pop bx
00004C69  93                xchg ax,bx
00004C6A  83CA63            or dx,byte +0x63
00004C6D  FF03              inc word [bp+di]
00004C6F  AB                stosw
00004C70  755F              jnz 0x4cd1
00004C72  FFB0EB00          push word [bx+si+0xeb]
00004C76  C0CFAD            ror bh,byte 0xad
00004C79  8AB11498          mov dh,[bx+di-0x67ec]
00004C7D  97                xchg ax,di
00004C7E  99                cwd
00004C7F  EB95              jmp short 0x4c16
00004C81  097DC4            or [di-0x3c],di
00004C84  4F                dec di
00004C85  5A                pop dx
00004C86  0CDB              or al,0xdb
00004C88  91                xchg ax,cx
00004C89  0277B8            add dh,[bx-0x48]
00004C8C  037EF2            add di,[bp-0xe]
00004C8F  8B5A47            mov bx,[bp+si+0x47]
00004C92  A4                movsb
00004C93  7C5D              jl 0x4cf2
00004C95  16                push ss
00004C96  80E70F            and bh,0xf
00004C99  2315              and dx,[di]
00004C9B  1B634B            sbb sp,[bp+di+0x4b]
00004C9E  150B62            adc ax,0x620b
00004CA1  FF2E8716          jmp far [0x1687]
00004CA5  A6                cmpsb
00004CA6  237E4E            and di,[bp+0x4e]
00004CA9  870D              xchg [di],cx
00004CAB  A85D              test al,0x5d
00004CAD  E1EB              loope 0x4c9a
00004CAF  61                popa
00004CB0  BE4F14            mov si,0x144f
00004CB3  80E60F            and dh,0xf
00004CB6  3522DB            xor ax,0xdb22
00004CB9  55                push bp
00004CBA  4D                dec bp
00004CBB  1459              adc al,0x59
00004CBD  7255              jc 0x4d14
00004CBF  16                push ss
00004CC0  FE09              dec byte [bx+di]
00004CC2  D8EB              fsubr st3
00004CC4  A4                movsb
00004CC5  B85F37            mov ax,0x375f
00004CC8  5D                pop bp
00004CC9  A843              test al,0x43
00004CCB  ED                in ax,dx
00004CCC  E99FFD            jmp 0x4a6e
00004CCF  1F                pop ds
00004CD0  6C                insb
00004CD1  BE56A8            mov si,0xa856
00004CD4  8627              xchg [bx],ah
00004CD6  6769207206        imul sp,[eax],word 0x672
00004CDB  93                xchg ax,bx
00004CDC  679B7C12          wait jl 0x4cf2
00004CE0  99                cwd
00004CE1  E365              jcxz 0x4d48
00004CE3  0144F4            add [si-0xc],ax
00004CE6  7811              js 0x4cf9
00004CE8  54                push sp
00004CE9  214696            and [bp-0x6a],ax
00004CEC  9B3648            ss wait dec ax
00004CEF  0BCE              or cx,si
00004CF1  1804              sbb [si],al
00004CF3  F5                cmc
00004CF4  17                pop ss
00004CF5  1CD4              sbb al,0xd4
00004CF7  B002              mov al,0x2
00004CF9  EA089D3702        jmp 0x237:0x9d08
00004CFE  0A4816            or cl,[bx+si+0x16]
00004D01  260182E506        add [es:bp+si+0x6e5],ax
00004D06  B1FF              mov cl,0xff
00004D08  FC                cld
00004D09  0C3A              or al,0x3a
00004D0B  09B9FF02          or [bx+di+0x2ff],di
00004D0F  000F              add [bx],cl
00004D11  82                db 0x82
00004D12  6D                insw
00004D13  00367767          add [0x6777],dh
00004D17  35F5DA            xor ax,0xdaf5
00004D1A  A4                movsb
00004D1B  7360              jnc 0x4d7d
00004D1D  93                xchg ax,bx
00004D1E  E714              out 0x14,ax
00004D20  AA                stosb
00004D21  1B4C49            sbb cx,[si+0x49]
00004D24  1F                pop ds
00004D25  AA                stosb
00004D26  2D482C            sub ax,0x2c48
00004D29  EE                out dx,al
00004D2A  7F2F              jg 0x4d5b
00004D2C  40                inc ax
00004D2D  149E              adc al,0x9e
00004D2F  A7                cmpsw
00004D30  AC                lodsb
00004D31  FC                cld
00004D32  00F7              add bh,dh
00004D34  4F                dec di
00004D35  43                inc bx
00004D36  4D                dec bp
00004D37  0572BD            add ax,0xbd72
00004D3A  184135            sbb [bx+di+0x35],al
00004D3D  0023              add [bp+di],ah
00004D3F  FD                std
00004D40  41                inc cx
00004D41  1E                push ds
00004D42  39FA              cmp dx,di
00004D44  5D                pop bp
00004D45  61                popa
00004D46  185135            sbb [bx+di+0x35],dl
00004D49  FE                db 0xfe
00004D4A  13A8EF17          adc bp,[bx+si+0x17ef]
00004D4E  09B8696E          or [bx+si+0x6e69],di
00004D52  D9C0              fld st0
00004D54  FA                cli
00004D55  197F05            sbb [bx+0x5],di
00004D58  B8C85F            mov ax,0x5fc8
00004D5B  FB                sti
00004D5C  A7                cmpsw
00004D5D  8AD4              mov dl,ah
00004D5F  58                pop ax
00004D60  FB                sti
00004D61  CC                int3
00004D62  3A8FC0B1          cmp cl,[bx-0x4e40]
00004D66  765F              jna 0x4dc7
00004D68  10A2A549          adc [bp+si+0x49a5],ah
00004D6C  C8A05D3D          enter 0x5da0,0x3d
00004D70  02E2              add ah,dl
00004D72  B2F8              mov dl,0xf8
00004D74  CF                iret
00004D75  D321              shl word [bx+di],cl
00004D77  354506            xor ax,0x645
00004D7A  AB                stosw
00004D7B  AB                stosw
00004D7C  A21DCD            mov [0xcd1d],al
00004D7F  D532              aad 0x32
00004D81  4A                dec dx
00004D82  FD                std
00004D83  43                inc bx
00004D84  358038            xor ax,0x3880
00004D87  A38B54            mov [0x548b],ax
00004D8A  3803              cmp [bp+di],al
00004D8C  97                xchg ax,di
00004D8D  18FF              sbb bh,bh
00004D8F  E8ED1C            call 0x6a7f
00004D92  E48A              in al,0x8a
00004D94  66DD880F8E        o32 fisttp qword [bx+si-0x71f1]
00004D99  1454              adc al,0x54
00004D9B  303618BC          xor [0xbc18],dh
00004D9F  7714              ja 0x4db5
00004DA1  A2DB0C            mov [0xcdb],al
00004DA4  B6B8              mov dh,0xb8
00004DA6  028C1771          add cl,[si+0x7117]
00004DAA  0905              or [di],ax
00004DAC  B617              mov dh,0x17
00004DAE  5A                pop dx
00004DAF  0411              add al,0x11
00004DB1  19F1              sbb cx,si
00004DB3  E92203            jmp 0x50d8
00004DB6  53                push bx
00004DB7  16                push ss
00004DB8  D418              aam 0x18
00004DBA  839CD4B824        sbb word [si-0x472c],byte +0x24
00004DBF  4E                dec si
00004DC0  0C8E              or al,0x8e
00004DC2  8383F877B1        add word [bp+di+0x77f8],byte -0x4f
00004DC7  F604B0            test byte [si],0xb0
00004DCA  6B164799F0        imul dx,[0x9947],byte -0x10
00004DCF  740F              jz 0x4de0
00004DD1  6868BE            push word 0xbe68
00004DD4  22DD              and bl,ch
00004DD6  C1                db 0xc1
00004DD7  F2B710            repne mov bh,0x10
00004DDA  C20758            ret 0x5807
00004DDD  E7EA              out 0xea,ax
00004DDF  A15BF1            mov ax,[0xf15b]
00004DE2  F00018            lock add [bx+si],bl
00004DE5  6F                outsw
00004DE6  A7                cmpsw
00004DE7  06                push es
00004DE8  5A                pop dx
00004DE9  B695              mov dh,0x95
00004DEB  0E                push cs
00004DEC  6C                insb
00004DED  82                db 0x82
00004DEE  7D45              jnl 0x4e35
00004DF0  B3CF              mov bl,0xcf
00004DF2  30FF              xor bh,bh
00004DF4  96                xchg ax,si
00004DF5  3E88C3            ds mov bl,al
00004DF8  80EB41            sub bl,0x41
00004DFB  057681            add ax,0x8176
00004DFE  40                inc ax
00004DFF  CC                int3
00004E00  EA880C3C5D        jmp 0x5d3c:0xc88
00004E05  51                push cx
00004E06  B8F289            mov ax,0x89f2
00004E09  FB                sti
00004E0A  E875FE            call 0x4c82
00004E0D  58                pop ax
00004E0E  2CCF              sub al,0xcf
00004E10  97                xchg ax,di
00004E11  811DC44B          sbb word [di],0x4bc4
00004E15  CE                into
00004E16  43                inc bx
00004E17  6D                insw
00004E18  4B                dec bx
00004E19  0BB46602          or si,[si+0x266]
00004E1D  AE                scasb
00004E1E  3610EE            ss adc dh,ch
00004E21  C60500            mov byte [di],0x0
00004E24  05D7C7            add ax,0xc7d7
00004E27  45                inc bp
00004E28  97                xchg ax,di
00004E29  285133            sub [bx+di+0x33],dl
00004E2C  16                push ss
00004E2D  24ED              and al,0xed
00004E2F  45                inc bp
00004E30  0C1A              or al,0x1a
00004E32  82                db 0x82
00004E33  0417              add al,0x17
00004E35  1C45              sbb al,0x45
00004E37  0168A1            add [bx+si-0x5f],bp
00004E3A  0185BD08          add [di+0x8bd],ax
00004E3E  E8FDB6            call 0x53e
00004E41  AB                stosw
00004E42  116463            adc [si+0x63],sp
00004E45  0FF46805          pmuludq mm5,[bx+si+0x5]
00004E49  D6                salc
00004E4A  5C                pop sp
00004E4B  1360AD            adc sp,[bx+si-0x53]
00004E4E  92                xchg ax,dx
00004E4F  B8B6A2            mov ax,0xa2b6
00004E52  14CF              adc al,0xcf
00004E54  3653              ss push bx
00004E56  6D                insw
00004E57  2A439D            sub al,[bp+di-0x63]
00004E5A  0D05DB            or ax,0xdb05
00004E5D  0B02              or ax,[bp+si]
00004E5F  43                inc bx
00004E60  705B              jo 0x4ebd
00004E62  E94014            jmp 0x62a5
00004E65  3330              xor si,[bx+si]
00004E67  3B5A33            cmp bx,[bp+si+0x33]
00004E6A  A2E62F            mov [0x2fe6],al
00004E6D  B73A              mov bh,0x3a
00004E6F  51                push cx
00004E70  0029              add [bx+di],ch
00004E72  5C                pop sp
00004E73  14B6              adc al,0xb6
00004E75  1D3D28            sbb ax,0x283d
00004E78  C4164390          les dx,[0x9043]
00004E7C  D803              fadd dword [bp+di]
00004E7E  52                push dx
00004E7F  6E                outsb
00004E80  6C                insb
00004E81  C4                db 0xc4
00004E82  E831ED            call 0x3bb6
00004E85  C7                db 0xc7
00004E86  34B5              xor al,0xb5
00004E88  0B18              or bx,[bx+si]
00004E8A  52                push dx
00004E8B  2BE0              sub sp,ax
00004E8D  8804              mov [si],al
00004E8F  291A              sub [bp+si],bx
00004E91  0C33              or al,0x33
00004E93  89EA              mov dx,bp
00004E95  DE600A            fisub word [bx+si+0xa]
00004E98  55                push bp
00004E99  3F                aas
00004E9A  42                inc dx
00004E9B  668609            o32 xchg [bx+di],cl
00004E9E  9C                pushf
00004E9F  F218D9            repne sbb cl,bl
00004EA2  4C                dec sp
00004EA3  C3                ret
00004EA4  0D5276            or ax,0x7652
00004EA7  28D5              sub ch,dl
00004EA9  F6A0AA03          mul byte [bx+si+0x3aa]
00004EAD  17                pop ss
00004EAE  46                inc si
00004EAF  AC                lodsb
00004EB0  843F              test [bx],bh
00004EB2  6D                insw
00004EB3  41                inc cx
00004EB4  31D1              xor cx,dx
00004EB6  763D              jna 0x4ef5
00004EB8  A15943            mov ax,[0x4359]
00004EBB  F0AE              lock scasb
00004EBD  B6D8              mov dh,0xd8
00004EBF  0A31              or dh,[bx+di]
00004EC1  3BDD              cmp bx,bp
00004EC3  EF                out dx,ax
00004EC4  7D2C              jnl 0x4ef2
00004EC6  DA1B              ficomp dword [bp+di]
00004EC8  3C2A              cmp al,0x2a
00004ECA  2BB851CE          sub di,[bx+si-0x31af]
00004ECE  DF2A              fild qword [bp+si]
00004ED0  B73F              mov bh,0x3f
00004ED2  4D                dec bp
00004ED3  1A3C              sbb bh,[si]
00004ED5  833FFD            cmp word [bx],byte -0x3
00004ED8  5E                pop si
00004ED9  0E                push cs
00004EDA  8A7607            mov dh,[bp+0x7]
00004EDD  A8D2              test al,0xd2
00004EDF  3D4EED            cmp ax,0xed4e
00004EE2  102681F1          adc [0xf181],ah
00004EE6  46                inc si
00004EE7  41                inc cx
00004EE8  EBB8              jmp short 0x4ea2
00004EEA  15B149            adc ax,0x49b1
00004EED  56                push si
00004EEE  00ED              add ch,ch
00004EF0  8099E11229        sbb byte [bx+di+0x12e1],0x29
00004EF5  C88AA3B5          enter 0xa38a,0xb5
00004EF9  79C6              jns 0x4ec1
00004EFB  DB5B9A            fistp dword [bp+di-0x66]
00004EFE  38FE              cmp dh,bh
00004F00  B4F9              mov ah,0xf9
00004F02  15BA34            adc ax,0x34ba
00004F05  2080D14D          and [bx+si+0x4dd1],al
00004F09  351020            xor ax,0x2010
00004F0C  10BBA347          adc [bp+di+0x47a3],bh
00004F10  0C9C              or al,0x9c
00004F12  D109              ror word [bx+di],1
00004F14  D5C1              aad 0xc1
00004F16  0C0B              or al,0xb
00004F18  B80720            mov ax,0x2007
00004F1B  C3                ret
00004F1C  D1A76A57          shl word [bx+0x576a],1
00004F20  20617F            and [bx+di+0x7f],ah
00004F23  16                push ss
00004F24  3AE0              cmp ah,al
00004F26  11DA              adc dx,bx
00004F28  F09D              lock popf
00004F2A  18DE              sbb dh,bl
00004F2C  75CB              jnz 0x4ef9
00004F2E  285023            sub [bx+si+0x23],dl
00004F31  B3DA              mov bl,0xda
00004F33  C9                leave
00004F34  F036A18AE6        lock mov ax,[ss:0xe68a]
00004F39  95                xchg ax,bp
00004F3A  8E70C3            mov segr6,[bx+si-0x3d]
00004F3D  A23815            mov [0x1538],al
00004F40  2ACC              sub cl,ah
00004F42  A85E              test al,0x5e
00004F44  0902              or [bp+si],ax
00004F46  E9E4A3            jmp 0xf32d
00004F49  EA915B5D8B        jmp 0x8b5d:0x5b91
00004F4E  41                inc cx
00004F4F  BF0BC2            mov di,0xc20b
00004F52  39C2              cmp dx,ax
00004F54  72EC              jc 0x4f42
00004F56  02A1A608          add ah,[bx+di+0x8a6]
00004F5A  C093FF9DA3        rcl byte [bp+di-0x6201],byte 0xa3
00004F5F  99                cwd
00004F60  BA29D1            mov dx,0xd129
00004F63  6A21              push byte +0x21
00004F65  2D85D8            sub ax,0xd885
00004F68  48                dec ax
00004F69  5D                pop bp
00004F6A  18A7F7D4          sbb [bx-0x2b09],ah
00004F6E  DD                db 0xdd
00004F6F  CC                int3
00004F70  1BEF              sbb bp,di
00004F72  F7B71E03          div word [bx+0x31e]
00004F76  833E2ABA38        cmp word [0xba2a],byte +0x38
00004F7B  A16E0C            mov ax,[0xc6e]
00004F7E  24FB              and al,0xfb
00004F80  8AD1              mov dl,cl
00004F82  251607            and ax,0x716
00004F85  B329              mov bl,0x29
00004F87  E84518            call 0x67cf
00004F8A  8B37              mov si,[bx]
00004F8C  51                push cx
00004F8D  F4                hlt
00004F8E  CA367D            retf 0x7d36
00004F91  07                pop es
00004F92  C12EB6F625        shr word [0xf6b6],byte 0x25
00004F97  028B6B5A          add cl,[bp+di+0x5a6b]
00004F9B  1DADB6            sbb ax,0xb6ad
00004F9E  D0E8              shr al,1
00004FA0  50                push ax
00004FA1  F3AE              repe scasb
00004FA3  105D12            adc [di+0x12],bl
00004FA6  1504C7            adc ax,0xc704
00004FA9  7419              jz 0x4fc4
00004FAB  D922              fldenv [bp+si]
00004FAD  B548              mov ch,0x48
00004FAF  6C                insb
00004FB0  5A                pop dx
00004FB1  D803              fadd dword [bp+di]
00004FB3  44                inc sp
00004FB4  5C                pop sp
00004FB5  76A4              jna 0x4f5b
00004FB7  BA0B21            mov dx,0x210b
00004FBA  6E                outsb
00004FBB  2329              and bp,[bx+di]
00004FBD  5E                pop si
00004FBE  A98690            test ax,0x9086
00004FC1  3A77FD            cmp dh,[bx-0x3]
00004FC4  15E1FE            adc ax,0xfee1
00004FC7  45                inc bp
00004FC8  B784              mov bh,0x84
00004FCA  331E71F7          xor bx,[0xf771]
00004FCE  740E              jz 0x4fde
00004FD0  CE                into
00004FD1  B03C              mov al,0x3c
00004FD3  1BD9              sbb bx,cx
00004FD5  226E63            and ch,[bp+0x63]
00004FD8  761E              jna 0x4ff8
00004FDA  FEC0              inc al
00004FDC  16                push ss
00004FDD  2E03D4            cs add dx,sp
00004FE0  40                inc ax
00004FE1  1CB1              sbb al,0xb1
00004FE3  0B6CB6            or bp,[si-0x4a]
00004FE6  9BB430            wait mov ah,0x30
00004FE9  3AB0FEAA          cmp dh,[bx+si-0x5502]
00004FED  5E                pop si
00004FEE  8F02              pop word [bp+si]
00004FF0  B001              mov al,0x1
00004FF2  82                db 0x82
00004FF3  49                dec cx
00004FF4  A7                cmpsw
00004FF5  59                pop cx
00004FF6  3A368D5A          cmp dh,[0x5a8d]
00004FFA  C4531B            les dx,[bp+di+0x1b]
00004FFD  BCE8C3            mov sp,0xc3e8
00005000  27                daa
00005001  0220              add ah,[bx+si]
00005003  833AB6            cmp word [bp+si],byte -0x4a
00005006  0E                push cs
00005007  B80D8A            mov ax,0x8a0d
0000500A  17                pop ss
0000500B  1226DA1D          adc ah,[0x1dda]
0000500F  E658              out 0x58,al
00005011  3454              xor al,0x54
00005013  54                push sp
00005014  AE                scasb
00005015  54                push sp
00005016  4D                dec bp
00005017  EC                in al,dx
00005018  B90009            mov cx,0x900
0000501B  18F0              sbb al,dh
0000501D  3CCE              cmp al,0xce
0000501F  A24B0E            mov [0xe4b],al
00005022  E1E8              loope 0x500c
00005024  E89225            call 0x75b9
00005027  58                pop ax
00005028  96                xchg ax,si
00005029  FF2F              jmp far [bx]
0000502B  30F0              xor al,dh
0000502D  01C8              add ax,cx
0000502F  1356FB            adc dx,[bp-0x5]
00005032  2688A1CFA6        mov [es:bx+di-0x5931],ah
00005037  21B5239B          and [di-0x64dd],si
0000503B  0D36FC            or ax,0xfc36
0000503E  84D0              test al,dl
00005040  220D              and cl,[di]
00005042  AE                scasb
00005043  BBB4B0            mov bx,0xb0b4
00005046  0911              or [bx+di],dx
00005048  74B0              jz 0x4ffa
0000504A  FF12              call [bp+si]
0000504C  261B8678E8        sbb ax,[es:bp-0x1788]
00005051  830108            add word [bx+di],byte +0x8
00005054  7817              js 0x506d
00005056  2526F1            and ax,0xf126
00005059  763E              jna 0x5099
0000505B  57                push di
0000505C  23D0              and dx,ax
0000505E  1BFC              sbb di,sp
00005060  E6E8              out 0xe8,al
00005062  6B0126            imul ax,[bx+di],byte +0x26
00005065  E92F9B            jmp 0xeb97
00005068  681470            push word 0x7014
0000506B  EB0E              jmp short 0x507b
0000506D  3F                aas
0000506E  0911              or [bx+di],dx
00005070  40                inc ax
00005071  16                push ss
00005072  9C                pushf
00005073  B714              mov bh,0x14
00005075  247F              and al,0x7f
00005077  146C              adc al,0x6c
00005079  61                popa
0000507A  2021              and [bx+di],ah
0000507C  EA29F4915D        jmp 0x5d91:0xf429
00005081  B0C2              mov al,0xc2
00005083  88FF              mov bh,bh
00005085  9F                lahf
00005086  6D                insw
00005087  2B01              sub ax,[bx+di]
00005089  0CEA              or al,0xea
0000508B  D6                salc
0000508C  58                pop ax
0000508D  AF                scasw
0000508E  A6                cmpsb
0000508F  808621EB11        add byte [bp-0x14df],0x11
00005094  A25D21            mov [0x215d],al
00005097  A4                movsb
00005098  6C                insb
00005099  0D1B7C            or ax,0x7c1b
0000509C  DF                db 0xdf
0000509D  FD                std
0000509E  88C1              mov cl,al
000050A0  6D                insw
000050A1  D5FC              aad 0xfc
000050A3  F2192B            repne sbb [bp+di],bp
000050A6  AA                stosb
000050A7  1AAC05C7          sbb ch,[si-0x38fb]
000050AB  17                pop ss
000050AC  87FF              xchg di,di
000050AE  F088C8            lock mov al,cl
000050B1  E9D6A0            jmp 0xf18a
000050B4  13495A            adc cx,[bx+di+0x5a]
000050B7  88C7              mov bh,al
000050B9  97                xchg ax,di
000050BA  3C72              cmp al,0x72
000050BC  FF464B            inc word [bp+0x4b]
000050BF  31DB              xor bx,bx
000050C1  082A              or [bp+si],ch
000050C3  310C              xor [si],cx
000050C5  3BF6              cmp si,si
000050C7  816B20C480        sub word [bp+di+0x20],0x80c4
000050CC  07                pop es
000050CD  8B31              mov si,[bx+di]
000050CF  1CC0              sbb al,0xc0
000050D1  8EFD              mov segr7,bp
000050D3  C00CB7            ror byte [si],byte 0xb7
000050D6  870C              xchg [si],cx
000050D8  8AB766C7          mov dh,[bx-0x389a]
000050DC  8867F6            mov [bx-0xa],ah
000050DF  20E9              and cl,ch
000050E1  A6                cmpsb
000050E2  009706B9          add [bx-0x46fa],dl
000050E6  57                push di
000050E7  A01E54            mov al,[0x541e]
000050EA  76E1              jna 0x50cd
000050EC  9E                sahf
000050ED  6E                outsb
000050EE  97                xchg ax,di
000050EF  F06E              lock outsb
000050F1  B600              mov dh,0x0
000050F3  99                cwd
000050F4  80C39E            add bl,0x9e
000050F7  D50E              aad 0xe
000050F9  8068D280          sub byte [bx+si-0x2e],0x80
000050FD  836787C4          and word [bx-0x79],byte -0x3c
00005101  777C              ja 0x517f
00005103  06                push es
00005104  57                push di
00005105  48                dec ax
00005106  046B              add al,0x6b
00005108  F0D0CC            lock ror ah,1
0000510B  5D                pop bp
0000510C  46                inc si
0000510D  7D84              jnl 0x5093
0000510F  0B35              or si,[di]
00005111  9E                sahf
00005112  EB52              jmp short 0x5166
00005114  E8D49E            call 0xefeb
00005117  3A551D            cmp dl,[di+0x1d]
0000511A  5D                pop bp
0000511B  0D2303            or ax,0x323
0000511E  B780              mov bh,0x80
00005120  6A4F              push byte +0x4f
00005122  1856AF            sbb [bp-0x51],dl
00005125  A92A67            test ax,0x672a
00005128  0CA0              or al,0xa0
0000512A  64B61F            fs mov dh,0x1f
0000512D  80B49C113D        xor byte [si+0x119c],0x3d
00005132  1107              adc [bx],ax
00005134  DA14              ficom dword [si]
00005136  0E                push cs
00005137  8050334A          adc byte [bx+si+0x33],0x4a
0000513B  88DC              mov ah,bl
0000513D  037C13            add di,[si+0x13]
00005140  42                inc dx
00005141  59                pop cx
00005142  CB                retf
00005143  1012              adc [bp+si],dl
00005145  750F              jnz 0x5156
00005147  0F                db 0x0f
00005148  D7                xlatb
00005149  0B14              or dx,[si]
0000514B  07                pop es
0000514C  4C                dec sp
0000514D  0D0D9E            or ax,0x9e0d
00005150  45                inc bp
00005151  229C0B96          and bl,[si-0x69f5]
00005155  3685CA            ss test dx,cx
00005158  3F                aas
00005159  AE                scasb
0000515A  B882A8            mov ax,0xa882
0000515D  B47B              mov ah,0x7b
0000515F  4B                dec bx
00005160  8C1EE3A6          mov [0xa6e3],ds
00005164  05EBB7            add ax,0xb7eb
00005167  5A                pop dx
00005168  04FB              add al,0xfb
0000516A  0FA1              pop fs
0000516C  06                push es
0000516D  668B04            mov eax,[si]
00005170  26D1DA            es rcr dx,1
00005173  99                cwd
00005174  FF9D2E82          call far [di-0x7dd2]
00005178  1B06C602          sbb ax,[0x2c6]
0000517C  90                nop
0000517D  8505              test [di],ax
0000517F  96                xchg ax,si
00005180  D85D0E            fcomp dword [di+0xe]
00005183  E104              loope 0x5189
00005185  64E480            fs in al,0x80
00005188  2D9DD6            sub ax,0xd69d
0000518B  7E0A              jng 0x5197
0000518D  8A81CA65          mov al,[bx+di+0x65ca]
00005191  16                push ss
00005192  E84289            call 0xdad7
00005195  150F4D            adc ax,0x4d0f
00005198  16                push ss
00005199  43                inc bx
0000519A  216B57            and [bp+di+0x57],bp
0000519D  756B              jnz 0x520a
0000519F  0440              add al,0x40
000051A1  0A70C6            or dh,[bx+si-0x3a]
000051A4  44                inc sp
000051A5  286216            sub [bp+si+0x16],ah
000051A8  E202              loop 0x51ac
000051AA  08D7              or bh,dl
000051AC  B6ED              mov dh,0xed
000051AE  6D                insw
000051AF  E0DC              loopne 0x518d
000051B1  3ED6              ds salc
000051B3  5F                pop di
000051B4  FD                std
000051B5  7B0C              jpo 0x51c3
000051B7  309AE048          xor [bp+si+0x48e0],bl
000051BB  06                push es
000051BC  8B8ED694          mov cx,[bp-0x6b2a]
000051C0  362C3B            ss sub al,0x3b
000051C3  FC                cld
000051C4  E97CB0            jmp 0x243
000051C7  7AFF              jpe 0x51c8
000051C9  9E                sahf
000051CA  1F                pop ds
000051CB  81D70030          adc di,0x3000
000051CF  A4                movsb
000051D0  5C                pop sp
000051D1  27                daa
000051D2  17                pop ss
000051D3  1C69              sbb al,0x69
000051D5  657BBE            gs jpo 0x5196
000051D8  F8                clc
000051D9  40                inc ax
000051DA  2D6506            sub ax,0x665
000051DD  56                push si
000051DE  30DC              xor ah,bl
000051E0  37                aaa
000051E1  41                inc cx
000051E2  2121              and [bx+di],sp
000051E4  7189              jno 0x516f
000051E6  0E                push cs
000051E7  56                push si
000051E8  2237              and dh,[bx]
000051EA  BA3252            mov dx,0x5232
000051ED  D911              fst dword [bx+di]
000051EF  C6                db 0xc6
000051F0  D39413C7          rcl word [si-0x38ed],cl
000051F4  156B48            adc ax,0x486b
000051F7  886DA2            mov [di-0x5e],ch
000051FA  1AFF              sbb bh,bh
000051FC  C6063F043A        mov byte [0x43f],0x3a
00005201  684004            push word 0x440
00005204  6D                insw
00005205  64EE              fs out dx,al
00005207  6F                outsw
00005208  8DA6B189          lea sp,[bp-0x764f]
0000520C  B3D9              mov bl,0xd9
0000520E  61                popa
0000520F  D3A8D502          shr word [bx+si+0x2d5],cl
00005213  7BA2              jpo 0x51b7
00005215  E81ED4            call 0x2636
00005218  3503A5            xor ax,0xa503
0000521B  74D2              jz 0x51ef
0000521D  7492              jz 0x51b1
0000521F  89C0              mov ax,ax
00005221  97                xchg ax,di
00005222  80E934            sub cl,0x34
00005225  61                popa
00005226  B2C8              mov dl,0xc8
00005228  6E                outsb
00005229  6912545F          imul dx,[bp+si],word 0x5f54
0000522D  A7                cmpsw
0000522E  FA                cli
0000522F  DDA12E05          frstor [bx+di+0x52e]
00005233  F66CB6            imul byte [si-0x4a]
00005236  F8                clc
00005237  83C3A1            add bx,byte -0x5f
0000523A  FE                db 0xfe
0000523B  EAECF4BBF2        jmp 0xf2bb:0xf4ec
00005240  C5                db 0xc5
00005241  D6                salc
00005242  0D07C2            or ax,0xc207
00005245  30DD              xor ch,bl
00005247  89F2              mov dx,si
00005249  0091BCF4          add [bx+di-0xb44],dl
0000524D  A36B05            mov [0x56b],ax
00005250  B09C              mov al,0x9c
00005252  92                xchg ax,dx
00005253  AC                lodsb
00005254  84BD0FDD          test [di-0x22f1],bh
00005258  D221              shl byte [bx+di],cl
0000525A  3EC58E6EF4        lds cx,[ds:bp-0xb92]
0000525F  1F                pop ds
00005260  218D56ED          and [di-0x12aa],cx
00005264  BE1E52            mov si,0x521e
00005267  1E                push ds
00005268  6D                insw
00005269  06                push es
0000526A  B0A0              mov al,0xa0
0000526C  6C                insb
0000526D  09607F            or [bx+si+0x7f],sp
00005270  F8                clc
00005271  8D76BF            lea si,[bp-0x41]
00005274  8D5D8A            lea bx,[di-0x76]
00005277  11068FE0          adc [0xe08f],ax
0000527B  46                inc si
0000527C  43                inc bx
0000527D  40                inc ax
0000527E  A6                cmpsb
0000527F  D4BB              aam 0xbb
00005281  0D5C3F            or ax,0x3f5c
00005284  748D              jz 0x5213
00005286  F2B3D1            repne mov bl,0xd1
00005289  17                pop ss
0000528A  88B6B8EB          mov [bp-0x1448],dh
0000528E  F3C9              rep leave
00005290  F8                clc
00005291  0CB0              or al,0xb0
00005293  BAB2B0            mov dx,0xb0b2
00005296  6C                insb
00005297  E4BE              in al,0xbe
00005299  039E0A2F          add bx,[bp+0x2f0a]
0000529D  0990BC65          or [bx+si+0x65bc],dx
000052A1  FFA82051          jmp far [bx+si+0x5120]
000052A5  2D68FF            sub ax,0xff68
000052A8  C3                ret
000052A9  2F                das
000052AA  E96FBE            jmp 0x111c
000052AD  C7                db 0xc7
000052AE  0B4EE4            or cx,[bp-0x1c]
000052B1  40                inc ax
000052B2  7783              ja 0x5237
000052B4  BEE819            mov si,0x19e8
000052B7  40                inc ax
000052B8  AE                scasb
000052B9  47                inc di
000052BA  D47F              aam 0x7f
000052BC  0CE4              or al,0xe4
000052BE  E8DCBF            call 0x129d
000052C1  2E2D37FF          cs sub ax,0xff37
000052C5  1462              adc al,0x62
000052C7  F4                hlt
000052C8  855881            test [bx+si-0x7f],bx
000052CB  2D366D            sub ax,0x6d36
000052CE  0E                push cs
000052CF  BC1467            mov sp,0x6714
000052D2  D59F              aad 0x9f
000052D4  80D4E8            adc ah,0xe8
000052D7  021A              add bl,[bp+si]
000052D9  96                xchg ax,si
000052DA  C6                db 0xc6
000052DB  DAC2              fcmovb st2
000052DD  BB5B25            mov bx,0x255b
000052E0  45                inc bp
000052E1  15B51D            adc ax,0x1db5
000052E4  FA                cli
000052E5  43                inc bx
000052E6  AC                lodsb
000052E7  E1F6              loope 0x52df
000052E9  A349FC            mov [0xfc49],ax
000052EC  FC                cld
000052ED  E9EAFB            jmp 0x4eda
000052F0  19787D            sbb [bx+si+0x7d],di
000052F3  E86EFD            call 0x5064
000052F6  1486              adc al,0x86
000052F8  2F                das
000052F9  9A6A189C1D        call 0x1d9c:0x186a
000052FE  6F                outsw
000052FF  AB                stosw
00005300  E9C7FB            jmp 0x4eca
00005303  F5                cmc
00005304  98                cbw
00005305  E886C5            call 0x188e
00005308  43                inc bx
00005309  7EA5              jng 0x52b0
0000530B  CE                into
0000530C  45                inc bp
0000530D  9E                sahf
0000530E  73B1              jnc 0x52c1
00005310  FB                sti
00005311  097465            or [si+0x65],si
00005314  108912F0          adc [bx+di-0xfee],cl
00005318  50                push ax
00005319  D6                salc
0000531A  7111              jno 0x532d
0000531C  03F4              add si,sp
0000531E  45                inc bp
0000531F  1326B209          adc sp,[0x9b2]
00005323  06                push es
00005324  C008D2            ror byte [bx+si],byte 0xd2
00005327  6747              a32 inc di
00005329  E80FDF            call 0x323b
0000532C  8733              xchg [bp+di],si
0000532E  D54C              aad 0x4c
00005330  16                push ss
00005331  D8E2              fsub st2
00005333  1406              adc al,0x6
00005335  D8EE              fsubr st6
00005337  26117DC0          adc [es:di-0x40],di
0000533B  DE                db 0xde
0000533C  D28A85BA          ror byte [bp+si-0x457b],cl
00005340  AC                lodsb
00005341  53                push bx
00005342  04CB              add al,0xcb
00005344  8760FB            xchg [bx+si-0x5],sp
00005347  11C3              adc bx,ax
00005349  55                push bp
0000534A  4F                dec di
0000534B  6D                insw
0000534C  8F                db 0x8f
0000534D  8E5AD5            mov ds,[bp+si-0x2b]
00005350  88DB              mov bl,bl
00005352  D315              rcl word [di],cl
00005354  706C              jo 0x53c2
00005356  C3                ret
00005357  6E                outsb
00005358  BC8DFB            mov sp,0xfb8d
0000535B  15E064            adc ax,0x64e0
0000535E  0338              add di,[bx+si]
00005360  91                xchg ax,cx
00005361  1A790D            sbb bh,[bx+di+0xd]
00005364  FA                cli
00005365  055A8E            add ax,0x8e5a
00005368  89E6              mov si,sp
0000536A  DB                db 0xdb
0000536B  27                daa
0000536C  0B83CCD9          or ax,[bp+di-0x2634]
00005370  69D0F439          imul dx,ax,word 0x39f4
00005374  10A5C796          adc [di-0x6939],ah
00005378  FA                cli
00005379  F4                hlt
0000537A  3D0B74            cmp ax,0x740b
0000537D  862E7F0C          xchg [0xc7f],ch
00005381  FE8C6EA0          dec byte [si-0x5f92]
00005385  F8                clc
00005386  1BEC              sbb bp,sp
00005388  B00C              mov al,0xc
0000538A  30D9              xor cl,bl
0000538C  19F2              sbb dx,si
0000538E  C0D42A            rcl ah,byte 0x2a
00005391  A92371            test ax,0x7123
00005394  F04E              lock dec si
00005396  D5DC              aad 0xdc
00005398  EF                out dx,ax
00005399  F626D6A2          mul byte [0xa2d6]
0000539D  22FF              and bh,bh
0000539F  1E                push ds
000053A0  68B10C            push word 0xcb1
000053A3  8D4701            lea ax,[bx+0x1]
000053A6  05F8C0            add ax,0xc0f8
000053A9  C5AE837B          lds bp,[bp+0x7b83]
000053AD  6D                insw
000053AE  B80F4F            mov ax,0x4f0f
000053B1  263585A0          es xor ax,0xa085
000053B5  5C                pop sp
000053B6  ED                in ax,dx
000053B7  A2BC0C            mov [0xcbc],al
000053BA  D381F01A          rol word [bx+di+0x1af0],cl
000053BE  BD1BA3            mov bp,0xa31b
000053C1  BD0CDC            mov bp,0xdc0c
000053C4  06                push es
000053C5  1DA3BF            sbb ax,0xbfa3
000053C8  5D                pop bp
000053C9  E8A3DA            call 0x2e6f
000053CC  C10C5D            ror word [si],byte 0x5d
000053CF  D11C              rcr word [si],1
000053D1  BA3B8C            mov dx,0x8c3b
000053D4  C098DE002F        rcr byte [bx+si+0xde],byte 0x2f
000053D9  31FB              xor bx,di
000053DB  7420              jz 0x53fd
000053DD  6D                insw
000053DE  26FA              es cli
000053E0  13954706          adc dx,[di+0x647]
000053E4  4E                dec si
000053E5  359740            xor ax,0x4097
000053E8  AB                stosw
000053E9  E95E71            jmp 0xc54a
000053EC  6A07              push byte +0x7
000053EE  1AAD0ED8          sbb ch,[di-0x27f2]
000053F2  4E                dec si
000053F3  E205              loop 0x53fa
000053F5  FD                std
000053F6  44                inc sp
000053F7  77AA              ja 0x53a3
000053F9  740D              jz 0x5408
000053FB  A10EAF            mov ax,[0xaf0e]
000053FE  3F                aas
000053FF  61                popa
00005400  7BD0              jpo 0x53d2
00005402  40                inc ax
00005403  6E                outsb
00005404  702F              jo 0x5435
00005406  D1                db 0xd1
00005407  30EE              xor dh,ch
00005409  98                cbw
0000540A  0F286125          movaps xmm4,oword [bx+di+0x25]
0000540E  CE                into
0000540F  86C2              xchg dl,al
00005411  056F96            add ax,0x966f
00005414  CE                into
00005415  FB                sti
00005416  8A6BB7            mov ch,[bp+di-0x49]
00005419  55                push bp
0000541A  55                push bp
0000541B  D550              aad 0x50
0000541D  FE                db 0xfe
0000541E  3599FF            xor ax,0xff99
00005421  B0D3              mov al,0xd3
00005423  06                push es
00005424  7569              jnz 0x548f
00005426  1E                push ds
00005427  04E9              add al,0xe9
00005429  3E27              ds daa
0000542B  76AE              jna 0x53db
0000542D  A187A9            mov ax,[0xa987]
00005430  3480              xor al,0x80
00005432  2E9D              cs popf
00005434  1DA1E0            sbb ax,0xe0a1
00005437  98                cbw
00005438  5B                pop bx
00005439  8DA06BC8          lea sp,[bx+si-0x3795]
0000543D  2642              es inc dx
0000543F  4D                dec bp
00005440  B242              mov dl,0x42
00005442  F8                clc
00005443  E98BFB            jmp 0x4fd1
00005446  81EDC06D          sub bp,0x6dc0
0000544A  07                pop es
0000544B  07                pop es
0000544C  046B              add al,0x6b
0000544E  8AEC              mov ch,ah
00005450  B8013C            mov ax,0x3c01
00005453  50                push ax
00005454  AA                stosb
00005455  EF                out dx,ax
00005456  19A2003C          sbb [bp+si+0x3c00],sp
0000545A  620B              bound cx,[bp+di]
0000545C  5E                pop si
0000545D  A5                movsw
0000545E  6C                insb
0000545F  0551BF            add ax,0xbf51
00005462  9F                lahf
00005463  005DC3            add [di-0x3d],bl
00005466  3C85              cmp al,0x85
00005468  338A1568          xor cx,[bp+si+0x6815]
0000546C  35A301            xor ax,0x1a3
0000546F  9B1E              wait push ds
00005471  768D              jna 0x5400
00005473  43                inc bx
00005474  016C1C            add [si+0x1c],bp
00005477  74BF              jz 0x5438
00005479  FC                cld
0000547A  7460              jz 0x54dc
0000547C  3C06              cmp al,0x6
0000547E  F4                hlt
0000547F  743A              jz 0x54bb
00005481  EB54              jmp short 0x54d7
00005483  10BA971C          adc [bp+si+0x1c97],bh
00005487  3C02              cmp al,0x2
00005489  51                push cx
0000548A  BF778F            mov di,0x8f77
0000548D  0BEB              or bp,bx
0000548F  46                inc si
00005490  7746              ja 0x54d8
00005492  06                push es
00005493  2401              and al,0x1
00005495  F6A23703          mul byte [bp+si+0x337]
00005499  A00283            mov al,[0x8302]
0000549C  16                push ss
0000549D  AD                lodsw
0000549E  06                push es
0000549F  3EDC8A2609        fmul qword [ds:bp+si+0x926]
000054A4  CD15              int 0x15
000054A6  F3126768          rep adc ah,[bx+0x68]
000054AA  A0695F            mov al,[0x5f69]
000054AD  40                inc ax
000054AE  E2A0              loop 0x5450
000054B0  93                xchg ax,bx
000054B1  007720            add [bx+0x20],dh
000054B4  02A0927B          add ah,[bx+si+0x7b92]
000054B8  06                push es
000054B9  2165C6            and [di-0x3a],sp
000054BC  EF                out dx,ax
000054BD  00A0950B          add [bx+si+0xb95],ah
000054C1  B507              mov ch,0x7
000054C3  20AD0DD0          and [di-0x2ff3],ch
000054C7  7005              jo 0x54ce
000054C9  02EB              add ch,bl
000054CB  2391799B          and dx,[bx+di-0x6487]
000054CF  1E                push ds
000054D0  A2B990            mov [0x90b9],al
000054D3  8805              mov [di],al
000054D5  2AA12ADE          sub ah,[bx+di-0x21d6]
000054D9  2407              and al,0x7
000054DB  94                xchg ax,sp
000054DC  18E9              sbb cl,ch
000054DE  1A8B61A3          sbb cl,[bp+di-0x5c9f]
000054E2  F050              lock push ax
000054E4  47                inc di
000054E5  0BA8B970          or bp,[bx+si+0x70b9]
000054E9  A00832            mov al,[0x3208]
000054EC  7EC5              jng 0x54b3
000054EE  1DAC03            sbb ax,0x3ac
000054F1  DA7213            fidiv dword [bp+si+0x13]
000054F4  C9                leave
000054F5  0D286F            or ax,0x6f28
000054F8  B20F              mov dl,0xf
000054FA  841A              test [bp+si],bl
000054FC  E503              in ax,0x3
000054FE  3C04              cmp al,0x4
00005500  C1                db 0xc1
00005501  F1                int1
00005502  005AAD            add [bp+si-0x53],bl
00005505  D6                salc
00005506  AB                stosw
00005507  CAC205            retf 0x5c2
0000550A  4D                dec bp
0000550B  FF                db 0xff
0000550C  7F04              jg 0x5512
0000550E  3F                aas
0000550F  7306              jnc 0x5517
00005511  B8E80B            mov ax,0xbe8
00005514  43                inc bx
00005515  B24D              mov dl,0x4d
00005517  B2F2              mov dl,0xf2
00005519  4F                dec di
0000551A  E9E816            jmp 0x6c05
0000551D  6D                insw
0000551E  80F0B5            xor al,0xb5
00005521  A95125            test ax,0x2551
00005524  EB9B              jmp short 0x54c1
00005526  0441              add al,0x41
00005528  76A9              jna 0x54d3
0000552A  A2B331            mov [0x31b3],al
0000552D  7F12              jg 0x5541
0000552F  BA3A8A            mov dx,0x8a3a
00005532  EC                in al,dx
00005533  21C8              and ax,cx
00005535  EAF1A6721B        jmp 0x1b72:0xa6f1
0000553A  E50A              in ax,0xa
0000553C  52                push dx
0000553D  A7                cmpsw
0000553E  89F1              mov cx,si
00005540  7ED3              jng 0x5515
00005542  42                inc dx
00005543  42                inc dx
00005544  57                push di
00005545  52                push dx
00005546  8A5DAC            mov bl,[di-0x54]
00005549  6A3D              push byte +0x3d
0000554B  0B7DAC            or di,[di-0x54]
0000554E  DD8EC799          fisttp qword [bp-0x6639]
00005552  3D8A00            cmp ax,0x8a
00005555  C7                db 0xc7
00005556  BE8458            mov si,0x5884
00005559  47                inc di
0000555A  6B404C75          imul ax,[bx+si+0x4c],byte +0x75
0000555E  F63B              idiv byte [bp+di]
00005560  46                inc si
00005561  02DB              add bl,bl
00005563  0805              or [di],al
00005565  4C                dec sp
00005566  B62D              mov dh,0x2d
00005568  13446A            adc ax,[si+0x6a]
0000556B  44                inc sp
0000556C  27                daa
0000556D  A05380            mov al,[0x8053]
00005570  392EBBB5          cmp [0xb5bb],bp
00005574  238DB851          and cx,[di+0x51b8]
00005578  1BEA              sbb bp,dx
0000557A  75A0              jnz 0x551c
0000557C  E9667B            jmp 0xd0e5
0000557F  1134              adc [si],si
00005581  331E7FFA          xor bx,[0xfa7f]
00005585  281D              sub [di],bl
00005587  A6                cmpsb
00005588  E288              loop 0x5512
0000558A  04A5              add al,0xa5
0000558C  157303            adc ax,0x373
0000558F  2E3D573B          cs cmp ax,0x3b57
00005593  D520              aad 0x20
00005595  3D42C4            cmp ax,0xc442
00005598  188D136E          sbb [di+0x6e13],cl
0000559C  85570E            test [bx+0xe],dx
0000559F  EACB2CB65D        jmp 0x5db6:0x2ccb
000055A4  3200              xor al,[bx+si]
000055A6  7B8D              jpo 0x5535
000055A8  06                push es
000055A9  0F                db 0x0f
000055AA  6D                insw
000055AB  0C8A              or al,0x8a
000055AD  DF                db 0xdf
000055AE  CB                retf
000055AF  89C4              mov sp,ax
000055B1  74ED              jz 0x55a0
000055B3  D6                salc
000055B4  EBD6              jmp short 0x558c
000055B6  A4                movsb
000055B7  11A80875          adc [bx+si+0x7508],bp
000055BB  661AB50606        o32 sbb dh,[di+0x606]
000055C0  742A              jz 0x55ec
000055C2  18A1585E          sbb [bx+di+0x5e58],ah
000055C6  EF                out dx,ax
000055C7  EF                out dx,ax
000055C8  F6E8              imul al
000055CA  0E                push cs
000055CB  C18E65F4FE        ror word [bp-0xb9b],byte 0xfe
000055D0  75A8              jnz 0x557a
000055D2  8E66FC            mov fs,[bp-0x4]
000055D5  648D24            lea sp,[fs:si]
000055D8  C418              les bx,[bx+si]
000055DA  0013              add [bp+di],dl
000055DC  6E                outsb
000055DD  41                inc cx
000055DE  645A              fs pop dx
000055E0  5D                pop bp
000055E1  2B86A115          sub ax,[bp+0x15a1]
000055E5  43                inc bx
000055E6  6AB4              push byte -0x4c
000055E8  2EF4              cs hlt
000055EA  6C                insb
000055EB  06                push es
000055EC  C8B30442          enter 0x4b3,0x42
000055F0  DD45E1            fld qword [di-0x1f]
000055F3  C501              lds ax,[bx+di]
000055F5  22F6              and dh,dh
000055F7  BF0123            mov di,0x2301
000055FA  ED                in ax,dx
000055FB  5D                pop bp
000055FC  0803              or [bp+di],al
000055FE  DD4D0A            fisttp qword [di+0xa]
00005601  2B0C              sub cx,[si]
00005603  6D                insw
00005604  0355B8            add dx,[di-0x48]
00005607  67F726            mul word [esi]
0000560A  A37BEE            mov [0xee7b],ax
0000560D  61                popa
0000560E  06                push es
0000560F  B425              mov ah,0x25
00005611  BB4DE2            mov bx,0xe24d
00005614  09FF              or di,di
00005616  DF7534            fbstp tword [di+0x34]
00005619  89D7              mov di,dx
0000561B  09C7              or di,ax
0000561D  75A8              jnz 0x55c7
0000561F  2E1E              cs push ds
00005621  65FB              gs sti
00005623  362425            ss and al,0x25
00005626  1B0A              sbb cx,[bp+si]
00005628  2F                das
00005629  7782              ja 0x55ad
0000562B  1F                pop ds
0000562C  EF                out dx,ax
0000562D  5D                pop bp
0000562E  5C                pop sp
0000562F  2D7717            sub ax,0x1777
00005632  119C7174          adc [si+0x7471],bx
00005636  16                push ss
00005637  E2CD              loop 0x5606
00005639  54                push sp
0000563A  0C0D              or al,0xd
0000563C  2F                das
0000563D  2D8576            sub ax,0x7685
00005640  6594              gs xchg ax,sp
00005642  A92A76            test ax,0x762a
00005645  05B910            add ax,0x10b9
00005648  B80F4C            mov ax,0x4c0f
0000564B  21BACB39          and [bp+si+0x39cb],di
0000564F  683B47            push word 0x473b
00005652  8612              xchg [bp+si],dl
00005654  EF                out dx,ax
00005655  54                push sp
00005656  2B7A49            sub di,[bp+si+0x49]
00005659  F6DB              neg bl
0000565B  2641              es inc cx
0000565D  F7                db 0xf7
0000565E  0D77D5            or ax,0xd577
00005661  3DDBD0            cmp ax,0xd0db
00005664  0A442E            or al,[si+0x2e]
00005667  CA26EC            retf 0xec26
0000566A  2F                das
0000566B  89F3              mov bx,si
0000566D  3423              xor al,0x23
0000566F  1D51A1            sbb ax,0xa151
00005672  6F                outsw
00005673  D31D              rcr word [di],cl
00005675  009C44B8          add [si-0x47bc],bl
00005679  74C2              jz 0x563d
0000567B  06                push es
0000567C  159201            adc ax,0x192
0000567F  BB6566            mov bx,0x6665
00005682  2692              es xchg ax,dx
00005684  91                xchg ax,cx
00005685  2EA004AB          mov al,[cs:0xab04]
00005689  11DA              adc dx,bx
0000568B  C9                leave
0000568C  C7                db 0xc7
0000568D  B17B              mov cl,0x7b
0000568F  AF                scasw
00005690  EAD0B08DA5        jmp 0xa58d:0xb0d0
00005695  6E                outsb
00005696  41                inc cx
00005697  20FE              and dh,bh
00005699  E53F              in ax,0x3f
0000569B  06                push es
0000569C  773A              ja 0x56d8
0000569E  7BFF              jpo 0x569f
000056A0  76AF              jna 0x5651
000056A2  D9C1              fld st1
000056A4  08CE              or dh,cl
000056A6  380655CE          cmp [0xce55],al
000056AA  E8D6AD            call 0x483
000056AD  0461              add al,0x61
000056AF  8731              xchg [bx+di],si
000056B1  97                xchg ax,di
000056B2  50                push ax
000056B3  701A              jo 0x56cf
000056B5  5D                pop bp
000056B6  C6                db 0xc6
000056B7  10A97786          adc [bx+di-0x7989],ch
000056BB  8551FF            test [bx+di-0x1],dx
000056BE  B7F7              mov bh,0xf7
000056C0  2270FF            and dh,[bx+si-0x1]
000056C3  1030              adc [bx+si],dh
000056C5  37                aaa
000056C6  2E227236          and dh,[cs:bp+si+0x36]
000056CA  58                pop ax
000056CB  90                nop
000056CC  F4                hlt
000056CD  69CA0C94          imul cx,dx,word 0x940c
000056D1  0D1842            or ax,0x4218
000056D4  6530D5            gs xor ch,dl
000056D7  21EE              and si,bp
000056D9  AD                lodsw
000056DA  091B              or [bp+di],bx
000056DC  8482C41B          test [bp+si+0x1bc4],al
000056E0  FF37              push word [bx]
000056E2  D50F              aad 0xf
000056E4  8713              xchg [bp+di],dx
000056E6  007323            add [bp+di+0x23],dh
000056E9  3F                aas
000056EA  5D                pop bp
000056EB  0C2D              or al,0x2d
000056ED  2D06F6            sub ax,0xf606
000056F0  41                inc cx
000056F1  3545E4            xor ax,0xe445
000056F4  54                push sp
000056F5  37                aaa
000056F6  B0D1              mov al,0xd1
000056F8  F7                db 0xf7
000056F9  0E                push cs
000056FA  037331            add si,[bp+di+0x31]
000056FD  384D79            cmp [di+0x79],cl
00005700  40                inc ax
00005701  88FF              mov bh,bh
00005703  C4                db 0xc4
00005704  E003              loopne 0x5709
00005706  E8F1E8            call 0x3ffa
00005709  2EB067            cs mov al,0x67
0000570C  2D6711            sub ax,0x1167
0000570F  C062BE1B          shl byte [bp+si-0x42],byte 0x1b
00005713  1F                pop ds
00005714  16                push ss
00005715  C6                db 0xc6
00005716  FA                cli
00005717  09B198AC          or [bx+di-0x5368],si
0000571B  DC0A              fmul qword [bp+si]
0000571D  5A                pop dx
0000571E  1110              adc [bx+si],dx
00005720  D9                db 0xd9
00005721  0AFF              or bh,bh
00005723  09D5              or bp,dx
00005725  21C3              and bx,ax
00005727  8078FAE9          cmp byte [bx+si-0x6],0xe9
0000572B  F9                stc
0000572C  FE89FBB0          dec byte [bx+di-0x4f05]
00005730  B3FD              mov bl,0xfd
00005732  46                inc si
00005733  C8DA8E64          enter 0x8eda,0x64
00005737  3919              cmp [bx+di],bx
00005739  DFC0              ffreep st0
0000573B  87FE              xchg si,di
0000573D  F74708DAFE        test word [bx+0x8],0xfeda
00005742  9F                lahf
00005743  0885844D          or [di+0x4d84],al
00005747  AE                scasb
00005748  3AF4              cmp dh,ah
0000574A  06                push es
0000574B  47                inc di
0000574C  007713            add [bx+0x13],dh
0000574F  CE                into
00005750  058EFD            add ax,0xfd8e
00005753  F9                stc
00005754  FD                std
00005755  E989FD            jmp 0x54e1
00005758  F6AA1B99          imul byte [bp+si-0x66e5]
0000575C  EC                in al,dx
0000575D  A855              test al,0x55
0000575F  61                popa
00005760  6C                insb
00005761  51                push cx
00005762  E80236            call 0x8d67
00005765  B404              mov ah,0x4
00005767  83B9851A1C        cmp word [bx+di+0x1a85],byte +0x1c
0000576C  233A              and di,[bp+si]
0000576E  A10272            mov ax,[0x7202]
00005771  E8485A            call 0xb1bc
00005774  16                push ss
00005775  B108              mov cl,0x8
00005777  D0                db 0xd0
00005778  7545              jnz 0x57bf
0000577A  C0                db 0xc0
0000577B  701D              jo 0x579a
0000577D  9A9A13D0AD        call 0xadd0:0x139a
00005782  05DF94            add ax,0x94df
00005785  8643FD            xchg [bp+di-0x3],al
00005788  B8F46F            mov ax,0x6ff4
0000578B  49                dec cx
0000578C  3F                aas
0000578D  FD                std
0000578E  23FF              and di,di
00005790  7109              jno 0x579b
00005792  6B1A6B            imul bx,[bp+si],byte +0x6b
00005795  266B37FF          imul si,[es:bx],byte -0x1
00005799  6B496B4E          imul cx,[bx+di+0x6b],byte +0x4e
0000579D  6B6F6B77          imul bp,[bx+0x6b],byte +0x77
000057A1  FF6B7C            jmp far [bp+di+0x7c]
000057A4  6B956BB06B        imul dx,[di-0x4f95],byte +0x6b
000057A9  C4                db 0xc4
000057AA  FF6B03            jmp far [bp+di+0x3]
000057AD  6C                insb
000057AE  096C13            or [si+0x13],bp
000057B1  6C                insb
000057B2  22FF              and bh,bh
000057B4  6C                insb
000057B5  2E6C              cs insb
000057B7  3D6C41            cmp ax,0x416c
000057BA  6C                insb
000057BB  4D                dec bp
000057BC  FF6C5E            jmp far [si+0x5e]
000057BF  6C                insb
000057C0  626C67            bound bp,[si+0x67]
000057C3  6C                insb
000057C4  BDFF6B            mov bp,0x6bff
000057C7  736C              jnc 0x5835
000057C9  796C              jns 0x5837
000057CB  896C8D            mov [si-0x73],bp
000057CE  7309              jnc 0x57d9
000057D0  017622            add [bp+0x22],si
000057D3  6E                outsb
000057D4  0FFF              ud0
000057D6  B66C              mov dh,0x6c
000057D8  C46CC9            les bp,[si-0x37]
000057DB  6C                insb
000057DC  D437              aam 0x37
000057DE  E06C              loopne 0x584c
000057E0  ED                in ax,dx
000057E1  FF6CFD            jmp far [si-0x3]
000057E4  6C                insb
000057E5  016D1B            add [di+0x1b],bp
000057E8  6D                insw
000057E9  23FF              and di,di
000057EB  6D                insw
000057EC  386D41            cmp [di+0x41],ch
000057EF  6D                insw
000057F0  49                dec cx
000057F1  6D                insw
000057F2  54                push sp
000057F3  FB                sti
000057F4  6D                insw
000057F5  636DF6            arpl [di-0xa],bp
000057F8  6D                insw
000057F9  25EE8C            and ax,0x8cee
000057FC  03FF              add di,di
000057FE  97                xchg ax,di
000057FF  6E                outsb
00005800  AE                scasb
00005801  6E                outsb
00005802  CD6E              int 0x6e
00005804  16                push ss
00005805  6F                outsw
00005806  6F                outsw
00005807  0129              add [bx+di],bp
00005809  6F                outsw
0000580A  34FF              xor al,0xff
0000580C  6F                outsw
0000580D  57                push di
0000580E  6F                outsw
0000580F  626F6A            bound bp,[bx+0x6a]
00005812  6F                outsw
00005813  84FF              test bh,bh
00005815  6F                outsw
00005816  886F96            mov [bx-0x6a],ch
00005819  6F                outsw
0000581A  CC                int3
0000581B  6F                outsw
0000581C  36FF705C          push word [ss:bx+si+0x5c]
00005820  7065              jo 0x5887
00005822  7071              jo 0x5895
00005824  7089              jo 0x57af
00005826  FF70C0            push word [bx+si-0x40]
00005829  70D2              jo 0x57fd
0000582B  7006              jo 0x5833
0000582D  7128              jno 0x5857
0000582F  B771              mov bh,0x71
00005831  007F71            add [bx+0x71],bh
00005834  DF967165          fist word [bp+0x6571]
00005838  9BFF71A3          wait push word [bx+di-0x5d]
0000583C  71CD              jno 0x580b
0000583E  71D3              jno 0x5813
00005840  7122              jno 0x5864
00005842  FF70FA            push word [bx+si-0x6]
00005845  712A              jno 0x5871
00005847  7283              jc 0x57cc
00005849  72A7              jc 0x57f2
0000584B  F5                cmc
0000584C  72B6              jc 0x5804
0000584E  72BF              jc 0x580f
00005850  6F                outsw
00005851  8D72DA            lea si,[bp+si-0x26]
00005854  73F7              jnc 0x584d
00005856  137487            adc si,[si-0x79]
00005859  7421              jz 0x587c
0000585B  FFA17497          jmp [bx+di-0x688c]
0000585F  73C1              jnc 0x5822
00005861  7458              jz 0x58bb
00005863  FD                std
00005864  757F              jnz 0x58e5
00005866  7588              jnz 0x57f0
00005868  7597              jnz 0x5801
0000586A  CD03              int 0x3
0000586C  11DE              adc si,bx
0000586E  F77517            div word [di+0x17]
00005871  FC                cld
00005872  034676            add ax,[bp+0x76]
00005875  B84D76            mov ax,0x764d
00005878  A865              test al,0x65
0000587A  68D291            push word 0x91d2
0000587D  16                push ss
0000587E  A8DA              test al,0xda
00005880  230C              and cx,[si]
00005882  A95E11            test ax,0x115e
00005885  5B                pop bx
00005886  732E              jnc 0x58b6
00005888  2C30              sub al,0x30
0000588A  51                push cx
0000588B  7A9D              jpe 0x582a
0000588D  F4                hlt
0000588E  3BB8B072          cmp di,[bx+si+0x72b0]
00005892  A864              test al,0x64
00005894  F5                cmc
00005895  D5A5              aad 0xa5
00005897  F607B7            test byte [bx],0xb7
0000589A  0E                push cs
0000589B  6702D5            a32 add dl,ch
0000589E  FF                db 0xff
0000589F  EB3C              jmp short 0x58dd
000058A1  387204            cmp [bp+si+0x4],dh
000058A4  3C4F              cmp al,0x4f
000058A6  DF7627            fbstp tword [bp+0x27]
000058A9  0A5637            or dl,[bp+0x37]
000058AC  5C                pop sp
000058AD  761C              jna 0x58cb
000058AF  3C5E              cmp al,0x5e
000058B1  DC6076            fsub qword [bx+si+0x76]
000058B4  11F3              adc bx,si
000058B6  6552              gs push dx
000058B8  6A29              push byte +0x29
000058BA  8569F4            test [bx+di-0xc],bp
000058BD  EB6C              jmp short 0x592b
000058BF  7510              jnz 0x58d1
000058C1  02C3              add al,bl
000058C3  EE                out dx,al
000058C4  16                push ss
000058C5  FE0A              dec byte [bp+si]
000058C7  8A5918            mov bl,[bx+di+0x18]
000058CA  BE1C31            mov si,0x311c
000058CD  FF20              jmp [bx+si]
000058CF  0C76              or al,0x76
000058D1  0D3CF7            or ax,0xf73c
000058D4  307409            xor [si+0x9],dh
000058D7  3C13              cmp al,0x13
000058D9  2227              and ah,[bx]
000058DB  62                db 0x62
000058DC  E280              loop 0x585e
000058DE  3E37              ds aaa
000058E0  EBA8              jmp short 0x588a
000058E2  16                push ss
000058E3  3BE6              cmp sp,si
000058E5  01EF              add di,bp
000058E7  05760B            add ax,0xb76
000058EA  0AFC              or bh,ah
000058EC  08720A            or [bp+si+0xa],dh
000058EF  3C0B              cmp al,0xb
000058F1  7714              ja 0x5907
000058F3  7E6F              jng 0x5964
000058F5  FC                cld
000058F6  BBF810            mov bx,0x10f8
000058F9  73DA              jnc 0x58d5
000058FB  85BE8DBD          test [bp-0x4273],di
000058FF  FF                db 0xff
00005900  D801              fadd dword [bx+di]
00005902  DB2EFFA7          fld tword [0xa7ff]
00005906  5E                pop si
00005907  6945D84F21        imul ax,[di-0x28],word 0x214f
0000590C  B65A              mov dh,0x5a
0000590E  F1                int1
0000590F  EA21CF7E2D        jmp 0x2d7e:0xcf21
00005914  B4E9              mov ah,0xe9
00005916  9D                popf
00005917  08DB              or bl,bl
00005919  23F0              and si,ax
0000591B  0D83FF            or ax,0xff83
0000591E  74F0              jz 0x5910
00005920  EBEE              jmp short 0x5910
00005922  0201              add al,[bx+di]
00005924  F5                cmc
00005925  E85CBD            call 0x1684
00005928  3F                aas
00005929  77C2              ja 0x58ed
0000592B  E8CEF7            call 0x50fc
0000592E  B5E9              mov ch,0xe9
00005930  F60110            test byte [bx+di],0x10
00005933  ED                in ax,dx
00005934  4B                dec bx
00005935  BD0D7F            mov bp,0x7f0d
00005938  1E                push ds
00005939  E8E2B3            call 0xd1e
0000593C  E0E9              loopne 0x5927
0000593E  6E                outsb
0000593F  0821              or [bx+di],ah
00005941  B4AD              mov ah,0xad
00005943  EC                in al,dx
00005944  99                cwd
00005945  8D                db 0x8d
00005946  F0BEDAC6          lock mov si,0xc6da
0000594A  C6                db 0xc6
0000594B  36865A12          xchg [ss:bp+si+0x12],bl
0000594F  FB                sti
00005950  D6                salc
00005951  40                inc ax
00005952  EF                out dx,ax
00005953  D0                db 0xd0
00005954  B257              mov dl,0x57
00005956  A5                movsw
00005957  FD                std
00005958  77A9              ja 0x5903
0000595A  E94D08            jmp 0x61aa
0000595D  F1                int1
0000595E  BABF16            mov dx,0x16bf
00005961  F2DBBC3FB6        repne fstp tword [si-0x49c1]
00005966  82                db 0x82
00005967  01E8              add ax,bp
00005969  9C                pushf
0000596A  F5                cmc
0000596B  AA                stosb
0000596C  6C                insb
0000596D  C04EF65C          ror byte [bp-0xa],byte 0x5c
00005971  41                inc cx
00005972  05C406            add ax,0x6c4
00005975  6AC1              push byte -0x3f
00005977  24D7              and al,0xd7
00005979  81017B78          add word [bx+di],0x787b
0000597D  B1B3              mov cl,0xb3
0000597F  EBED              jmp short 0x596e
00005981  AA                stosb
00005982  56                push si
00005983  42                inc dx
00005984  02C1              add al,cl
00005986  F047              lock inc di
00005988  6667E7BC          out 0xbc,eax
0000598C  CB                retf
0000598D  E0BC              loopne 0x594b
0000598F  DA6E38            fisubr dword [bp+0x38]
00005992  07                pop es
00005993  08E1              or cl,ah
00005995  5B                pop bx
00005996  6D                insw
00005997  D7                xlatb
00005998  1E                push ds
00005999  CD56              int 0x56
0000599B  2E                cs
0000599C  DF                db 0xdf
0000599D  FA                cli
0000599E  07                pop es
0000599F  68E9DD            push word 0xdde9
000059A2  F307              rep pop es
000059A4  20E2              and dl,ah
000059A6  AB                stosw
000059A7  BC5E60            mov sp,0x605e
000059AA  B184              mov cl,0x84
000059AC  99                cwd
000059AD  42                inc dx
000059AE  7DE2              jnl 0x5992
000059B0  39DA              cmp dx,bx
000059B2  6B87D87754        imul ax,[bx+0x77d8],byte +0x54
000059B7  CDF9              int 0xf9
000059B9  4E                dec si
000059BA  B6B1              mov dh,0xb1
000059BC  C7                db 0xc7
000059BD  EA2A34F82C        jmp 0x2cf8:0x342a
000059C2  2484              and al,0x84
000059C4  50                push ax
000059C5  2C37              sub al,0x37
000059C7  A6                cmpsb
000059C8  50                push ax
000059C9  2F                das
000059CA  43                inc bx
000059CB  84EB              test bl,ch
000059CD  C806CDB7          enter 0xcd06,0xb7
000059D1  3D53FF            cmp ax,0xff53
000059D4  0A1D              or bl,[di]
000059D6  D805              fadd dword [di]
000059D8  08B672BA          or [bp-0x458e],dh
000059DC  AD                lodsw
000059DD  80F6AE            xor dh,0xae
000059E0  E9AE07            jmp 0x6191
000059E3  C9                leave
000059E4  3F                aas
000059E5  0BCB              or cx,bx
000059E7  E91A01            jmp 0x5b04
000059EA  81B9A9551AFB      cmp word [bx+di+0x55a9],0xfb1a
000059F0  00EC              add ah,ch
000059F2  A8B0              test al,0xb0
000059F4  F31B4801          rep sbb cx,[bx+si+0x1]
000059F8  60                pusha
000059F9  0BF8              or di,ax
000059FB  D6                salc
000059FC  F6E9              imul cl
000059FE  FF886697          dec word [bx+si-0x689a]
00005A02  0E                push cs
00005A03  0F8AF7E9          jpe near 0x43fe
00005A07  80F017            xor al,0x17
00005A0A  76EB              jna 0x59f7
00005A0C  F060              lock pusha
00005A0E  0FFABAF4E9        psubd mm7,[bp+si-0x160c]
00005A13  E08B              loopne 0x59a0
00005A15  3199203E          xor [bx+di+0x3e20],bx
00005A19  F1                int1
00005A1A  F0E9CFDB          lock jmp 0x35ed
00005A1E  1002              adc [bp+si],al
00005A20  CC                int3
00005A21  5B                pop bx
00005A22  4E                dec si
00005A23  8ED8              mov ds,ax
00005A25  EBAF              jmp short 0x59d6
00005A27  143F              adc al,0x3f
00005A29  47                inc di
00005A2A  F5                cmc
00005A2B  E9BA00            jmp 0x5ae8
00005A2E  51                push cx
00005A2F  6E                outsb
00005A30  66E9B429055D      jmp dword 0x5d0583ea
00005A36  3AF6              cmp dh,dh
00005A38  51                push cx
00005A39  32CA              xor cl,dl
00005A3B  1B8AE92E          sbb cx,[bp+si+0x2ee9]
00005A3F  73CB              jnc 0x5a0c
00005A41  4F                dec di
00005A42  45                inc bp
00005A43  57                push di
00005A44  F23D870B          repne cmp ax,0xb87
00005A48  F3EE              rep out dx,al
00005A4A  1C35              sbb al,0x35
00005A4C  DA2D              fisubr dword [di]
00005A4E  EE                out dx,al
00005A4F  016304            add [bp+di+0x4],sp
00005A52  5C                pop sp
00005A53  A1DEDC            mov ax,[0xdcde]
00005A56  EC                in al,dx
00005A57  E908F4            jmp 0x4e62
00005A5A  F1                int1
00005A5B  BBCB01            mov bx,0x1cb
00005A5E  07                pop es
00005A5F  872F              xchg [bx],bp
00005A61  C8F2F9EB          enter 0xf9f2,0xeb
00005A65  69B902002797      imul di,[bx+di+0x2],word 0x9727
00005A6B  F1                int1
00005A6C  1A1B              sbb bl,[bp+di]
00005A6E  C10AF5            ror word [bp+si],byte 0xf5
00005A71  16                push ss
00005A72  F2E9D743          bnd jmp 0x9e4d
00005A76  41                inc cx
00005A77  5D                pop bp
00005A78  140F              adc al,0xf
00005A7A  E8FEFE            call 0x597b
00005A7D  18E9              sbb cl,ch
00005A7F  CA066A            retf 0x6a06
00005A82  05E659            add ax,0x59e6
00005A85  380C              cmp [si],cl
00005A87  3CBC              cmp al,0xbc
00005A89  306A06            xor [bp+si+0x6],ch
00005A8C  28DA              sub dl,bl
00005A8E  09C0              or ax,ax
00005A90  91                xchg ax,cx
00005A91  D6                salc
00005A92  6652              push edx
00005A94  07                pop es
00005A95  C3                ret
00005A96  F28C2A            repne mov [bp+si],gs
00005A99  B409              mov ah,0x9
00005A9B  55                push bp
00005A9C  350E46            xor ax,0x460e
00005A9F  B03A              mov al,0x3a
00005AA1  9C                pushf
00005AA2  DF3EEEE8          fistp qword [0xe8ee]
00005AA6  6C                insb
00005AA7  B8EBBF            mov ax,0xbfeb
00005AAA  0A07              or al,[bx]
00005AAC  D7                xlatb
00005AAD  B851C3            mov ax,0xc351
00005AB0  7D0F              jnl 0x5ac1
00005AB2  B5E9              mov ch,0xe9
00005AB4  84564A            test [bp+0x4a],dl
00005AB7  86BB7F14          xchg [bp+di+0x147f],bh
00005ABB  C5B7E9B1          lds si,[bx-0x4e17]
00005ABF  7625              jna 0x5ae6
00005AC1  F0E5B7            lock in ax,0xb7
00005AC4  EBE0              jmp short 0x5aa6
00005AC6  C2666F            ret 0x6f66
00005AC9  F6FF              idiv bh
00005ACB  02E9              add ch,cl
00005ACD  63A9068A          arpl [bx+di-0x75fa],bp
00005AD1  19EC              sbb sp,bp
00005AD3  1F                pop ds
00005AD4  F8                clc
00005AD5  E95406            jmp 0x612c
00005AD8  49                dec cx
00005AD9  0E                push cs
00005ADA  8D1A              lea bx,[bp+si]
00005ADC  D6                salc
00005ADD  EA012589F6        jmp 0xf689:0x2501
00005AE2  9B44              wait inc sp
00005AE4  ED                in ax,dx
00005AE5  06                push es
00005AE6  E9B7C7            jmp 0x22a0
00005AE9  ED                in ax,dx
00005AEA  FD                std
00005AEB  13D8              adc bx,ax
00005AED  2235              and dh,[di]
00005AEF  F04D              lock dec bp
00005AF1  BCEC45            mov sp,0x45ec
00005AF4  B8E2EE            mov ax,0xeee2
00005AF7  00EC              add ah,ch
00005AF9  B754              mov bh,0x54
00005AFB  0D4D50            or ax,0x504d
00005AFE  236FB3            and bp,[bx-0x4d]
00005B01  0FB47CD1          lfs di,[si-0x2f]
00005B05  128946EF          adc cl,[bx+di-0x10ba]
00005B09  D007              rol byte [bx],1
00005B0B  4B                dec bx
00005B0C  6A3D              push byte +0x3d
00005B0E  F8                clc
00005B0F  751D              jnz 0x5b2e
00005B11  648A4596          mov al,[fs:di-0x6a]
00005B15  CE                into
00005B16  7521              jnz 0x5b39
00005B18  307874            xor [bx+si+0x74],bh
00005B1B  7511              jnz 0x5b2e
00005B1D  BDBBCE            mov bp,0xcebb
00005B20  86069602          xchg [0x296],al
00005B24  EB36              jmp short 0x5b5c
00005B26  8905              mov [di],ax
00005B28  AE                scasb
00005B29  E2A0              loop 0x5acb
00005B2B  8605              xchg [di],al
00005B2D  99                cwd
00005B2E  100F              adc [bx],cl
00005B30  3EC46C08          les bp,[ds:si+0x8]
00005B34  E5F9              in ax,0xf9
00005B36  023D              add bh,[di]
00005B38  77DC              ja 0x5b16
00005B3A  05235D            add ax,0x5d23
00005B3D  053606            add ax,0x636
00005B40  2B0D              sub cx,[di]
00005B42  67CE              a32 into
00005B44  B304              mov bl,0x4
00005B46  38E1              cmp cl,ah
00005B48  03EB              add bp,bx
00005B4A  C5B84305          lds di,[bx+si+0x543]
00005B4E  0AAD25A1          or ch,[di-0x5edb]
00005B52  7382              jnc 0x5ad6
00005B54  5A                pop dx
00005B55  0408              add al,0x8
00005B57  58                pop ax
00005B58  33C2              xor ax,dx
00005B5A  BB5BE8            mov bx,0xe85b
00005B5D  0986147B          or [bp+0x7b14],ax
00005B61  E1EA              loope 0x5b4d
00005B63  80CC90            or ah,0x90
00005B66  7534              jnz 0x5b9c
00005B68  034BF4            add cx,[bp+di-0xc]
00005B6B  05E001            add ax,0x1e0
00005B6E  E8395C            call 0xb7aa
00005B71  4E                dec si
00005B72  95                xchg ax,bp
00005B73  0570D3            add ax,0xd370
00005B76  35783C            xor ax,0x3c78
00005B79  7E1F              jng 0x5b9a
00005B7B  52                push dx
00005B7C  220C              and cl,[si]
00005B7E  053AA3            add ax,0xa33a
00005B81  DCEB              fsub to st3
00005B83  F7D0              not ax
00005B85  10673C            adc [bx+0x3c],ah
00005B88  0D2836            or ax,0x3628
00005B8B  FA                cli
00005B8C  06                push es
00005B8D  96                xchg ax,si
00005B8E  8D0F              lea cx,[bx]
00005B90  37                aaa
00005B91  8D5DFE            lea bx,[di-0x2]
00005B94  03A42A6C          add sp,[si+0x6c2a]
00005B98  6A50              push byte +0x50
00005B9A  AB                stosw
00005B9B  70D8              jo 0x5b75
00005B9D  004501            add [di+0x1],al
00005BA0  00B81436          add [bx+si+0x3614],bh
00005BA4  E425              in al,0x25
00005BA6  C0B8091104        sar byte [bx+si+0x1109],byte 0x4
00005BAB  887776            mov [bx+0x76],dh
00005BAE  C6                db 0xc6
00005BAF  300E3405          xor [0x534],cl
00005BB3  8DB00BDC          lea si,[bx+si-0x23f5]
00005BB7  5E                pop si
00005BB8  2E31FD            cs xor bp,di
00005BBB  085AAD            or [bp+si-0x53],bl
00005BBE  2116AF5E          and [0x5eaf],dx
00005BC2  17                pop ss
00005BC3  3320              xor sp,[bx+si]
00005BC5  051E09            add ax,0x91e
00005BC8  3105              xor [di],ax
00005BCA  8CEC              mov sp,gs
00005BCC  97                xchg ax,di
00005BCD  6222              bound sp,[bp+si]
00005BCF  50                push ax
00005BD0  BDD87A            mov bp,0x7ad8
00005BD3  0905              or [di],ax
00005BD5  6464347F          fs xor al,0x7f
00005BD9  0F                db 0x0f
00005BDA  AE                scasb
00005BDB  DFE0              fnstsw ax
00005BDD  04A0              add al,0xa0
00005BDF  0161A0            add [bx+di-0x60],sp
00005BE2  BA65F9            mov dx,0xf965
00005BE5  FC                cld
00005BE6  6BA9A20B46        imul bp,[bx+di+0xba2],byte +0x46
00005BEB  8F                db 0x8f
00005BEC  DB                db 0xdb
00005BED  FC                cld
00005BEE  2B5EA0            sub bx,[bp-0x60]
00005BF1  EA54224B00        jmp 0x4b:0x2254
00005BF6  8B6D50            mov bp,[di+0x50]
00005BF9  83388B            cmp word [bx+si],byte -0x75
00005BFC  226DBD            and ch,[di-0x43]
00005BFF  112C              adc [si],bp
00005C01  2F                das
00005C02  EC                in al,dx
00005C03  85DB              test bx,bx
00005C05  75C7              jnz 0x5bce
00005C07  014B72            add [bp+di+0x72],cx
00005C0A  B96BBA            mov cx,0xba6b
00005C0D  11EF              adc di,bp
00005C0F  2B99175F          sub bx,[bx+di+0x5f17]
00005C13  40                inc ax
00005C14  635072            arpl [bx+si+0x72],dx
00005C17  04A3              add al,0xa3
00005C19  65AA              gs stosb
00005C1B  96                xchg ax,si
00005C1C  7B58              jpo 0x5c76
00005C1E  0486              add al,0x86
00005C20  9A02DA674D        call 0x4d67:0xda02
00005C25  6C                insb
00005C26  0C4E              or al,0x4e
00005C28  EB60              jmp short 0x5c8a
00005C2A  27                daa
00005C2B  EE                out dx,al
00005C2C  E1C8              loope 0x5bf6
00005C2E  2BEC              sub bp,sp
00005C30  E93A07            jmp 0x636d
00005C33  0E                push cs
00005C34  1F                pop ds
00005C35  0E                push cs
00005C36  C5                db 0xc5
00005C37  EBEF              jmp short 0x5c28
00005C39  7692              jna 0x5bcd
00005C3B  EE                out dx,al
00005C3C  50                push ax
00005C3D  36740E            ss jz 0x5c4e
00005C40  C112C1            rcl word [bp+si],byte 0xc1
00005C43  7CBF              jl 0x5c04
00005C45  5F                pop di
00005C46  B8DB06            mov ax,0x6db
00005C49  59                pop cx
00005C4A  B695              mov dh,0x95
00005C4C  0F2AD6            cvtpi2ps xmm2,mm6
00005C4F  8140D160AB        add word [bx+si-0x2f],0xab60
00005C54  98                cbw
00005C55  59                pop cx
00005C56  9B0880F6CD        wait or [bx+si-0x320a],al
00005C5B  09EB              or bx,bp
00005C5D  DA25              fisub dword [di]
00005C5F  FE                db 0xfe
00005C60  EC                in al,dx
00005C61  E82CC1            call 0x1d90
00005C64  EBB9              jmp short 0x5c1f
00005C66  94                xchg ax,sp
00005C67  1C66              sbb al,0x66
00005C69  F23B6A5E          repne cmp bp,[bp+si+0x5e]
00005C6D  EE                out dx,al
00005C6E  7E14              jng 0x5c84
00005C70  0BB99BD4          or di,[bx+di-0x2b65]
00005C74  48                dec ax
00005C75  B9D3EB            mov cx,0xebd3
00005C78  C12571            shl word [di],byte 0x71
00005C7B  E4B9              in al,0xb9
00005C7D  37                aaa
00005C7E  87D1              xchg cx,dx
00005C80  A8E3              test al,0xe3
00005C82  C7                db 0xc7
00005C83  EB8D              jmp short 0x5c12
00005C85  2CAB              sub al,0xab
00005C87  029E74F9          add bl,[bp-0x68c]
00005C8B  0350C1            add dx,[bx+si-0x3f]
00005C8E  D7                xlatb
00005C8F  94                xchg ax,sp
00005C90  ED                in ax,dx
00005C91  50                push ax
00005C92  B78D              mov bh,0x8d
00005C94  EE                out dx,al
00005C95  46                inc si
00005C96  753F              jnz 0x5cd7
00005C98  098E4E77          or [bp+0x774e],cx
00005C9C  BBF471            mov bx,0x71f4
00005C9F  5C                pop sp
00005CA0  59                pop cx
00005CA1  DD71A0            fnsave [bx+di-0x60]
00005CA4  06                push es
00005CA5  4E                dec si
00005CA6  C51B              lds bx,[bp+di]
00005CA8  1D9706            sbb ax,0x697
00005CAB  3836A436          cmp [0x36a4],dh
00005CAF  1A21              sbb ah,[bx+di]
00005CB1  1E                push ds
00005CB2  7DBA              jnl 0x5c6e
00005CB4  03835196          add ax,[bp+di-0x69af]
00005CB8  B0C6              mov al,0xc6
00005CBA  EE                out dx,al
00005CBB  6D                insw
00005CBC  742B              jz 0x5ce9
00005CBE  6AB9              push byte -0x47
00005CC0  DBAB064D          fld tword [bp+di+0x4d06]
00005CC4  98                cbw
00005CC5  1A33              sbb dh,[bp+di]
00005CC7  BDB70B            mov bp,0xbb7
00005CCA  EE                out dx,al
00005CCB  EB81              jmp short 0x5c4e
00005CCD  BD8065            mov bp,0x6580
00005CD0  EE                out dx,al
00005CD1  F1                int1
00005CD2  7412              jz 0x5ce6
00005CD4  3C39              cmp al,0x39
00005CD6  2CB1              sub al,0xb1
00005CD8  816D6D3ABB        sub word [di+0x6d],0xbb3a
00005CDD  7D7B              jnl 0x5d5a
00005CDF  037960            add di,[bx+di+0x60]
00005CE2  C82A54D9          enter 0x542a,0xd9
00005CE6  92                xchg ax,dx
00005CE7  20CF              and bh,cl
00005CE9  317BC7            xor [bp+di-0x39],di
00005CEC  E9E9ED            jmp 0x4ad8
00005CEF  FE                db 0xfe
00005CF0  26F6F3            es div bl
00005CF3  0B557D            or dx,[di+0x7d]
00005CF6  8D7203            lea si,[bp+si+0x3]
00005CF9  D07EF7            sar byte [bp-0x9],1
00005CFC  B8373D            mov ax,0x3d37
00005CFF  EF                out dx,ax
00005D00  9BB460            wait mov ah,0x60
00005D03  03A83D9A          add bp,[bx+si-0x65c3]
00005D07  56                push si
00005D08  59                pop cx
00005D09  17                pop ss
00005D0A  8E5003            mov ss,[bx+si+0x3]
00005D0D  7EAA              jng 0x5cb9
00005D0F  CE                into
00005D10  BEB517            mov si,0x17b5
00005D13  D7                xlatb
00005D14  42                inc dx
00005D15  EE                out dx,al
00005D16  0BCB              or cx,bx
00005D18  E9B2A4            jmp 0x1cd
00005D1B  FE                db 0xfe
00005D1C  67C2D530          ret 0x30d5
00005D20  7E53              jng 0x5d75
00005D22  7F57              jg 0x5d7b
00005D24  C7C37001          mov bx,0x170
00005D28  E9DAD3            jmp 0x3105
00005D2B  F1                int1
00005D2C  EC                in al,dx
00005D2D  016FB6            add [bx-0x4a],bp
00005D30  16                push ss
00005D31  0238              add bh,[bx+si]
00005D33  3BA00E5E          cmp sp,[bx+si+0x5e0e]
00005D37  1D7D18            sbb ax,0x187d
00005D3A  C11884            rcr word [bx+si],byte 0x84
00005D3D  6B10F3            imul dx,[bx+si],byte -0xd
00005D40  6212              bound dx,[bp+si]
00005D42  27                daa
00005D43  B6FC              mov dh,0xfc
00005D45  02B88C14          add bh,[bx+si+0x148c]
00005D49  E8BE0B            call 0x690a
00005D4C  09E2              or dx,sp
00005D4E  DD02              fld qword [bp+si]
00005D50  FFF3              push bx
00005D52  F7B8029A          idiv word [bx+si-0x65fe]
00005D56  6E                outsb
00005D57  891A              mov [bp+si],bx
00005D59  11C1              adc cx,ax
00005D5B  8A85E749          mov al,[di+0x49e7]
00005D5F  F4                hlt
00005D60  D6                salc
00005D61  E8F411            call 0x6f58
00005D64  10F6              adc dh,dh
00005D66  29A027E3          sub [bx+si-0x1cd9],sp
00005D6A  96                xchg ax,si
00005D6B  B543              mov ch,0x43
00005D6D  72EC              jc 0x5d5b
00005D6F  8B88BA56          mov cx,[bx+si+0x56ba]
00005D73  2BCF              sub cx,di
00005D75  237D0E            and di,[di+0xe]
00005D78  EF                out dx,ax
00005D79  E8D411            call 0x6f50
00005D7C  49                dec cx
00005D7D  97                xchg ax,di
00005D7E  A1BF14            mov ax,[0x14bf]
00005D81  DDEB              fucomp st3
00005D83  B41A              mov ah,0x1a
00005D85  E9E2A2            jmp 0x6a
00005D88  FD                std
00005D89  C6                db 0xc6
00005D8A  AB                stosw
00005D8B  5F                pop di
00005D8C  42                inc dx
00005D8D  7F0A              jg 0x5d99
00005D8F  395DD8            cmp [di-0x28],bx
00005D92  304EF8            xor [bp-0x8],cl
00005D95  7D76              jnl 0x5e0d
00005D97  E86B2D            call 0x8b05
00005D9A  0000              add [bx+si],al
00005D9C  8CA14C45          mov [bx+di+0x454c],fs
00005DA0  6A67              push byte +0x67
00005DA2  51                push cx
00005DA3  1105              adc [di],ax
00005DA5  EA4703601E        jmp 0x1e60:0x347
00005DAA  0AA220A1          or ah,[bp+si-0x5ee0]
00005DAE  79DB              jns 0x5d8b
00005DB0  700F              jo 0x5dc1
00005DB2  6C                insb
00005DB3  104DDC            adc [di-0x24],cl
00005DB6  08A24D8D          or [bp+si-0x72b3],ah
00005DBA  01EA              add dx,bp
00005DBC  3814              cmp [si],dl
00005DBE  6A05              push byte +0x5
00005DC0  32865E47          xor al,[bp+0x475e]
00005DC4  E86711            call 0x6f2e
00005DC7  FC                cld
00005DC8  B6B4              mov dh,0xb4
00005DCA  FC                cld
00005DCB  F207              repne pop es
00005DCD  F8                clc
00005DCE  AB                stosw
00005DCF  FC                cld
00005DD0  A13470            mov ax,[0x7034]
00005DD3  2E73BC            cs jnc 0x5d92
00005DD6  07                pop es
00005DD7  78E9              js 0x5dc2
00005DD9  3802              cmp [bp+si],al
00005DDB  CC                int3
00005DDC  92                xchg ax,dx
00005DDD  41                inc cx
00005DDE  3415              xor al,0x15
00005DE0  7521              jnz 0x5e03
00005DE2  0CA5              or al,0xa5
00005DE4  12A1CDB4          adc ah,[bx+di-0x4b33]
00005DE8  7520              jnz 0x5e0a
00005DEA  C4ADD10C          les bp,[di+0xcd1]
00005DEE  CB                retf
00005DEF  EC                in al,dx
00005DF0  26EE              es out dx,al
00005DF2  41                inc cx
00005DF3  1BC9              sbb cx,cx
00005DF5  EE                out dx,al
00005DF6  C55845            lds bx,[bx+si+0x45]
00005DF9  AD                lodsw
00005DFA  6406              fs push es
00005DFC  E0F0              loopne 0x5dee
00005DFE  52                push dx
00005DFF  41                inc cx
00005E00  0C9F              or al,0x9f
00005E02  90                nop
00005E03  00CA              add dl,cl
00005E05  DFB68050          fbstp tword [bp+0x5080]
00005E09  16                push ss
00005E0A  96                xchg ax,si
00005E0B  F27E56            bnd jng 0x5e64
00005E0E  DEE9              fsubp st1
00005E10  B65F              mov dh,0x5f
00005E12  A0BB7E            mov al,[0x7ebb]
00005E15  5A                pop dx
00005E16  FB                sti
00005E17  6B501169          imul dx,[bx+si+0x11],byte +0x69
00005E1B  16                push ss
00005E1C  CF                iret
00005E1D  57                push di
00005E1E  F5                cmc
00005E1F  FB                sti
00005E20  5E                pop si
00005E21  14BA              adc al,0xba
00005E23  80D7C2            adc bh,0xc2
00005E26  BDA6E0            mov bp,0xe0a6
00005E29  6F                outsw
00005E2A  0452              add al,0x52
00005E2C  E8F0B9            call 0x181f
00005E2F  A00D5D            mov al,[0x5d0d]
00005E32  4D                dec bp
00005E33  E9D2BD            jmp 0x1c08
00005E36  014B73            add [bp+di+0x73],cx
00005E39  15E990            adc ax,0x90e9
00005E3C  016B18            add [bp+di+0x18],bp
00005E3F  F07F77            lock jg 0x5eb9
00005E42  10C4              adc ah,al
00005E44  E90D8E            jmp 0xec54
00005E47  FD                std
00005E48  201B              and [bp+di],bl
00005E4A  A4                movsb
00005E4B  F03E66B66D        ds lock o32 mov dh,0x6d
00005E50  26C43B            les di,[es:bp+di]
00005E53  652F              gs das
00005E55  FD                std
00005E56  720D              jc 0x5e65
00005E58  761E              jna 0x5e78
00005E5A  112C              adc [si],bp
00005E5C  F73A              idiv word [bp+si]
00005E5E  0209              add cl,[bx+di]
00005E60  FA                cli
00005E61  30E9              xor cl,ch
00005E63  59                pop cx
00005E64  017F88            add [bx-0x78],di
00005E67  53                push bx
00005E68  01A00232          add [bx+si+0x3202],sp
00005E6C  EBC7              jmp short 0x5e35
00005E6E  EBAD              jmp short 0x5e1d
00005E70  6E                outsb
00005E71  6656              push esi
00005E73  E3EC              jcxz 0x5e61
00005E75  3C82              cmp al,0x82
00005E77  3D51BC            cmp ax,0xbc51
00005E7A  AD                lodsw
00005E7B  243F              and al,0x3f
00005E7D  3C75              cmp al,0x75
00005E7F  C3                ret
00005E80  35F610            xor ax,0x10f6
00005E83  A220ED            mov [0xed20],al
00005E86  E94C26            jmp 0x84d5
00005E89  B689              mov dh,0x89
00005E8B  1F                pop ds
00005E8C  BCA59A            mov sp,0x9aa5
00005E8F  E33E              jcxz 0x5ecf
00005E91  8C00              mov [bx+si],es
00005E93  20B61D01          and [bp+0x11d],dh
00005E97  6C                insb
00005E98  3411              xor al,0x11
00005E9A  BCFF01            mov sp,0x1ff
00005E9D  A1243E            mov ax,[0x3e24]
00005EA0  11A023EE          adc [bx+si-0x11dd],sp
00005EA4  44                inc sp
00005EA5  EF                out dx,ax
00005EA6  A027EE            mov al,[0xee27]
00005EA9  05EDA0            add ax,0xa0ed
00005EAC  2660              es pusha
00005EAE  2C40              sub al,0x40
00005EB0  28DD              sub ch,bl
00005EB2  F4                hlt
00005EB3  A12AB8            mov ax,[0xb82a]
00005EB6  3BB6FACB          cmp si,[bp-0x3406]
00005EBA  B185              mov cl,0x85
00005EBC  F5                cmc
00005EBD  92                xchg ax,dx
00005EBE  DB8FFCF8          fisttp dword [bx-0x704]
00005EC2  EE                out dx,al
00005EC3  4B                dec bx
00005EC4  7F0C              jg 0x5ed2
00005EC6  E9E97D            jmp 0xdcb2
00005EC9  FC                cld
00005ECA  2894189E          sub [si-0x61e8],dl
00005ECE  86B5AFF2          xchg [di-0xd51],dh
00005ED2  D5F4              aad 0xf4
00005ED4  F4                hlt
00005ED5  09C8              or ax,cx
00005ED7  52                push dx
00005ED8  8F                db 0x8f
00005ED9  2DD28B            sub ax,0x8bd2
00005EDC  46                inc si
00005EDD  2CC2              sub al,0xc2
00005EDF  F8                clc
00005EE0  6C                insb
00005EE1  C547F9            lds ax,[bx-0x7]
00005EE4  EB6D              jmp short 0x5f53
00005EE6  7CC1              jl 0x5ea9
00005EE8  06                push es
00005EE9  D1263709          shl word [0x937],1
00005EED  673C09            cmp al,0x9
00005EF0  FB                sti
00005EF1  763F              jna 0x5f32
00005EF3  E99200            jmp 0x5f88
00005EF6  C1DA90            rcr dx,byte 0x90
00005EF9  2CA3              sub al,0xa3
00005EFB  52                push dx
00005EFC  9E                sahf
00005EFD  1C6A              sbb al,0x6a
00005EFF  6F                outsw
00005F00  6C                insb
00005F01  C9                leave
00005F02  9F                lahf
00005F03  E9D662            jmp 0xc1dc
00005F06  F7                db 0xf7
00005F07  89F7              mov di,si
00005F09  F6B82082          idiv byte [bx+si-0x7de0]
00005F0D  7CF2              jl 0x5f01
00005F0F  BA9E11            mov dx,0x119e
00005F12  2941DD            sub [bx+di-0x23],ax
00005F15  83BA3A03F1        cmp word [bp+si+0x33a],byte -0xf
00005F1A  07                pop es
00005F1B  F06384E9FB        lock arpl [si-0x417],ax
00005F20  7B00              jpo 0x5f22
00005F22  682511            push word 0x1125
00005F25  649A69DD70FF      fs call 0xff70:0xdd69
00005F2B  36BD1AE8          ss mov bp,0xe81a
00005F2F  4F                dec di
00005F30  A3CC67            mov [0x67cc],ax
00005F33  1B5299            sbb dx,[bp+si-0x67]
00005F36  763F              jna 0x5f77
00005F38  EE                out dx,al
00005F39  E157              loope 0x5f92
00005F3B  0046AA            add [bp-0x56],al
00005F3E  8E7457            mov segr6,[si+0x57]
00005F41  0C8C              or al,0x8c
00005F43  2B5275            sub dx,[bp+si+0x75]
00005F46  0A267DA6          or ah,[0xa67d]
00005F4A  16                push ss
00005F4B  B6D9              mov dh,0xd9
00005F4D  A3D681            mov [0x81d6],ax
00005F50  9F                lahf
00005F51  ED                in ax,dx
00005F52  A2F500            mov [0xf5],al
00005F55  ED                in ax,dx
00005F56  F3F601ED          rep test byte [bx+di],0xed
00005F5A  01F7              add di,si
00005F5C  C5                db 0xc5
00005F5D  EBA2              jmp short 0x5f01
00005F5F  E3D7              jcxz 0x5f38
00005F61  49                dec cx
00005F62  C057F4A4          rcl byte [bx-0xc],byte 0xa4
00005F66  59                pop cx
00005F67  C422              les sp,[bp+si]
00005F69  7A95              jpe 0x5f00
00005F6B  B6AE              mov dh,0xae
00005F6D  0C1A              or al,0x1a
00005F6F  17                pop ss
00005F70  59                pop cx
00005F71  D001              rol byte [bx+di],1
00005F73  CC                int3
00005F74  4F                dec di
00005F75  B350              mov bl,0x50
00005F77  DB541D            fist dword [si+0x1d]
00005F7A  9F                lahf
00005F7B  B595              mov ch,0x95
00005F7D  D039              sar byte [bx+di],1
00005F7F  0E                push cs
00005F80  058ACC            add ax,0xcc8a
00005F83  0314              add dx,[si]
00005F85  90                nop
00005F86  43                inc bx
00005F87  1E                push ds
00005F88  42                inc dx
00005F89  C3                ret
00005F8A  DF7412            fbstp tword [si+0x12]
00005F8D  74D6              jz 0x5f65
00005F8F  1C20              sbb al,0x20
00005F91  3AE9              cmp ch,cl
00005F93  59                pop cx
00005F94  28FE              sub dh,bh
00005F96  B0EB              mov al,0xeb
00005F98  C4974B57          les dx,[bx+0x574b]
00005F9C  FD                std
00005F9D  28EB              sub bl,ch
00005F9F  B668              mov dh,0x68
00005FA1  1F                pop ds
00005FA2  118B49C2          adc [bp+di-0x3db7],cx
00005FA6  1F                pop ds
00005FA7  8CA2E910          mov [bp+si+0x10e9],fs
00005FAB  8BFB              mov di,bx
00005FAD  3010              xor [bx+si],dl
00005FAF  706D              jo 0x601e
00005FB1  AA                stosb
00005FB2  50                push ax
00005FB3  97                xchg ax,di
00005FB4  32599F            xor bl,[bx+di-0x61]
00005FB7  1C73              sbb al,0x73
00005FB9  2A4EAF            sub cl,[bp-0x51]
00005FBC  0AB08118          or dh,[bx+si+0x1881]
00005FC0  45                inc bp
00005FC1  0A65C7            or ah,[di-0x39]
00005FC4  368C44BF          mov [ss:si-0x41],es
00005FC8  1A8107DD          sbb al,[bx+di-0x22f9]
00005FCC  EB6E              jmp short 0x603c
00005FCE  FF4D94            dec word [di-0x6c]
00005FD1  44                inc sp
00005FD2  8540FF            test [bx+si-0x1],ax
00005FD5  B8FFB9            mov ax,0xb9ff
00005FD8  06                push es
00005FD9  39FB              cmp bx,di
00005FDB  43                inc bx
00005FDC  FF681E            jmp far [bx+si+0x1e]
00005FDF  57                push di
00005FE0  01C2              add dx,ax
00005FE2  34A2              xor al,0xa2
00005FE4  82                db 0x82
00005FE5  38740C            cmp [si+0xc],dh
00005FE8  24E4              and al,0xe4
00005FEA  D8C3              fadd st3
00005FEC  881F              mov [bx],bl
00005FEE  6F                outsw
00005FEF  0465              add al,0x65
00005FF1  F7F7              div di
00005FF3  1CE9              sbb al,0xe9
00005FF5  4B                dec bx
00005FF6  EA41F41328        jmp 0x2813:0xf441
00005FFB  7179              jno 0x6076
00005FFD  0A5287            or dl,[bp+si-0x79]
00006000  D00B              ror byte [bp+di],1
00006002  0F                db 0x0f
00006003  B5E9              mov ch,0xe9
00006005  B125              mov cl,0x25
00006007  8D8B02AE          lea cx,[bp+di-0x51fe]
0000600B  7305              jnc 0x6012
0000600D  F8                clc
0000600E  AB                stosw
0000600F  8043AFFC          add byte [bp+di-0x51],0xfc
00006013  E1FE              loope 0x6013
00006015  E89426            call 0x86ac
00006018  5D                pop bp
00006019  12406E            adc al,[bx+si+0x6e]
0000601C  6F                outsw
0000601D  54                push sp
0000601E  F8                clc
0000601F  FA                cli
00006020  1F                pop ds
00006021  232A              and bp,[bp+si]
00006023  5F                pop di
00006024  C16A3CA2          shr word [bp+si+0x3c],byte 0xa2
00006028  74D1              jz 0x5ffb
0000602A  5A                pop dx
0000602B  3CBC              cmp al,0xbc
0000602D  AA                stosb
0000602E  47                inc di
0000602F  3CA0              cmp al,0xa0
00006031  12AAD067          adc ch,[bp+si+0x67d0]
00006035  06                push es
00006036  1CF6              sbb al,0xf6
00006038  283C              sub [si],bh
0000603A  21A3FB3C          and [bp+di+0x3cfb],sp
0000603E  20755B            and [di+0x5b],dh
00006041  BCE250            mov sp,0x50e2
00006044  DA90248A          ficom dword [bx+si-0x75dc]
00006048  D0167E30          rcl byte [0x307e],1
0000604C  C2FE12            ret 0x12fe
0000604F  01F5              add bp,si
00006051  CE                into
00006052  246D              and al,0x6d
00006054  19FE              sbb si,di
00006056  830BE7            or word [bp+di],byte -0x19
00006059  2EA7              cs cmpsw
0000605B  FE                db 0xfe
0000605C  B198              mov cl,0x98
0000605E  D6                salc
0000605F  1A25              sbb ah,[di]
00006061  46                inc si
00006062  B223              mov dl,0x23
00006064  E5E2              in ax,0xe2
00006066  90                nop
00006067  8F                db 0x8f
00006068  FC                cld
00006069  1925              sbb [di],sp
0000606B  E9839F            jmp 0xfff1
0000606E  672498            and al,0x98
00006071  E9E969            jmp 0xca5d
00006074  F9                stc
00006075  819B02F41C8E      sbb word [bp+di-0xbfe],0x8e1c
0000607B  91                xchg ax,cx
0000607C  F5                cmc
0000607D  BB4E23            mov bx,0x234e
00006080  EC                in al,dx
00006081  E89708            call 0x691b
00006084  CB                retf
00006085  F9                stc
00006086  63B674BB          arpl [bp-0x448c],si
0000608A  11B48532          adc [si+0x3285],si
0000608E  A6                cmpsb
0000608F  FE                db 0xfe
00006090  5A                pop dx
00006091  9A8DA6DD56        call 0x56dd:0xa68d
00006096  098B2765          or [bp+di+0x6527],cx
0000609A  B5BF              mov ch,0xbf
0000609C  25DDD6            and ax,0xd6dd
0000609F  FD                std
000060A0  7F0B              jg 0x60ad
000060A2  B11A              mov cl,0x1a
000060A4  E9DF9B            jmp 0xfc86
000060A7  F9                stc
000060A8  08FA              or dl,bh
000060AA  82                db 0x82
000060AB  B2A6              mov dl,0xa6
000060AD  B8F838            mov ax,0x38f8
000060B0  BAE98C            mov dx,0x8ce9
000060B3  F9                stc
000060B4  97                xchg ax,di
000060B5  6E                outsb
000060B6  EC                in al,dx
000060B7  0020              add [bx+si],ah
000060B9  7AEC              jpe 0x60a7
000060BB  48                dec ax
000060BC  F0797F            lock jns 0x613e
000060BF  1583E3            adc ax,0xe383
000060C2  FD                std
000060C3  E0E8              loopne 0x60ad
000060C5  2F                das
000060C6  B204              mov dl,0x4
000060C8  341A              xor al,0x1a
000060CA  90                nop
000060CB  26A5              es movsw
000060CD  EC                in al,dx
000060CE  E86DC9            call 0x2a3e
000060D1  0F3C              cpu_write
000060D3  C6                db 0xc6
000060D4  FD                std
000060D5  1C5C              sbb al,0x5c
000060D7  9D                popf
000060D8  1476              adc al,0x76
000060DA  286608            sub [bp+0x8],ah
000060DD  29D4              sub sp,dx
000060DF  7046              jo 0x6127
000060E1  08C2              or dl,al
000060E3  F3686E0D          rep push word 0xd6e
000060E7  1F                pop ds
000060E8  B240              mov dl,0x40
000060EA  06                push es
000060EB  40                inc ax
000060EC  33E1              xor sp,cx
000060EE  2054A1            and [si-0x5f],dl
000060F1  49                dec cx
000060F2  D8B424EF          fdiv dword [si-0x10dc]
000060F6  F8                clc
000060F7  9F                lahf
000060F8  95                xchg ax,bp
000060F9  FD                std
000060FA  31CD              xor bp,cx
000060FC  7C0F              jl 0x610d
000060FE  03457B            add ax,[di+0x7b]
00006101  15C1BA            adc ax,0xbac1
00006104  80E670            and dh,0x70
00006107  0B439F            or ax,[bp+di-0x61]
0000610A  1310              adc dx,[bx+si]
0000610C  3D06A1            cmp ax,0xa106
0000610F  0B940791          or dx,[si-0x6ef9]
00006113  B8014D            mov ax,0x4d01
00006116  5C                pop sp
00006117  8983F9EE          mov [bp+di-0x1107],ax
0000611B  A7                cmpsw
0000611C  D2D3              rcl bl,cl
0000611E  09F9              or cx,di
00006120  16                push ss
00006121  74E9              jz 0x610c
00006123  03F9              add di,cx
00006125  6388658C          arpl [bx+si-0x739b],cx
00006129  FD                std
0000612A  FC                cld
0000612B  46                inc si
0000612C  BF2F6D            mov di,0x6d2f
0000612F  F8                clc
00006130  57                push di
00006131  EF                out dx,ax
00006132  E9C3F8            jmp 0x59f8
00006135  95                xchg ax,bp
00006136  0E                push cs
00006137  27                daa
00006138  0D8C12            or ax,0x128c
0000613B  DEF5              fdivrp st5
0000613D  E949FD            jmp 0x5e89
00006140  60                pusha
00006141  27                daa
00006142  CF                iret
00006143  06                push es
00006144  5E                pop si
00006145  00B8EC0C          add [bx+si+0xcec],bh
00006149  2620C4            es and ah,al
0000614C  7C6B              jl 0x61b9
0000614E  DD98414B          fstp qword [bx+si+0x4b41]
00006152  48                dec ax
00006153  4F                dec di
00006154  E312              jcxz 0x6168
00006156  3A0E6D60          cmp cl,[0x606d]
0000615A  72A3              jc 0x60ff
0000615C  4F                dec di
0000615D  B412              mov ah,0x12
0000615F  0101              add [bx+di],ax
00006161  D04F14            ror byte [bx+0x14],1
00006164  45                inc bp
00006165  6B7DA0B8          imul di,[di-0x60],byte -0x48
00006169  C1E88B            shr ax,byte 0x8b
0000616C  96                xchg ax,si
0000616D  85C6              test si,ax
0000616F  8C0C              mov [si],cs
00006171  1811              sbb [bx+di],dl
00006173  B86004            mov ax,0x460
00006176  9B62269156        wait bound sp,[0x5691]
0000617B  EC                in al,dx
0000617C  C5D72A87B418      vcvtsi2sd xmm0,xmm5,dword [bx+0x18b4]
00006182  16                push ss
00006183  20883C8F          and [bx+si-0x70c4],cl
00006187  45                inc bp
00006188  AD                lodsw
00006189  314982            xor [bx+di-0x7e],cx
0000618C  8EDE              mov ds,si
0000618E  6D                insw
0000618F  76FC              jna 0x618d
00006191  8C8AC647          mov [bp+si+0x47c6],cs
00006195  1C01              sbb al,0x1
00006197  B5C0              mov ch,0xc0
00006199  4D                dec bp
0000619A  38FA              cmp dl,bh
0000619C  41                inc cx
0000619D  B29A              mov dl,0x9a
0000619F  04D1              add al,0xd1
000061A1  06                push es
000061A2  46                inc si
000061A3  14B4              adc al,0xb4
000061A5  06                push es
000061A6  0AB2D123          or dh,[bp+si+0x23d1]
000061AA  43                inc bx
000061AB  FE08              dec byte [bx+si]
000061AD  06                push es
000061AE  6617              o32 pop ss
000061B0  3A54F1            cmp dl,[si-0xf]
000061B3  53                push bx
000061B4  9A05C24036        call 0x3640:0xc205
000061B9  1AAEA38A          sbb ch,[bp-0x755d]
000061BD  19CF              sbb di,cx
000061BF  BD7F67            mov bp,0x677f
000061C2  14FE              adc al,0xfe
000061C4  56                push si
000061C5  B4AA              mov ah,0xaa
000061C7  AD                lodsw
000061C8  C2B110            ret 0x10b1
000061CB  8B70AF            mov si,[bx+si-0x51]
000061CE  80D11C            adc cl,0x1c
000061D1  53                push bx
000061D2  CC                int3
000061D3  44                inc sp
000061D4  A213B3            mov [0xb313],al
000061D7  FF94FC2F          call [si+0x2ffc]
000061DB  2E2D2C2B          cs sub ax,0x2b2c
000061DF  FF2A              jmp far [bp+si]
000061E1  2928              sub [bx+si],bp
000061E3  27                daa
000061E4  26252321          es and ax,0x2123
000061E8  FF20              jmp [bx+si]
000061EA  1B18              sbb bx,[bx+si]
000061EC  17                pop ss
000061ED  16                push ss
000061EE  1312              adc dx,[bp+si]
000061F0  11FD              adc bp,di
000061F2  0D0C0B            or ax,0xb0c
000061F5  0A08              or cl,[bx+si]
000061F7  06                push es
000061F8  BFD2E4            mov di,0xe4d2
000061FB  7B05              jpo 0x6202
000061FD  780D              js 0x620c
000061FF  FF                db 0xff
00006200  7814              js 0x6216
00006202  7849              js 0x624d
00006204  7864              js 0x626a
00006206  78A7              js 0x61af
00006208  FF                db 0xff
00006209  78FB              js 0x6206
0000620B  7833              js 0x6240
0000620D  7944              jns 0x6253
0000620F  7974              jns 0x6285
00006211  FF                db 0xff
00006212  7988              jns 0x619c
00006214  79A4              jns 0x61ba
00006216  79CB              jns 0x61e3
00006218  79EF              jns 0x6209
0000621A  FF                db 0xff
0000621B  7900              jns 0x621d
0000621D  7A10              jpe 0x622f
0000621F  7A43              jpe 0x6264
00006221  7A5A              jpe 0x627d
00006223  FF                db 0xff
00006224  7A7B              jpe 0x62a1
00006226  7A86              jpe 0x61ae
00006228  7ABC              jpe 0x61e6
0000622A  7ACF              jpe 0x61fb
0000622C  FF                db 0xff
0000622D  7A19              jpe 0x6248
0000622F  7B9F              jpo 0x61d0
00006231  7842              js 0x6275
00006233  7BAB              jpo 0x61e0
00006235  FE                db 0xfe
00006236  7BBC              jpo 0x61f4
00006238  7BD2              jpo 0x620c
0000623A  73C1              jnc 0x61fd
0000623C  7B01              jpo 0x623f
0000623E  50                push ax
0000623F  3930              cmp [bx+si],si
00006241  16                push ss
00006242  7DFD              jnl 0x6241
00006244  7C11              jl 0x6257
00006246  4A                dec dx
00006247  7540              jnz 0x6289
00006249  6D                insw
0000624A  DFBBADCE          fistp qword [bp+di-0x3153]
0000624E  99                cwd
0000624F  F5                cmc
00006250  1CA1              sbb al,0xa1
00006252  52                push dx
00006253  0D2DDE            or ax,0xde2d
00006256  75BF              jnz 0x6217
00006258  C01E500D89        rcr byte [0xd50],byte 0x89
0000625D  D9                db 0xd9
0000625E  DD                db 0xdd
0000625F  F7D1              not cx
00006261  1D10C0            sbb ax,0xc010
00006264  02754D            add dh,[di+0x4d]
00006267  B50A              mov ch,0xa
00006269  110B              adc [bp+di],cx
0000626B  92                xchg ax,dx
0000626C  0217              add dl,[bx]
0000626E  1A62DA            sbb ah,[bp+si-0x26]
00006271  01A339BD          add [bp+di-0x42c7],sp
00006275  5E                pop si
00006276  A4                movsb
00006277  010EA021          add [0x21a0],cx
0000627B  B65B              mov dh,0x5b
0000627D  04B7              add al,0xb7
0000627F  1D4C0A            sbb ax,0xa4c
00006282  F9                stc
00006283  E9E6FB            jmp 0x5e6c
00006286  658A4502          mov al,[gs:di+0x2]
0000628A  EE                out dx,al
0000628B  FF1E00BF          call far [0xbf00]
0000628F  3E77F2            ds ja 0x6284
00006292  AE                scasb
00006293  FFD1              call cx
00006295  E189              loope 0x6220
00006297  CF                iret
00006298  2E8B855BE0        mov ax,[cs:di-0x1fa5]
0000629D  77FF              ja 0x629e
0000629F  E0B6              loopne 0x6257
000062A1  2010              and [bx+si],dl
000062A3  96                xchg ax,si
000062A4  B3C5              mov bl,0xc5
000062A6  DC20              fsub qword [bx+si]
000062A8  8C5C1B            mov [si+0x1b],ds
000062AB  40                inc ax
000062AC  BEA9FB            mov si,0xfba9
000062AF  33AE064D          xor bp,[bp+0x4d06]
000062B3  81080A60          or word [bx+si],0x600a
000062B7  650E              gs push cs
000062B9  05F4F6            add ax,0xf6f4
000062BC  44                inc sp
000062BD  19805310          sbb [bx+si+0x1053],ax
000062C1  BE1418            mov si,0x1814
000062C4  06                push es
000062C5  6A78              push byte +0x78
000062C7  06                push es
000062C8  010F              add [bx],cx
000062CA  52                push dx
000062CB  52                push dx
000062CC  E292              loop 0x6260
000062CE  8A21              mov ah,[bx+di]
000062D0  6441              fs inc cx
000062D2  5B                pop bx
000062D3  0910              or [bx+si],dx
000062D5  DCE9              fsub to st1
000062D7  8934              mov [si],si
000062D9  E8678E            call 0xf143
000062DC  A6                cmpsb
000062DD  61                popa
000062DE  5F                pop di
000062DF  8426006F          test [0x6f00],ah
000062E3  A7                cmpsw
000062E4  8574FB            test [si-0x5],si
000062E7  7006              jo 0x62ef
000062E9  B66E              mov dh,0x6e
000062EB  FB                sti
000062EC  36                ss
000062ED  C6                db 0xc6
000062EE  3E5D              ds pop bp
000062F0  6BFF6C            imul di,di,byte +0x6c
000062F3  3D06D0            cmp ax,0xd006
000062F6  C7                db 0xc7
000062F7  6E                outsb
000062F8  4C                dec sp
000062F9  5D                pop bp
000062FA  45                inc bp
000062FB  094C77            or [si+0x77],cx
000062FE  7713              ja 0x6313
00006300  5C                pop sp
00006301  46                inc si
00006302  18E1              sbb cl,ah
00006304  3D506A            cmp ax,0x6a50
00006307  384AEB            cmp [bp+si-0x15],cl
0000630A  C3                ret
0000630B  4A                dec dx
0000630C  58                pop ax
0000630D  1ABDD236          sbb bh,[di+0x36d2]
00006311  3933              cmp [bp+di],si
00006313  FB                sti
00006314  046A              add al,0x6a
00006316  EC                in al,dx
00006317  2B5D36            sub bx,[di+0x36]
0000631A  1C28              sbb al,0x28
0000631C  1D092B            sbb ax,0x2b09
0000631F  1C06              sbb al,0x6
00006321  BD02F0            mov bp,0xf002
00006324  7531              jnz 0x6357
00006326  ED                in ax,dx
00006327  41                inc cx
00006328  5C                pop sp
00006329  96                xchg ax,si
0000632A  D81669D3          fcom dword [0xd369]
0000632E  677F91            jg 0x62c2
00006331  757E              jnz 0x63b1
00006333  57                push di
00006334  EF                out dx,ax
00006335  89414A            mov [bx+di+0x4a],ax
00006338  8915              mov [di],dx
0000633A  BA884D            mov dx,0x4d88
0000633D  D6                salc
0000633E  350CC6            xor ax,0xc60c
00006341  20ADE2D7          and [di-0x281e],ch
00006345  FA                cli
00006346  0B43C0            or ax,[bp+di-0x40]
00006349  13FA              adc di,dx
0000634B  C41F              les bx,[bx]
0000634D  BCDD88            mov sp,0x88dd
00006350  46                inc si
00006351  D1                db 0xd1
00006352  F1                int1
00006353  D3                db 0xd3
00006354  B4C9              mov ah,0xc9
00006356  D2                db 0xd2
00006357  769D              jna 0x62f6
00006359  D01EB6BB          rcr byte [0xbbb6],1
0000635D  D057A6            rcl byte [bx-0x5a],1
00006360  A3C977            mov [0x77c9],ax
00006363  B49A              mov ah,0x9a
00006365  298A477D          sub [bp+si+0x7d47],cx
00006369  31E9              xor cx,bp
0000636B  FB                sti
0000636C  9F                lahf
0000636D  FA                cli
0000636E  E80ACD            call 0x307b
00006371  E2F7              loop 0x636a
00006373  E83206            call 0x69a8
00006376  8384778EFA        add word [si-0x7189],byte -0x6
0000637B  9C                pushf
0000637C  4A                dec dx
0000637D  06                push es
0000637E  3560B3            xor ax,0xb360
00006381  A4                movsb
00006382  7C40              jl 0x63c4
00006384  2C3F              sub al,0x3f
00006386  CE                into
00006387  61                popa
00006388  7C08              jl 0x6392
0000638A  C43C              les di,[si]
0000638C  7A6E              jpe 0x63fc
0000638E  B020              mov al,0x20
00006390  EBDA              jmp short 0x636c
00006392  F4                hlt
00006393  2F                das
00006394  82                db 0x82
00006395  5B                pop bx
00006396  37                aaa
00006397  5C                pop sp
00006398  83700547          xor word [bx+si+0x5],byte +0x47
0000639C  37                aaa
0000639D  8BE2              mov sp,dx
0000639F  E95E86            jmp 0xea00
000063A2  FA                cli
000063A3  5F                pop di
000063A4  96                xchg ax,si
000063A5  0404              add al,0x4
000063A7  17                pop ss
000063A8  5E                pop si
000063A9  E8C3C0            call 0x246f
000063AC  99                cwd
000063AD  40                inc ax
000063AE  FC                cld
000063AF  B9E94A            mov cx,0x4ae9
000063B2  FA                cli
000063B3  359B18            xor ax,0x189b
000063B6  8DA6610B          lea sp,[bp+0xb61]
000063BA  7F3C              jg 0x63f8
000063BC  E5FA              in ax,0xfa
000063BE  3C7A              cmp al,0x7a
000063C0  B736              mov bh,0x36
000063C2  13806C6F          adc ax,[bx+si+0x6f6c]
000063C6  A9E92E            test ax,0x2ee9
000063C9  FA                cli
000063CA  0E                push cs
000063CB  D905              fld dword [di]
000063CD  9AA0AEF60A        call 0xaf6:0xaea0
000063D2  4A                dec dx
000063D3  B3C4              mov bl,0xc4
000063D5  046F              add al,0x6f
000063D7  8BA1A005          mov sp,[bx+di+0x5a0]
000063DB  033F              add di,[bx]
000063DD  5A                pop dx
000063DE  A19AEF            mov ax,[0xef9a]
000063E1  0C04              or al,0x4
000063E3  E907FA            jmp 0x5ded
000063E6  099DF1E8          or [di-0x170f],bx
000063EA  B6AD              mov dh,0xad
000063EC  00DE              add dh,bl
000063EE  B731              mov bh,0x31
000063F0  FF                db 0xff
000063F1  39FA              cmp dx,di
000063F3  2ADA              sub bl,dl
000063F5  2F                das
000063F6  DF09              fisttp word [bx+di]
000063F8  1F                pop ds
000063F9  6202              bound ax,[bp+si]
000063FB  3552CD            xor ax,0xcd52
000063FE  03A3FBE9          add sp,[bp+di-0x1605]
00006402  B0FE              mov al,0xfe
00006404  A1862D            mov ax,[0x2d86]
00006407  FB                sti
00006408  02A18406          add ah,[bx+di+0x684]
0000640C  DB10              fist dword [bx+si]
0000640E  D286F9DD          rol byte [bp-0x2207],cl
00006412  C50E035F          lds cx,[0x5f03]
00006416  D905              fld dword [di]
00006418  851C              test [si],bx
0000641A  145A              adc al,0x5a
0000641C  AA                stosb
0000641D  AC                lodsb
0000641E  AC                lodsb
0000641F  DE7122            fidiv word [bx+di+0x22]
00006422  1B8A7208          sbb cx,[bp+si+0x872]
00006426  1E                push ds
00006427  1ADC              sbb bl,ah
00006429  27                daa
0000642A  FF01              inc word [bx+di]
0000642C  1CBB              sbb al,0xbb
0000642E  203F              and [bx],bh
00006430  B96503            mov cx,0x365
00006433  D8540A            fcom dword [si+0xa]
00006436  81370457          xor word [bx],0x5704
0000643A  37                aaa
0000643B  778F              ja 0x63cc
0000643D  F9                stc
0000643E  64CE              fs into
00006440  B83503            mov ax,0x335
00006443  6F                outsw
00006444  44                inc sp
00006445  02BE09BF          add bh,[bp-0x40f7]
00006449  E978F9            jmp 0x5dc4
0000644C  2035              and [di],dh
0000644E  41                inc cx
0000644F  06                push es
00006450  3AED              cmp ch,ch
00006452  51                push cx
00006453  BE8D58            mov si,0x588d
00006456  9C                pushf
00006457  7AB9              jpe 0x6412
00006459  0188FBA7          add [bx+si-0x5805],cx
0000645D  04E7              add al,0xe7
0000645F  BC0BE9            mov sp,0xe90b
00006462  24FE              and al,0xfe
00006464  60                pusha
00006465  668D71D6          lea esi,[bx+di-0x2a]
00006469  F5                cmc
0000646A  FE                db 0xfe
0000646B  3858D5            cmp [bx+si-0x2b],bl
0000646E  5C                pop sp
0000646F  2E384C0E          cmp [cs:si+0xe],cl
00006473  674C              a32 dec sp
00006475  48                dec ax
00006476  0CED              or al,0xed
00006478  1DB43F            sbb ax,0x3fb4
0000647B  F20F8F0B01        bnd jg near 0x658b
00006480  D507              aad 0x7
00006482  2A5CC1            sub bl,[si-0x3f]
00006485  4D                dec bp
00006486  AD                lodsw
00006487  55                push bp
00006488  18D9              sbb cl,bl
0000648A  16                push ss
0000648B  F9                stc
0000648C  356121            xor ax,0x2161
0000648F  1F                pop ds
00006490  C7                db 0xc7
00006491  B5EB              mov ch,0xeb
00006493  DF6112            fbld tword [bx+di+0x12]
00006496  3408              xor al,0x8
00006498  51                push cx
00006499  A1974D            mov ax,[0x4d97]
0000649C  7E25              jng 0x64c3
0000649E  013D              add [di],di
000064A0  0242A5            add al,[bp+si-0x5b]
000064A3  4C                dec sp
000064A4  CE                into
000064A5  1E                push ds
000064A6  01F1              add cx,si
000064A8  158BC1            adc ax,0xc18b
000064AB  635D5C            arpl [di+0x5c],bx
000064AE  0C63              or al,0x63
000064B0  37                aaa
000064B1  2987B030          sub [bx+0x30b0],ax
000064B5  053CA7            add ax,0xa73c
000064B8  A2342A            mov [0x2a34],al
000064BB  0CDD              or al,0xdd
000064BD  10EB              adc bl,ch
000064BF  98                cbw
000064C0  96                xchg ax,si
000064C1  49                dec cx
000064C2  A5                movsw
000064C3  B8618B            mov ax,0x8b61
000064C6  839C5573AD        sbb word [si+0x7355],byte -0x53
000064CB  341D              xor al,0x1d
000064CD  4E                dec si
000064CE  AD                lodsw
000064CF  0D178B            or ax,0x8b17
000064D2  8BAD266C          mov bp,[di+0x6c26]
000064D6  FF68E5            jmp far [bx+si-0x1b]
000064D9  44                inc sp
000064DA  F9                stc
000064DB  BC003D            mov sp,0x3d00
000064DE  FF446B            inc word [si+0x6b]
000064E1  B5CB              mov ch,0xcb
000064E3  AF                scasw
000064E4  EE                out dx,al
000064E5  236C06            and bp,[si+0x6]
000064E8  F016              lock push ss
000064EA  EE                out dx,al
000064EB  37                aaa
000064EC  F23F              repne aas
000064EE  B606              mov dh,0x6
000064F0  F4                hlt
000064F1  6453              fs push bx
000064F3  40                inc ax
000064F4  085903            or [bx+di+0x3],bl
000064F7  06                push es
000064F8  15E092            adc ax,0x92e0
000064FB  3B3F              cmp di,[bx]
000064FD  A800              test al,0x0
000064FF  46                inc si
00006500  BF0C42            mov di,0x420c
00006503  48                dec ax
00006504  C189125A80        ror word [bx+di+0x5a12],byte 0x80
00006509  06                push es
0000650A  D6                salc
0000650B  52                push dx
0000650C  4F                dec di
0000650D  3985001A          cmp [di+0x1a00],ax
00006511  7E17              jng 0x652a
00006513  F4                hlt
00006514  75A1              jnz 0x64b7
00006516  C24A00            ret 0x4a
00006519  F637              div byte [bx]
0000651B  48                dec ax
0000651C  06                push es
0000651D  DB10              fist dword [bx+si]
0000651F  FF                db 0xff
00006520  F8                clc
00006521  43                inc bx
00006522  386BEB            cmp [bp+di-0x15],ch
00006525  F4                hlt
00006526  A0727C            mov al,[0x7c72]
00006529  0CC7              or al,0xc7
0000652B  113F              adc [bx],di
0000652D  50                push ax
0000652E  0C6B              or al,0x6b
00006530  40                inc ax
00006531  06                push es
00006532  A80D              test al,0xd
00006534  35400B            xor ax,0xb40
00006537  AE                scasb
00006538  F741AE730F        test word [bx+di-0x52],0xf73
0000653D  41                inc cx
0000653E  AA                stosb
0000653F  72D4              jc 0x6515
00006541  AF                scasw
00006542  F6                db 0xf6
00006543  4D                dec bp
00006544  3198FAE5          xor [bx+si-0x1a06],bx
00006548  F7B8DD37          idiv word [bx+si+0x37dd]
0000654C  8495210C          test [di+0xc21],dl
00006550  61                popa
00006551  D03E4A33          sar byte [0x334a],1
00006555  8A6F17            mov ch,[bx+0x17]
00006558  46                inc si
00006559  21B80AFC          and [bx+si-0x3f6],di
0000655D  15E881            adc ax,0x81e8
00006560  21EB              and bx,bp
00006562  1E                push ds
00006563  58                pop ax
00006564  716C              jno 0x65d2
00006566  803167            xor byte [bx+di],0x67
00006569  7307              jnc 0x6572
0000656B  10C2              adc dl,al
0000656D  A9C374            test ax,0x74c3
00006570  E2E9              loop 0x655b
00006572  A3F704            mov [0x4f7],ax
00006575  80E0C6            and al,0xc6
00006578  2919              sub [bx+di],bx
0000657A  6211              bound dx,[bx+di]
0000657C  218A1D67          and [bp+si+0x671d],cx
00006580  0215              add dl,[di]
00006582  37                aaa
00006583  50                push ax
00006584  7637              jna 0x65bd
00006586  3CFE              cmp al,0xfe
00006588  107433            adc [si+0x33],dh
0000658B  3C0C              cmp al,0xc
0000658D  742F              jz 0x65be
0000658F  58                pop ax
00006590  142D              adc al,0x2d
00006592  0A4624            or al,[bp+0x24]
00006595  E076              loopne 0x660d
00006597  24B7              and al,0xb7
00006599  66                o32
0000659A  82                db 0x82
0000659B  D6                salc
0000659C  6F                outsw
0000659D  0907              or [bx],ax
0000659F  761A              jna 0x65bb
000065A1  05AD0A            add ax,0xaad
000065A4  98                cbw
000065A5  C604A2            mov byte [si],0xa2
000065A8  61                popa
000065A9  B6AC              mov dh,0xac
000065AB  06                push es
000065AC  03E2              add sp,dx
000065AE  7631              jna 0x65e1
000065B0  02A6F206          add ah,[bp+0x6f2]
000065B4  A21AE1            mov [0xe11a],al
000065B7  2802              sub [bp+si],al
000065B9  04BA              add al,0xba
000065BB  E825AC            call 0x11e3
000065BE  2CEC              sub al,0xec
000065C0  60                pusha
000065C1  0B835B0F          or ax,[bp+di+0xf5b]
000065C5  1202              adc al,[bp+si]
000065C7  003F              add [bx],bh
000065C9  8405              test [di],al
000065CB  8A14              mov dl,[si]
000065CD  D080FAB6          rol byte [bx+si-0x4906],1
000065D1  AB                stosw
000065D2  45                inc bp
000065D3  048B              add al,0x8b
000065D5  C8711C84          enter 0x1c71,0x84
000065D9  B545              mov ch,0x45
000065DB  46                inc si
000065DC  04B4              add al,0xb4
000065DE  1D0AD0            sbb ax,0xd00a
000065E1  E207              loop 0x65ea
000065E3  52                push dx
000065E4  1AF1              sbb dh,cl
000065E6  0488              add al,0x88
000065E8  FC                cld
000065E9  A38175            mov [0x7581],ax
000065EC  47                inc di
000065ED  C5EDE201          vpsrad ymm0,ymm2,oword [bx+di]
000065F1  17                pop ss
000065F2  6E                outsb
000065F3  54                push sp
000065F4  71FF              jno 0x65f5
000065F6  D8E6              fsub st6
000065F8  07                pop es
000065F9  56                push si
000065FA  093F              or [bx],di
000065FC  CB                retf
000065FD  F3D2A1015C        rep shl byte [bx+di+0x5c01],cl
00006602  F7                db 0xf7
00006603  8804              mov [si],al
00006605  66680C809667      push dword 0x6796800c
0000660B  05B6D5            add ax,0xd5b6
0000660E  01E1              add cx,sp
00006610  2915              sub [di],dx
00006612  F7BCB42D          idiv word [si+0x2db4]
00006616  6D                insw
00006617  7534              jnz 0x664d
00006619  52                push dx
0000661A  ED                in ax,dx
0000661B  06                push es
0000661C  7522              jnz 0x6640
0000661E  46                inc si
0000661F  8B4FC4            mov cx,[bx-0x3c]
00006622  50                push ax
00006623  06                push es
00006624  FEC8              dec al
00006626  268EF2            es mov segr6,dx
00006629  EA4F117227        jmp 0x2772:0x114f
0000662E  FA                cli
0000662F  04AD              add al,0xad
00006631  E33D              jcxz 0x6670
00006633  5B                pop bx
00006634  D501              aad 0x1
00006636  6826BB            push word 0xbb26
00006639  DC17              fcom qword [bx]
0000663B  FF04              inc word [si]
0000663D  2F                das
0000663E  06                push es
0000663F  E97C01            jmp 0x67be
00006642  7A79              jpe 0x66bd
00006644  B729              mov bh,0x29
00006646  5B                pop bx
00006647  036D0B            add bp,[di+0xb]
0000664A  86D8              xchg al,bl
0000664C  CE                into
0000664D  02A82410          add ch,[bx+si+0x1024]
00006651  95                xchg ax,bp
00006652  07                pop es
00006653  EC                in al,dx
00006654  2B8670E6          sub ax,[bp-0x1990]
00006658  C10187            rol word [bx+di],byte 0x87
0000665B  151318            adc ax,0x1813
0000665E  E9ED01            jmp 0x684e
00006661  A22C75            mov [0x752c],al
00006664  3413              xor al,0x13
00006666  BF634D            mov di,0x4d63
00006669  04EB              add al,0xeb
0000666B  1280441A          adc al,[bx+si+0x1a44]
0000666F  BC8956            mov sp,0x5689
00006672  D1A9F29D          shr word [bx+di-0x620e],1
00006676  7E8E              jng 0x6606
00006678  C7                db 0xc7
00006679  B90010            mov cx,0x1000
0000667C  1B450D            sbb ax,[di+0xd]
0000667F  7482              jz 0x6603
00006681  2E16              cs push ss
00006683  07                pop es
00006684  37                aaa
00006685  E74E              out 0x4e,ax
00006687  43                inc bx
00006688  F0E84AAA          lock call 0x10d6
0000668C  018758D5          add [bx-0x2aa8],ax
00006690  2215              and dl,[di]
00006692  56                push si
00006693  6E                outsb
00006694  EC                in al,dx
00006695  CD80              int 0x80
00006697  E8B903            call 0x6a53
0000669A  838E55B1F0        or word [bp-0x4eab],byte -0x10
0000669F  0010              add [bx+si],dl
000066A1  DF5FDE            fistp word [bx-0x22]
000066A4  BF3D4A            mov di,0x4a3d
000066A7  086FF1            or [bx-0xf],ch
000066AA  2F                das
000066AB  FF                db 0xff
000066AC  B852DD            mov ax,0xdd52
000066AF  B755              mov bh,0x55
000066B1  0F77              emms
000066B3  6D                insw
000066B4  AE                scasb
000066B5  40                inc ax
000066B6  D307              rol word [bx],cl
000066B8  086D00            or [di+0x0],ch
000066BB  080F              or [bx],cl
000066BD  9B07              wait pop es
000066BF  FF                db 0xff
000066C0  FF2C              jmp far [si]
000066C2  05FE40            add ax,0x40fe
000066C5  2685458B          test [es:di-0x75],ax
000066C9  126254            adc ah,[bp+si+0x54]
000066CC  EF                out dx,ax
000066CD  B41C              mov ah,0x1c
000066CF  8A87D6F7          mov al,[bx-0x82a]
000066D3  18A25C03          sbb [bp+si+0x35c],ah
000066D7  7508              jnz 0x66e1
000066D9  252877            and ax,0x7728
000066DC  7904              jns 0x66e2
000066DE  3C10              cmp al,0x10
000066E0  CA7227            retf 0x2772
000066E3  8D84C367          lea ax,[si+0x67c3]
000066E7  039DE368          add bx,[di+0x68e3]
000066EB  03C9              add cx,cx
000066ED  B7A3              mov bh,0xa3
000066EF  69057A0A          imul ax,[di],word 0xa7a
000066F3  A36B03            mov [0x36b],ax
000066F6  E1D3              loope 0x66cb
000066F8  FA                cli
000066F9  B51E              mov ch,0x1e
000066FB  6D                insw
000066FC  36AA              ss stosb
000066FE  6F                outsw
000066FF  DBE1              fndisi
00006701  137690            adc si,[bp-0x70]
00006704  42                inc dx
00006705  288EB96F          sub [bp+0x6fb9],cl
00006709  17                pop ss
0000670A  0CA3              or al,0xa3
0000670C  689603            push word 0x396
0000670F  6A82              push byte -0x7e
00006711  11704D            adc [bx+si+0x4d],si
00006714  215DA0            and [di-0x60],bx
00006717  038675D2          add ax,[bp-0x2d8b]
0000671B  06                push es
0000671C  57                push di
0000671D  0E                push cs
0000671E  C59512F3          lds dx,[di-0xcee]
00006722  78A1              js 0x66c5
00006724  5D                pop bp
00006725  A2439F            mov [0x9f43],al
00006728  40                inc ax
00006729  75C7              jnz 0x66f2
0000672B  45                inc bp
0000672C  CD71              int 0x71
0000672E  8C02              mov [bp+si],es
00006730  41                inc cx
00006731  B73F              mov bh,0x3f
00006733  EB36              jmp short 0x676b
00006735  759D              jnz 0x66d4
00006737  1001              adc [bx+di],al
00006739  664D              dec ebp
0000673B  1A6727            sbb ah,[bx+0x27]
0000673E  214BA8            and [bp+di-0x58],cx
00006741  22EB              and ch,bl
00006743  690C1311          imul cx,[si],word 0x1113
00006747  620C              bound cx,[si]
00006749  17                pop ss
0000674A  283C              sub [si],bh
0000674C  0E                push cs
0000674D  749A              jz 0x66e9
0000674F  0F2F5CA0          comiss xmm3,dword [si-0x60]
00006753  5B                pop bx
00006754  03CA              add cx,dx
00006756  8804              mov [si],al
00006758  E04D              loopne 0x67a7
0000675A  A8E9              test al,0xe9
0000675C  219B2656          and [bp+di+0x5626],bx
00006760  B4A2              mov ah,0xa2
00006762  10B00EDE          adc [bx+si-0x21f2],dh
00006766  07                pop es
00006767  39F0              cmp ax,si
00006769  4D                dec bp
0000676A  7543              jnz 0x67af
0000676C  DFBF0301          fistp qword [bx+0x103]
00006770  D0408E            rol byte [bx+si-0x72],1
00006773  F1                int1
00006774  C08EE0642A        ror byte [bp+0x64e0],byte 0x2a
00006779  AB                stosw
0000677A  8BDD              mov bx,bp
0000677C  60                pusha
0000677D  31B66303          xor [bp+0x363],si
00006781  82                db 0x82
00006782  D53E              aad 0x3e
00006784  0DC54D            or ax,0x4dc5
00006787  1B2E3C86          sbb bp,[0x863c]
0000678B  5A                pop dx
0000678C  7482              jz 0x6710
0000678E  F9                stc
0000678F  2F                das
00006790  876F86            xchg [bx-0x7a],bp
00006793  8EE2              mov fs,dx
00006795  648E883CFA        mov cs,[fs:bx+si-0x5c4]
0000679A  44                inc sp
0000679B  034064            add ax,[bx+si+0x64]
0000679E  01858806          add [di+0x688],ax
000067A2  09B528B0          or [di-0x4fd8],si
000067A6  9E                sahf
000067A7  B545              mov ch,0x45
000067A9  888CE681          mov [si-0x7e1a],cl
000067AD  2D857D            sub ax,0x7d85
000067B0  F8                clc
000067B1  C1EB04            shr bx,byte 0x4
000067B4  01DA              add dx,bx
000067B6  83FD5B            cmp bp,byte +0x5b
000067B9  1183FB82          adc [bp+di-0x7d05],ax
000067BD  8143424195        add word [bp+di+0x42],0x9541
000067C2  5B                pop bx
000067C3  53                push bx
000067C4  0A8580BC          or al,[di-0x4380]
000067C8  FB                sti
000067C9  41                inc cx
000067CA  802580            and byte [di],0x80
000067CD  0A05              or al,[di]
000067CF  095138            or [bx+di+0x38],dx
000067D2  FC                cld
000067D3  88F4              mov ah,dh
000067D5  56                push si
000067D6  A888              test al,0x88
000067D8  01A3410D          add [bp+di+0xd41],sp
000067DC  E3DB              jcxz 0x67b9
000067DE  17                pop ss
000067DF  51                push cx
000067E0  3602F8            ss add bh,al
000067E3  5B                pop bx
000067E4  FA                cli
000067E5  CF                iret
000067E6  55                push bp
000067E7  BCED01            mov sp,0x1ed
000067EA  742C              jz 0x6818
000067EC  8E7425            mov segr6,[si+0x25]
000067EF  8EDE              mov ds,si
000067F1  1E                push ds
000067F2  DB826DE8          fild dword [bp+si-0x1793]
000067F6  0203              add al,[bp+di]
000067F8  46                inc si
000067F9  FE                db 0xfe
000067FA  A24D26            mov [0x264d],al
000067FD  B4F6              mov ah,0xf6
000067FF  A810              test al,0x10
00006801  BB8CA1            mov bx,0xa18c
00006804  8C3D              mov [di],segr7
00006806  344A              xor al,0x4a
00006808  BAD9BA            mov dx,0xbad9
0000680B  7C39              jl 0x6846
0000680D  040E              add al,0xe
0000680F  BB58E9            mov bx,0xe958
00006812  95                xchg ax,bp
00006813  CE                into
00006814  9D                popf
00006815  1A01              sbb al,[bx+di]
00006817  57                push di
00006818  282A              sub [bp+si],ch
0000681A  54                push sp
0000681B  686828            push word 0x2868
0000681E  2198A8E5          and [bx+si-0x1a58],bx
00006822  2B6806            sub bp,[bx+si+0x6]
00006825  F8                clc
00006826  2E9F              cs lahf
00006828  B5C4              mov ch,0xc4
0000682A  0512BB            add ax,0xbb12
0000682D  DF03              fild word [bp+di]
0000682F  27                daa
00006830  3B6ED4            cmp bp,[bp-0x2c]
00006833  7309              jnc 0x683e
00006835  E584              in ax,0x84
00006837  1AFE              sbb bh,dh
00006839  D954FA            fst dword [si-0x6]
0000683C  DCEF              fsub to st7
0000683E  0017              add [bx],dl
00006840  0A7226            or dh,[bp+si+0x26]
00006843  7785              ja 0x67ca
00006845  40                inc ax
00006846  3D83E2            cmp ax,0xe283
00006849  007715            add [bx+0x15],dh
0000684C  E9040B            jmp 0x7353
0000684F  721B              jc 0x686c
00006851  7F4E              jg 0x68a1
00006853  257F5D            and ax,0x5d7f
00006856  89F3              mov bx,si
00006858  8C31              mov [bx+di],segr6
0000685A  FE                db 0xfe
0000685B  F7807A5A3168      test word [bx+si+0x5a7a],0x6831
00006861  AD                lodsw
00006862  8E0D              mov cs,[di]
00006864  29E9              sub cx,bp
00006866  AF                scasw
00006867  63161019          arpl [0x1910],dx
0000686B  E4C2              in al,0xc2
0000686D  DA67B6            fisub dword [bx-0x4a]
00006870  6747              a32 inc di
00006872  43                inc bx
00006873  F676D3            div byte [bp-0x2d]
00006876  EBC9              jmp short 0x6841
00006878  361DE96B          ss sbb ax,0x6be9
0000687C  A9D81B            test ax,0x1bd8
0000687F  229601DA          and dl,[bp-0x25ff]
00006883  16                push ss
00006884  C486C37D          les ax,[bp+0x7dc3]
00006888  B50A              mov ch,0xa
0000688A  280C              sub [si],cl
0000688C  8F02              pop word [bp+si]
0000688E  358433            xor ax,0x3384
00006891  B54E              mov ch,0x4e
00006893  260960CD          or [es:bx+si-0x33],sp
00006897  AD                lodsw
00006898  2F                das
00006899  BF493B            mov di,0x3b49
0000689C  741B              jz 0x68b9
0000689E  B4F6              mov ah,0xf6
000068A0  A14168            mov ax,[0x6841]
000068A3  94                xchg ax,sp
000068A4  4E                dec si
000068A5  3B0E4F07          cmp cx,[0x74f]
000068A9  80FD66            cmp ch,0x66
000068AC  F4                hlt
000068AD  7FE9              jg 0x6898
000068AF  9C                pushf
000068B0  FE01              inc byte [bx+di]
000068B2  7D02              jnl 0x68b6
000068B4  1C80              sbb al,0x80
000068B6  5C                pop sp
000068B7  FB                sti
000068B8  09C4              or sp,ax
000068BA  5E                pop si
000068BB  F8                clc
000068BC  8BC1              mov ax,cx
000068BE  300D              xor [di],cl
000068C0  80FC65            cmp ah,0x65
000068C3  BBF844            mov bx,0x44f8
000068C6  CF                iret
000068C7  5D                pop bp
000068C8  48                dec ax
000068C9  1BEF              sbb bp,di
000068CB  91                xchg ax,cx
000068CC  111D              adc [di],bx
000068CE  C58E040F          lds cx,[bp+0xf04]
000068D2  8903              mov [bp+di],ax
000068D4  54                push sp
000068D5  4C                dec sp
000068D6  D21E8002          rcr byte [0x280],cl
000068DA  09B5743D          or [di+0x3d74],si
000068DE  42                inc dx
000068DF  05D63F            add ax,0x3fd6
000068E2  82                db 0x82
000068E3  43                inc bx
000068E4  C6                db 0xc6
000068E5  334180            xor ax,[bx+di-0x80]
000068E8  7B5E              jpo 0x6948
000068EA  FC                cld
000068EB  27                daa
000068EC  AF                scasw
000068ED  40                inc ax
000068EE  2897298C          sub [bx-0x73d7],dl
000068F2  C26CF0            ret 0xf06c
000068F5  57                push di
000068F6  6E                outsb
000068F7  6BDF42            imul bx,di,byte +0x42
000068FA  8D                db 0x8d
000068FB  D40E              aam 0xe
000068FD  053D2F            add ax,0x2f3d
00006900  A21157            mov [0x5711],al
00006903  B60A              mov dh,0xa
00006905  AD                lodsw
00006906  00FC              add ah,bh
00006908  4D                dec bp
00006909  EB2B              jmp short 0x6936
0000690B  8CC7              mov di,es
0000690D  032D              add bp,[di]
0000690F  B447              mov ah,0x47
00006911  A838              test al,0x38
00006913  F1                int1
00006914  3DA95C            cmp ax,0x5ca9
00006917  C1445F25          rol word [si+0x5f],byte 0x25
0000691B  FE                db 0xfe
0000691C  7D83              jnl 0x68a1
0000691E  2BB54448          sub si,[di+0x4844]
00006922  1F                pop ds
00006923  D503              aad 0x3
00006925  7F10              jg 0x6937
00006927  C6074D            mov byte [bx],0x4d
0000692A  0FB0C7            cmpxchg bh,al
0000692D  95                xchg ax,bp
0000692E  44                inc sp
0000692F  8686E119          xchg [bp+0x19e1],al
00006933  7340              jnc 0x6975
00006935  0938              or [bx+si],di
00006937  01A5161A          add [di+0x1a16],sp
0000693B  37                aaa
0000693C  22DC              and bl,ah
0000693E  5C                pop sp
0000693F  8C07              mov [bx],es
00006941  7630              jna 0x6973
00006943  D8C9              fmul st1
00006945  0A411F            or al,[bx+di+0x1f]
00006948  1123              adc [bp+di],sp
0000694A  56                push si
0000694B  C7                db 0xc7
0000694C  8E07              mov es,[bx]
0000694E  52                push dx
0000694F  40                inc ax
00006950  5A                pop dx
00006951  7C2A              jl 0x697d
00006953  FF65FF            jmp [di-0x1]
00006956  E899FD            call 0x66f2
00006959  4B                dec bx
0000695A  53                push bx
0000695B  0234              add dh,[si]
0000695D  2850EB            sub [bx+si-0x15],dl
00006960  E6CB              out 0xcb,al
00006962  5B                pop bx
00006963  0B7F07            or di,[bx+0x7]
00006966  C7                db 0xc7
00006967  B220              mov dl,0x20
00006969  FC                cld
0000696A  78FD              js 0x6969
0000696C  800EC88EED        or byte [0x8ec8],0xed
00006971  A107FC            mov ax,[0xfc07]
00006974  A00709            mov al,[0x907]
00006977  1096C261          adc [bp+0x61c2],dl
0000697B  0E                push cs
0000697C  69C92F10          imul cx,cx,word 0x102f
00006980  C9                leave
00006981  6B0167            imul ax,[bx+di],byte +0x67
00006984  F713              not word [bp+di]
00006986  DC46E0            fadd qword [bp-0x20]
00006989  6A85              push byte -0x7b
0000698B  73A4              jnc 0x6931
0000698D  641A6504          sbb ah,[fs:di+0x4]
00006991  D975E7            fnstenv [di-0x19]
00006994  A5                movsw
00006995  E883C6            call 0x301b
00006998  DCB05666          fdiv qword [bx+si+0x6656]
0000699C  41                inc cx
0000699D  BA1FDD            mov dx,0xdd1f
000069A0  90                nop
000069A1  4C                dec sp
000069A2  0C00              or al,0x0
000069A4  679AD75473D4      call 0xd473:0x54d7
000069AA  DA5DA6            ficomp dword [di-0x5a]
000069AD  C10EA93E9C        ror word [0x3ea9],byte 0x9c
000069B2  0C3A              or al,0x3a
000069B4  1C4D              sbb al,0x4d
000069B6  C505              lds ax,[di]
000069B8  27                daa
000069B9  58                pop ax
000069BA  E95A82            jmp 0xec17
000069BD  2A18              sub bl,[bx+si]
000069BF  EB2E              jmp short 0x69ef
000069C1  C47625            les si,[bp+0x25]
000069C4  00DD              add ch,bl
000069C6  8F                db 0x8f
000069C7  60                pusha
000069C8  FC                cld
000069C9  41                inc cx
000069CA  CC                int3
000069CB  8710              xchg [bx+si],dx
000069CD  1814              sbb [si],dl
000069CF  59                pop cx
000069D0  A7                cmpsw
000069D1  FE83208A          inc byte [bp+di-0x75e0]
000069D5  8604              xchg [si],al
000069D7  BB0791            mov bx,0x9107
000069DA  EB53              jmp short 0x6a2f
000069DC  731B              jnc 0x69f9
000069DE  0FBC39            bsf di,[bx+di]
000069E1  C7                db 0xc7
000069E2  733E              jnc 0x6a22
000069E4  056F02            add ax,0x26f
000069E7  FE4629            inc byte [bp+0x29]
000069EA  85F8              test ax,di
000069EC  3891C687          cmp [bx+di-0x783a],dl
000069F0  C1539DC6          rcl word [bp+di-0x63],byte 0xc6
000069F4  B23D              mov dl,0x3d
000069F6  8984456D          mov [si+0x6d45],ax
000069FA  C6                db 0xc6
000069FB  9E                sahf
000069FC  9B47              wait inc di
000069FE  8D47E7            lea ax,[bx-0x19]
00006A01  085650            or [bp+0x50],dl
00006A04  D43E              aam 0x3e
00006A06  90                nop
00006A07  DB7DFC            fstp tword [di-0x4]
00006A0A  FB                sti
00006A0B  63A1854E          arpl [bx+di+0x4e85],sp
00006A0F  E1C1              loope 0x69d2
00006A11  4D                dec bp
00006A12  D457              aam 0x57
00006A14  8BA0043B          mov sp,[bx+si+0x3b04]
00006A18  90                nop
00006A19  2B5AB0            sub bx,[bp+si-0x50]
00006A1C  53                push bx
00006A1D  8FC6              pop si
00006A1F  DBCA              fcmovne st2
00006A21  37                aaa
00006A22  FE                db 0xfe
00006A23  54                push sp
00006A24  3AA841EE          cmp ch,[bx+si-0x11bf]
00006A28  B230              mov dl,0x30
00006A2A  B80C0D            mov ax,0xd0c
00006A2D  E9DC97            jmp 0x20c
00006A30  1A1B              sbb bl,[bp+di]
00006A32  80445A0B          add byte [si+0x5a],0xb
00006A36  6B1AD5            imul bx,[bp+si],byte -0x2b
00006A39  6A10              push byte +0x10
00006A3B  4B                dec bx
00006A3C  03F1              add si,cx
00006A3E  DBB82817          fstp tword [bx+si+0x1728]
00006A42  8ABA190B          mov bh,[bp+si+0xb19]
00006A46  DA2A              fisubr dword [bp+si]
00006A48  6B932F0C77        imul dx,[bp+di+0xc2f],byte +0x77
00006A4D  7D19              jnl 0x6a68
00006A4F  D7                xlatb
00006A50  63EB              arpl bx,bp
00006A52  0F08              invd
00006A54  748C              jz 0x69e2
00006A56  C6                db 0xc6
00006A57  ED                in ax,dx
00006A58  039BEF40          add bx,[bp+di+0x40ef]
00006A5C  EBB2              jmp short 0x6a10
00006A5E  65156681          gs adc ax,0x8166
00006A62  1119              adc [bx+di],bx
00006A64  82                db 0x82
00006A65  C1DACD            rcr dx,byte 0xcd
00006A68  24AA              and al,0xaa
00006A6A  E4FB              in al,0xfb
00006A6C  4D                dec bp
00006A6D  A5                movsw
00006A6E  49                dec cx
00006A6F  001A              add [bp+si],bl
00006A71  B2F7              mov dl,0xf7
00006A73  72AF              jc 0x6a24
00006A75  2C7B              sub al,0x7b
00006A77  0E                push cs
00006A78  096B05            or [bp+di+0x5],bp
00006A7B  4A                dec dx
00006A7C  EE                out dx,al
00006A7D  27                daa
00006A7E  18065AA3          sbb [0xa35a],al
00006A82  80900321B9        adc byte [bx+si+0x2103],0xb9
00006A87  0C6F              or al,0x6f
00006A89  B95A74            mov cx,0x745a
00006A8C  0922              or [bp+si],sp
00006A8E  2135              and [di],si
00006A90  62                db 0x62
00006A91  C9                leave
00006A92  0E                push cs
00006A93  95                xchg ax,bp
00006A94  EE                out dx,al
00006A95  E80500            call 0x6a9d
00006A98  62                db 0x62
00006A99  DCEB              fsub to st3
00006A9B  9C                pushf
00006A9C  5F                pop di
00006A9D  33F7              xor si,di
00006A9F  EF                out dx,ax
00006AA0  92                xchg ax,dx
00006AA1  8B0E5254          mov cx,[0x5452]
00006AA5  BEF577            mov si,0x77f5
00006AA8  878A16D8          xchg [bp+si-0x27ea],cx
00006AAC  6C                insb
00006AAD  8037E5            xor byte [bx],0xe5
00006AB0  30F6              xor dh,dh
00006AB2  C6                db 0xc6
00006AB3  39C2              cmp dx,ax
00006AB5  CC                int3
00006AB6  FB                sti
00006AB7  78FF              js 0x6ab8
00006AB9  3B0E205B          cmp cx,[0x5b20]
00006ABD  CE                into
00006ABE  8EDF              mov ds,di
00006AC0  E164              loope 0x6b26
00006AC2  46                inc si
00006AC3  2840F1            sub [bx+si-0xf],al
00006AC6  54                push sp
00006AC7  03475C            add ax,[bx+0x5c]
00006ACA  8111D64F          adc word [bx+di],0x4fd6
00006ACE  BD5D53            mov bp,0x535d
00006AD1  AC                lodsb
00006AD2  0123              add [bp+di],sp
00006AD4  AE                scasb
00006AD5  C12442            shl word [si],byte 0x42
00006AD8  B8B765            mov ax,0x65b7
00006ADB  D141C0            rol word [bx+di-0x40],1
00006ADE  EBCA              jmp short 0x6aaa
00006AE0  17                pop ss
00006AE1  8707              xchg [bx],ax
00006AE3  BBDF75            mov bx,0x75df
00006AE6  1A3F              sbb bh,[bx]
00006AE8  758E              jnz 0x6a78
00006AEA  14D3              adc al,0xd3
00006AEC  EE                out dx,al
00006AED  5A                pop dx
00006AEE  EB0E              jmp short 0x6afe
00006AF0  3D632E            cmp ax,0x2e63
00006AF3  2287FF70          and al,[bx+0x70ff]
00006AF7  B5A2              mov ch,0xa2
00006AF9  6756              a32 push si
00006AFB  8EEA              mov gs,dx
00006AFD  53                push bx
00006AFE  FA                cli
00006AFF  60                pusha
00006B00  0A2D              or ch,[di]
00006B02  08E3              or bl,ah
00006B04  51                push cx
00006B05  6A42              push byte +0x42
00006B07  74EE              jz 0x6af7
00006B09  41                inc cx
00006B0A  DB5A02            fistp dword [bp+si+0x2]
00006B0D  FB                sti
00006B0E  FA                cli
00006B0F  AA                stosb
00006B10  FA                cli
00006B11  152DD3            adc ax,0xd32d
00006B14  1531FC            adc ax,0xfc31
00006B17  8917              mov [bx],dx
00006B19  26894F8F          mov [es:bx-0x71],cx
00006B1D  E869A4            call 0xf89
00006B20  1008              adc [bx+si],cl
00006B22  F03207            lock xor al,[bx]
00006B25  854504            test [di+0x4],ax
00006B28  0F0311            lsl dx,[bx+di]
00006B2B  2C13              sub al,0x13
00006B2D  149B              adc al,0x9b
00006B2F  BA1EFF            mov dx,0xff1e
00006B32  0FB47608          lfs si,[bp+0x8]
00006B36  FF4E80            dec word [bp-0x80]
00006B39  0C50              or al,0x50
00006B3B  42                inc dx
00006B3C  B31E              mov bl,0x1e
00006B3E  40                inc ax
00006B3F  A92066            test ax,0x6620
00006B42  0CB5              or al,0xb5
00006B44  08FB              or bl,bh
00006B46  0B79EA            or di,[bx+di-0x16]
00006B49  52                push dx
00006B4A  24D0              and al,0xd0
00006B4C  046C              add al,0x6c
00006B4E  3317              xor dx,[bx]
00006B50  6D                insw
00006B51  96                xchg ax,si
00006B52  04D3              add al,0xd3
00006B54  16                push ss
00006B55  0A7506            or dh,[di+0x6]
00006B58  98                cbw
00006B59  2D2BA2            sub ax,0xa22b
00006B5C  146A              adc al,0x6a
00006B5E  64B5BF            fs mov ch,0xbf
00006B61  A3F26C            mov [0x6cf2],ax
00006B64  90                nop
00006B65  6B500BBA          imul dx,[bx+si+0xb],byte -0x46
00006B69  1429              adc al,0x29
00006B6B  D0944D05          rcl byte [si+0x54d],1
00006B6F  2CF6              sub al,0xf6
00006B71  B750              mov bh,0x50
00006B73  A2D50D            mov [0xdd5],al
00006B76  53                push bx
00006B77  93                xchg ax,bx
00006B78  06                push es
00006B79  636189            arpl [bx+di-0x77],sp
00006B7C  052097            add ax,0x9720
00006B7F  D6                salc
00006B80  53                push bx
00006B81  22C8              and cl,al
00006B83  10C1              adc cl,al
00006B85  0E                push cs
00006B86  16                push ss
00006B87  4B                dec bx
00006B88  8A3F              mov bh,[bx]
00006B8A  9E                sahf
00006B8B  5E                pop si
00006B8C  8E1D              mov ds,[di]
00006B8E  BDEF0D            mov bp,0xdef
00006B91  0DC714            or ax,0x14c7
00006B94  238A31FA          and cx,[bp+si-0x5cf]
00006B98  98                cbw
00006B99  39C8              cmp ax,cx
00006B9B  7521              jnz 0x6bbe
00006B9D  21A87A01          and [bx+si+0x17a],bp
00006BA1  57                push di
00006BA2  50                push ax
00006BA3  093C              or [si],di
00006BA5  3D57FF            cmp ax,0xff57
00006BA8  11B2240E          adc [bp+si+0xe24],si
00006BAC  20BFDF01          and [bx+0x1df],bh
00006BB0  EB80              jmp short 0x6b32
00006BB2  0D193C            or ax,0x3c19
00006BB5  BA0B83            mov dx,0x830b
00006BB8  C3                ret
00006BB9  DB                db 0xdb
00006BBA  60                pusha
00006BBB  C46F91            les bp,[bx-0x6f]
00006BBE  48                dec ax
00006BBF  1DE027            sbb ax,0x27e0
00006BC2  05A100            add ax,0xa1
00006BC5  038DD66C          add cx,[di+0x6cd6]
00006BC9  115CA2            adc [si-0x5e],bx
00006BCC  1421              adc al,0x21
00006BCE  57                push di
00006BCF  700A              jo 0x6bdb
00006BD1  86AFA9EB          xchg [bx-0x1457],ch
00006BD5  08B07D2C          or [bx+si+0x2c7d],dh
00006BD9  07                pop es
00006BDA  86E1              xchg cl,ah
00006BDC  FE                db 0xfe
00006BDD  BBB976            mov bx,0x76b9
00006BE0  85FF              test di,di
00006BE2  92                xchg ax,dx
00006BE3  3112              xor [bp+si],dx
00006BE5  C119F6            rcr word [bx+di],byte 0xf6
00006BE8  44                inc sp
00006BE9  0BFA              or di,dx
00006BEB  01469F            add [bp-0x61],ax
00006BEE  ED                in ax,dx
00006BEF  833D9C            cmp word [di],byte -0x64
00006BF2  F8                clc
00006BF3  37                aaa
00006BF4  43                inc bx
00006BF5  43                inc bx
00006BF6  6A00              push byte +0x0
00006BF8  AF                scasw
00006BF9  E86C83            call 0xef68
00006BFC  6255A3            bound dx,[di-0x5d]
00006BFF  C5827AE8          lds ax,[bp+si-0x1786]
00006C03  B2F9              mov dl,0xf9
00006C05  251FF7            and ax,0xf71f
00006C08  57                push di
00006C09  8B34              mov si,[si]
00006C0B  46                inc si
00006C0C  51                push cx
00006C0D  53                push bx
00006C0E  EE                out dx,al
00006C0F  36BEC1FC          ss mov si,0xfcc1
00006C13  5B                pop bx
00006C14  186D40            sbb [di+0x40],ch
00006C17  709D              jo 0x6bb6
00006C19  5C                pop sp
00006C1A  6437              fs aaa
00006C1C  8D4B83            lea cx,[bp+di-0x7d]
00006C1F  43                inc bx
00006C20  FF81FBAD          inc word [bx+di-0x5205]
00006C24  7F72              jg 0x6c98
00006C26  B7B8              mov bh,0xb8
00006C28  F61B              neg byte [bp+di]
00006C2A  51                push cx
00006C2B  2C14              sub al,0x14
00006C2D  33EC              xor bp,sp
00006C2F  61                popa
00006C30  95                xchg ax,bp
00006C31  AD                lodsw
00006C32  CC                int3
00006C33  AF                scasw
00006C34  50                push ax
00006C35  AD                lodsw
00006C36  7650              jna 0x6c88
00006C38  052B47            add ax,0x472b
00006C3B  CB                retf
00006C3C  07                pop es
00006C3D  C10B75            ror word [bp+di],byte 0x75
00006C40  4A                dec dx
00006C41  0CB0              or al,0xb0
00006C43  A35355            mov [0x5553],ax
00006C46  F8                clc
00006C47  1D418D            sbb ax,0x8d41
00006C4A  A8E8              test al,0xe8
00006C4C  B94056            mov cx,0x5640
00006C4F  D310              rcl word [bx+si],cl
00006C51  BB85E8            mov bx,0xe885
00006C54  50                push ax
00006C55  D553              aad 0x53
00006C57  52                push dx
00006C58  06                push es
00006C59  5D                pop bp
00006C5A  EA01E8DC4E        jmp 0x4edc:0xe801
00006C5F  B8226C            mov ax,0x6c22
00006C62  B715              mov bh,0x15
00006C64  41                inc cx
00006C65  D2FE              sar dh,cl
00006C67  0AF6              or dh,dh
00006C69  0CB8              or al,0xb8
00006C6B  230D              and cx,[di]
00006C6D  CF                iret
00006C6E  07                pop es
00006C6F  0E                push cs
00006C70  37                aaa
00006C71  10B8242E          adc [bx+si+0x2e24],bh
00006C75  F9                stc
00006C76  FD                std
00006C77  6912AD14          imul dx,[bp+si],word 0x14ad
00006C7B  03C4              add ax,sp
00006C7D  5F                pop di
00006C7E  16                push ss
00006C7F  0B5090            or dx,[bx+si-0x70]
00006C82  54                push sp
00006C83  4A                dec dx
00006C84  EC                in al,dx
00006C85  1BAE0691          sbb bp,[bp-0x6efa]
00006C89  6C                insb
00006C8A  3EC244B3          ds ret 0xb344
00006C8E  31408A            xor [bx+si-0x76],ax
00006C91  30FB              xor bl,bh
00006C93  D14703            rol word [bx+0x3],1
00006C96  3D6028            cmp ax,0x2860
00006C99  7C2F              jl 0x6cca
00006C9B  6282F835          bound ax,[bp+si+0x35f8]
00006C9F  882D              mov [di],ch
00006CA1  54                push sp
00006CA2  FF30              push word [bx+si]
00006CA4  A4                movsb
00006CA5  81F19D41          xor cx,0x419d
00006CA9  385008            cmp [bx+si+0x8],dl
00006CAC  28E3              sub bl,ah
00006CAE  3A6535            cmp ah,[di+0x35]
00006CB1  812FB732          sub word [bx],0x32b7
00006CB5  1400              adc al,0x0
00006CB7  FB                sti
00006CB8  57                push di
00006CB9  6A18              push byte +0x18
00006CBB  68FFBB            push word 0xbbff
00006CBE  6314              arpl [si],dx
00006CC0  3F                aas
00006CC1  6E                outsb
00006CC2  8C10              mov [bx+si],ss
00006CC4  D1                db 0xd1
00006CC5  3418              xor al,0x18
00006CC7  D8D5              fcom st5
00006CC9  7F36              jg 0x6d01
00006CCB  6F                outsw
00006CCC  DF83FB14          fild word [bp+di+0x14fb]
00006CD0  7DA0              jnl 0x6c72
00006CD2  2DA640            sub ax,0x40a6
00006CD5  BAA8C7            mov dx,0xc7a8
00006CD8  F1                int1
00006CD9  0CD8              or al,0xd8
00006CDB  E034              loopne 0x6d11
00006CDD  A5                movsw
00006CDE  42                inc dx
00006CDF  F6658E            mul byte [di-0x72]
00006CE2  6D                insw
00006CE3  366685424C        test [ss:bp+si+0x4c],eax
00006CE8  D417              aam 0x17
00006CEA  3001              xor [bx+di],al
00006CEC  D946E9            fld dword [bp-0x17]
00006CEF  A5                movsw
00006CF0  4D                dec bp
00006CF1  AD                lodsw
00006CF2  CF                iret
00006CF3  2DF045            sub ax,0x45f0
00006CF6  18EB              sbb bl,ch
00006CF8  CD23              int 0x23
00006CFA  7344              jnc 0x6d40
00006CFC  AD                lodsw
00006CFD  5C                pop sp
00006CFE  26E044            es loopne 0x6d45
00006D01  5D                pop bp
00006D02  06                push es
00006D03  8B6C1D            mov bp,[si+0x1d]
00006D06  16                push ss
00006D07  8CD3              mov bx,ss
00006D09  106C48            adc [si+0x48],ch
00006D0C  6D                insw
00006D0D  3305              xor ax,[di]
00006D0F  6D                insw
00006D10  8480A777          test [bx+si+0x77a7],al
00006D14  058100            add ax,0x81
00006D17  0D1060            or ax,0x6010
00006D1A  7F84              jg 0x6ca0
00006D1C  CB                retf
00006D1D  B8C136            mov ax,0x36c1
00006D20  4C                dec sp
00006D21  0E                push cs
00006D22  157AD0            adc ax,0xd07a
00006D25  BA4137            mov dx,0x3741
00006D28  1F                pop ds
00006D29  E95168            jmp 0xd57d
00006D2C  682A06            push word 0x62a
00006D2F  FB                sti
00006D30  BB0207            mov bx,0x702
00006D33  E8BD8E            call 0xfbf3
00006D36  8B0F              mov cx,[bx]
00006D38  8006BBCC1A        add byte [0xccbb],0x1a
00006D3D  51                push cx
00006D3E  DD                db 0xdd
00006D3F  6A5C              push byte +0x5c
00006D41  150868            adc ax,0x6808
00006D44  52                push dx
00006D45  5D                pop bp
00006D46  65A7              gs cmpsw
00006D48  8BB70C6C          mov si,[bx+0x6c0c]
00006D4C  23DD              and bx,bp
00006D4E  0A0C              or cl,[si]
00006D50  9A818BD91C        call 0x1cd9:0x8b81
00006D55  4D                dec bp
00006D56  0150B0            add [bx+si-0x50],dx
00006D59  DA09              fimul dword [bx+di]
00006D5B  D405              aam 0x5
00006D5D  C2DA1B            ret 0x1bda
00006D60  0142BA            add [bp+si-0x46],ax
00006D63  4B                dec bx
00006D64  2C37              sub al,0x37
00006D66  F6461268          test byte [bp+0x12],0x68
00006D6A  1B0A              sbb cx,[bp+si]
00006D6C  5D                pop bp
00006D6D  5A                pop dx
00006D6E  12FF              adc bh,bh
00006D70  B008              mov al,0x8
00006D72  2645              es inc bp
00006D74  D4E7              aam 0xe7
00006D76  2F                das
00006D77  55                push bp
00006D78  B076              mov al,0x76
00006D7A  1250D6            adc dl,[bx+si-0x2a]
00006D7D  020D              add cl,[di]
00006D7F  04C1              add al,0xc1
00006D81  3A12              cmp dl,[bp+si]
00006D83  77D1              ja 0x6d56
00006D85  E4AE              in al,0xae
00006D87  D7                xlatb
00006D88  05BFDE            add ax,0xdebf
00006D8B  28EB              sub bl,ch
00006D8D  D854B5            fcom dword [si-0x4b]
00006D90  50                push ax
00006D91  220A              and cl,[bp+si]
00006D93  F637              div byte [bx]
00006D95  5A                pop dx
00006D96  01CB              add bx,cx
00006D98  4E                dec si
00006D99  1019              adc [bx+di],bl
00006D9B  53                push bx
00006D9C  F6ED              imul ch
00006D9E  FB                sti
00006D9F  0DDA8A            or ax,0x8ada
00006DA2  09DC              or sp,bx
00006DA4  EB57              jmp short 0x6dfd
00006DA6  08407D            or [bx+si+0x7d],al
00006DA9  9E                sahf
00006DAA  2B862128          sub ax,[bp+0x2821]
00006DAE  1A24              sbb ah,[si]
00006DB0  1E                push ds
00006DB1  51                push cx
00006DB2  CE                into
00006DB3  2605E661          es add ax,0x61e6
00006DB7  7CC5              jl 0x6d7e
00006DB9  4B                dec bx
00006DBA  3BBF7739          cmp di,[bx+0x3977]
00006DBE  1F                pop ds
00006DBF  83EBA8            sub bx,byte -0x58
00006DC2  209742EB          and [bx-0x14be],dl
00006DC6  C17D2F0A          sar word [di+0x2f],byte 0xa
00006DCA  DB4301            fild dword [bp+di+0x1]
00006DCD  CF                iret
00006DCE  F9                stc
00006DCF  6A45              push byte +0x45
00006DD1  29EB              sub bx,bp
00006DD3  A850              test al,0x50
00006DD5  55                push bp
00006DD6  4D                dec bp
00006DD7  46                inc si
00006DD8  A4                movsb
00006DD9  DB5FD6            fistp dword [bx-0x2a]
00006DDC  C2001D            ret 0x1d00
00006DDF  3A04              cmp al,[si]
00006DE1  53                push bx
00006DE2  ED                in ax,dx
00006DE3  55                push bp
00006DE4  40                inc ax
00006DE5  FE0F              dec byte [bx]
00006DE7  5C                pop sp
00006DE8  E8D09F            call 0xdbb
00006DEB  93                xchg ax,bx
00006DEC  40                inc ax
00006DED  50                push ax
00006DEE  1F                pop ds
00006DEF  E90385            jmp 0xf2f5
00006DF2  BB997F            mov bx,0x7f99
00006DF5  16                push ss
00006DF6  6C                insb
00006DF7  E8B925            call 0x93b3
00006DFA  AA                stosb
00006DFB  AF                scasw
00006DFC  84E2              test dl,ah
00006DFE  FF09              dec word [bx+di]
00006E00  D8A432B0          fsub dword [si-0x4fce]
00006E04  60                pusha
00006E05  26CE              es into
00006E07  D6                salc
00006E08  0F5B80FFEC        cvtdq2ps xmm0,[bx+si-0x1301]
00006E0D  3C64              cmp al,0x64
00006E0F  8C2C              mov [si],gs
00006E11  F1                int1
00006E12  64CE              fs into
00006E14  07                pop es
00006E15  B73A              mov bh,0x3a
00006E17  6A84              push byte -0x7c
00006E19  05F18B            add ax,0x8bf1
00006E1C  1E                push ds
00006E1D  8605              xchg [di],al
00006E1F  0224              add ah,[si]
00006E21  DB2E035D          fld tword [0x5d03]
00006E25  A23024            mov [0x2430],al
00006E28  E87E67            call 0xd5a9
00006E2B  16                push ss
00006E2C  FE                db 0xfe
00006E2D  A330A9            mov [0xa930],ax
00006E30  F7815C981462      test word [bx+di-0x67a4],0x6214
00006E36  003F              add [bx],bh
00006E38  3659              ss pop cx
00006E3A  C45CB5            les bx,[si-0x4b]
00006E3D  0E                push cs
00006E3E  B5A3              mov ch,0xa3
00006E40  C8829D03          enter 0x9d82,0x3
00006E44  1032              adc [bp+si],dh
00006E46  3A7F14            cmp bh,[bx+0x14]
00006E49  E90614            jmp 0x8252
00006E4C  66127D03          o32 adc bh,[di+0x3]
00006E50  08AF0A1C          or [bx+0x1c0a],ch
00006E54  830A15            or word [bp+si],byte +0x15
00006E57  BA0C1E            mov dx,0x1e0c
00006E5A  09F6              or si,si
00006E5C  8003DD            add byte [bp+di],0xdd
00006E5F  0F                db 0x0f
00006E60  0C04              or al,0x4
00006E62  6BAD05BA16        imul bp,[di-0x45fb],byte +0x16
00006E67  0002              add [bp+si],al
00006E69  087653            or [bp+0x53],dh
00006E6C  AA                stosb
00006E6D  88649D            mov [si-0x63],ah
00006E70  B414              mov ah,0x14
00006E72  06                push es
00006E73  BE3541            mov si,0x4135
00006E76  8B83C496          mov ax,[bp+di-0x693c]
00006E7A  48                dec ax
00006E7B  6C                insb
00006E7C  252074            and ax,0x7420
00006E7F  5C                pop sp
00006E80  8B38              mov di,[bx+si]
00006E82  A2012B            mov [0x2b01],al
00006E85  44                inc sp
00006E86  92                xchg ax,dx
00006E87  6F                outsw
00006E88  A3BD84            mov [0x84bd],ax
00006E8B  9C                pushf
00006E8C  5C                pop sp
00006E8D  264F              es dec di
00006E8F  57                push di
00006E90  3F                aas
00006E91  1347E2            adc ax,[bx-0x1e]
00006E94  40                inc ax
00006E95  E8D7B1            call 0x206f
00006E98  0CC5              or al,0xc5
00006E9A  BFFDA0            mov di,0xa0fd
00006E9D  3B0F              cmp cx,[bx]
00006E9F  7610              jna 0x6eb1
00006EA1  36C9              ss leave
00006EA3  64F8              fs clc
00006EA5  2461              and al,0x61
00006EA7  41                inc cx
00006EA8  5B                pop bx
00006EA9  A4                movsb
00006EAA  5A                pop dx
00006EAB  B8F812            mov ax,0x12f8
00006EAE  4E                dec si
00006EAF  58                pop ax
00006EB0  28C4              sub ah,al
00006EB2  0173F4            add [bp+di-0xc],si
00006EB5  F9                stc
00006EB6  74CB              jz 0x6e83
00006EB8  51                push cx
00006EB9  8AC9              mov cl,cl
00006EBB  6C                insb
00006EBC  C3                ret
00006EBD  EE                out dx,al
00006EBE  F5                cmc
00006EBF  55                push bp
00006EC0  3655              ss push bp
00006EC2  7434              jz 0x6ef8
00006EC4  82                db 0x82
00006EC5  54                push sp
00006EC6  F06D              lock insw
00006EC8  8453A2            test [bp+di-0x5e],dl
00006ECB  1060A0            adc [bx+si-0x60],ah
00006ECE  0299DCD8          add bl,[bx+di-0x2724]
00006ED2  15CE65            adc ax,0x65ce
00006ED5  1DE81C            sbb ax,0x1ce8
00006ED8  1991C164          sbb [bx+di+0x64c1],dx
00006EDC  1CEC              sbb al,0xec
00006EDE  BBF55A            mov bx,0x5af5
00006EE1  C4B0B73F          les si,[bx+si+0x3fb7]
00006EE5  47                inc di
00006EE6  697E69FD3B        imul di,[bp+0x69],word 0x3bfd
00006EEB  3F                aas
00006EEC  0F860005          jna near 0x73f0
00006EF0  67F704E847F8      test word [dword eax+ebp*8],0xf847
00006EF6  6670E9            o32 jo 0x6ee2
00006EF9  58                pop ax
00006EFA  FD                std
00006EFB  F4                hlt
00006EFC  6212              bound dx,[bp+si]
00006EFE  9A5F5853CE        call 0xce53:0x585f
00006F03  82                db 0x82
00006F04  51                push cx
00006F05  CE                into
00006F06  6C                insb
00006F07  07                pop es
00006F08  F2043E            repne add al,0x3e
00006F0B  3686FA            ss xchg dl,bh
00006F0E  08FE              or dh,bh
00006F10  52                push dx
00006F11  00FE              add dh,bh
00006F13  721A              jc 0x6f2f
00006F15  95                xchg ax,bp
00006F16  FE                db 0xfe
00006F17  BA4505            mov dx,0x545
00006F1A  B4F6              mov ah,0xf6
00006F1C  06                push es
00006F1D  63B6E50A          arpl [bp+0xae5],si
00006F21  02956D44          add dl,[di+0x446d]
00006F25  A250F0            mov [0xf050],al
00006F28  F5                cmc
00006F29  70A3              jo 0x6ece
00006F2B  A054CC            mov al,[0xcc54]
00006F2E  4F                dec di
00006F2F  9E                sahf
00006F30  FE425A            inc byte [bp+si+0x5a]
00006F33  CB                retf
00006F34  0A0B              or cl,[bp+di]
00006F36  D10C              ror word [si],1
00006F38  80288B            sub byte [bx+si],0x8b
00006F3B  3EB296            ds mov dl,0x96
00006F3E  2BBAA257          sub di,[bp+si+0x57a2]
00006F42  B498              mov ah,0x98
00006F44  1D922A            sbb ax,0x2a92
00006F47  AA                stosb
00006F48  FB                sti
00006F49  3E3A0B            cmp cl,[ds:bp+di]
00006F4C  A1E944            mov ax,[0x44e9]
00006F4F  1B1F              sbb bx,[bx]
00006F51  E8DDE4            call 0x5431
00006F54  FE0EC9AA          dec byte [0xaac9]
00006F58  7517              jnz 0x6f71
00006F5A  EAF28D50CD        jmp 0xcd50:0x8df2
00006F5F  B811CE            mov ax,0xce11
00006F62  12FF              adc bh,bh
00006F64  B5E2              mov ch,0xe2
00006F66  17                pop ss
00006F67  52                push dx
00006F68  6C                insb
00006F69  AE                scasb
00006F6A  F7                db 0xf7
00006F6B  49                dec cx
00006F6C  6D                insw
00006F6D  15F56F            adc ax,0x6ff5
00006F70  59                pop cx
00006F71  E850F9            call 0x68c4
00006F74  95                xchg ax,bp
00006F75  8AC0              mov al,al
00006F77  51                push cx
00006F78  D4C5              aam 0xc5
00006F7A  6A4F              push byte +0x4f
00006F7C  17                pop ss
00006F7D  A7                cmpsw
00006F7E  0A7F70            or bh,[bx+0x70]
00006F81  24A8              and al,0xa8
00006F83  D5BC              aad 0xbc
00006F85  55                push bp
00006F86  9D                popf
00006F87  1BFF              sbb di,di
00006F89  06                push es
00006F8A  6C                insb
00006F8B  C0052B            rol byte [di],byte 0x2b
00006F8E  A10643            mov ax,[0x4306]
00006F91  E008              loopne 0x6f9b
00006F93  34B0              xor al,0xb0
00006F95  53                push bx
00006F96  9E                sahf
00006F97  B511              mov ch,0x11
00006F99  E80616            call 0x85a2
00006F9C  FB                sti
00006F9D  EE                out dx,al
00006F9E  0902              or [bp+si],ax
00006FA0  40                inc ax
00006FA1  A2050B            mov [0xb05],al
00006FA4  07                pop es
00006FA5  3C02              cmp al,0x2
00006FA7  A028AE            mov al,[0xae28]
00006FAA  03F4              add si,sp
00006FAC  EF                out dx,ax
00006FAD  FA                cli
00006FAE  2A11              sub dl,[bx+di]
00006FB0  1B54FE            sbb dx,[si-0x2]
00006FB3  95                xchg ax,bp
00006FB4  FFAE411A          jmp far [bp+0x1a41]
00006FB8  D527              aad 0x27
00006FBA  9E                sahf
00006FBB  1F                pop ds
00006FBC  D122              shl word [bp+si],1
00006FBE  BDA519            mov bp,0x19a5
00006FC1  42                inc dx
00006FC2  B6C7              mov dh,0xc7
00006FC4  004283            add [bp+si-0x7d],al
00006FC7  5C                pop sp
00006FC8  A01216            mov al,[0x1612]
00006FCB  BC14BF            mov sp,0xbf14
00006FCE  C467F9            les sp,[bx-0x7]
00006FD1  40                inc ax
00006FD2  B4AA              mov ah,0xaa
00006FD4  0359F3            add bx,[bx+di-0xd]
00006FD7  82                db 0x82
00006FD8  5D                pop bp
00006FD9  4C                dec sp
00006FDA  6AFB              push byte -0x5
00006FDC  FB                sti
00006FDD  D91E560B          fstp dword [0xb56]
00006FE1  AD                lodsw
00006FE2  48                dec ax
00006FE3  D16EB0            shr word [bp-0x50],1
00006FE6  18FC              sbb ah,bh
00006FE8  2A1B              sub bl,[bp+di]
00006FEA  1410              adc al,0x10
00006FEC  7673              jna 0x7061
00006FEE  7F06              jg 0x6ff6
00006FF0  A0EBEF            mov al,[0xefeb]
00006FF3  82                db 0x82
00006FF4  F2117306          repne adc [bp+di+0x6],si
00006FF8  0F5D568E          minps xmm2,oword [bp-0x72]
00006FFC  FFB4759D          push word [si-0x628b]
00007000  6E                outsb
00007001  AA                stosb
00007002  1015              adc [di],dl
00007004  33546F            xor dx,[si+0x6f]
00007007  78BA              js 0x6fc3
00007009  0C00              or al,0x0
0000700B  E32B              jcxz 0x7038
0000700D  56                push si
0000700E  F257              repne push di
00007010  A5                movsw
00007011  06                push es
00007012  4B                dec bx
00007013  6C                insb
00007014  C1                db 0xc1
00007015  F666F2            mul byte [bp-0xe]
00007018  0481              add al,0x81
0000701A  33DA              xor bx,dx
0000701C  0E                push cs
0000701D  AC                lodsb
0000701E  1805              sbb [di],al
00007020  000A              add [bp+si],cl
00007022  3E3442            ds xor al,0x42
00007025  51                push cx
00007026  2BB50B85          sub si,[di-0x7af5]
0000702A  17                pop ss
0000702B  1F                pop ds
0000702C  5B                pop bx
0000702D  010A              add [bp+si],cx
0000702F  1472              adc al,0x72
00007031  3A23              cmp ah,[bp+di]
00007033  2190E2B0          and [bx+si-0x4f1e],dx
00007037  AB                stosw
00007038  64BBC189          fs mov bx,0x89c1
0000703C  F27EEA            bnd jng 0x7029
0000703F  EA2E2DC4FC        jmp 0xfcc4:0x2d2e
00007044  FE                db 0xfe
00007045  59                pop cx
00007046  56                push si
00007047  22A9FD39          and ch,[bx+di+0x39fd]
0000704B  F66D65            imul byte [di+0x65]
0000704E  B6CB              mov dh,0xcb
00007050  0A650C            or ah,[di+0xc]
00007053  3EB0F8            ds mov al,0xf8
00007056  E90D0E            jmp 0x7e66
00007059  B910B8            mov cx,0xb810
0000705C  2366A2            and sp,[bp-0x5e]
0000705F  6C                insb
00007060  D265F2            shl byte [di-0xe],cl
00007063  24ED              and al,0xed
00007065  94                xchg ax,sp
00007066  F8                clc
00007067  218D1139          and [di+0x3911],cx
0000706B  8D10              lea dx,[bx+si]
0000706D  CE                into
0000706E  D27C05            sar byte [si+0x5],cl
00007071  19C5              sbb bp,ax
00007073  2A6EDF            sub ch,[bp-0x21]
00007076  16                push ss
00007077  3B9B5874          cmp bx,[bp+di+0x7458]
0000707B  20DB              and bl,bl
0000707D  B81D16            mov ax,0x161d
00007080  C1A310D71F        shl word [bp+di-0x28f0],byte 0x1f
00007085  5C                pop sp
00007086  327308            xor dh,[bp+di+0x8]
00007089  0D17D2            or ax,0xd217
0000708C  FE                db 0xfe
0000708D  A4                movsb
0000708E  43                inc bx
0000708F  EBEF              jmp short 0x7080
00007091  E8C8D7            call 0x485c
00007094  006DC0            add [di-0x40],ch
00007097  62                db 0x62
00007098  F718              neg word [bx+si]
0000709A  8EC5              mov es,bp
0000709C  5C                pop sp
0000709D  A22D2D            mov [0x2d2d],al
000070A0  204D8B            and [di-0x75],cl
000070A3  EB10              jmp short 0x70b5
000070A5  0BEF              or bp,di
000070A7  C3                ret
000070A8  0013              add [bp+di],dl
000070AA  C3                ret
000070AB  7C2E              jl 0x70db
000070AD  8E66FE            mov fs,[bp-0x2]
000070B0  6417              fs pop ss
000070B2  C3                ret
000070B3  264D              es dec bp
000070B5  7407              jz 0x70be
000070B7  0A08              or cl,[bx+si]
000070B9  D9A430A4          fldenv [si-0x5bd0]
000070BD  6D                insw
000070BE  3ED37FD0          sar word [ds:bx-0x30],cl
000070C2  2EE80BA6          cs call 0x16d1
000070C6  8835              mov [di],dh
000070C8  40                inc ax
000070C9  212D              and [di],bp
000070CB  AB                stosw
000070CC  E5A7              in ax,0xa7
000070CE  141A              adc al,0x1a
000070D0  E988BF            jmp 0x305b
000070D3  40                inc ax
000070D4  A14288            mov ax,[0x8842]
000070D7  0405              add al,0x5
000070D9  90                nop
000070DA  E02B              loopne 0x7107
000070DC  06                push es
000070DD  46                inc si
000070DE  A19386            mov ax,[0x8693]
000070E1  6D                insw
000070E2  03BC27FE          add di,[si-0x1d9]
000070E6  23FC              and di,sp
000070E8  B483              mov ah,0x83
000070EA  1B28              sbb bp,[bx+si]
000070EC  2A5ECD            sub bl,[bp-0x33]
000070EF  03364895          add si,[0x9548]
000070F3  45                inc bp
000070F4  A1066E            mov ax,[0x6e06]
000070F7  3CE7              cmp al,0xe7
000070F9  FD                std
000070FA  66833F7E          cmp dword [bx],byte +0x7e
000070FE  17                pop ss
000070FF  F718              neg word [bx+si]
00007101  F8                clc
00007102  800CA5            or byte [si],0xa5
00007105  47                inc di
00007106  85B7C9A4          test [bx-0x5b37],si
0000710A  F8                clc
0000710B  1C11              sbb al,0x11
0000710D  3D8604            cmp ax,0x486
00007110  7656              jna 0x7168
00007112  F4                hlt
00007113  E8B5BD            call 0x2ecb
00007116  CC                int3
00007117  0E                push cs
00007118  42                inc dx
00007119  664A              dec edx
0000711B  EF                out dx,ax
0000711C  F4                hlt
0000711D  7705              ja 0x7124
0000711F  47                inc di
00007120  0AE0              or ah,al
00007122  DB09              fisttp dword [bx+di]
00007124  A15276            mov ax,[0x7652]
00007127  0B0613DE          or ax,[0xde13]
0000712B  750B              jnz 0x7138
0000712D  8A38              mov bh,[bx+si]
0000712F  FD                std
00007130  7CA8              jl 0x70da
00007132  F4                hlt
00007133  6C                insb
00007134  C8F2D76A          enter 0xd7f2,0x6a
00007138  33BC1367          xor di,[si+0x6713]
0000713C  AA                stosb
0000713D  0391F58D          add dx,[bx+di-0x720b]
00007141  0DA398            or ax,0x98a3
00007144  FC                cld
00007145  14DB              adc al,0xdb
00007147  C9                leave
00007148  E89F52            call 0xc3ea
0000714B  5E                pop si
0000714C  6497              fs xchg ax,di
0000714E  6A5A              push byte +0x5a
00007150  FD                std
00007151  18B363A6          sbb [bp+di-0x599d],dh
00007155  66F28807          repne o32 mov [bx],al
00007159  5B                pop bx
0000715A  A6                cmpsb
0000715B  6ADC              push byte -0x24
0000715D  5A                pop dx
0000715E  D515              aad 0x15
00007160  A81C              test al,0x1c
00007162  1E                push ds
00007163  82                db 0x82
00007164  5C                pop sp
00007165  E1D6              loope 0x713d
00007167  E205              loop 0x716e
00007169  356DF1            xor ax,0xf16d
0000716C  04AB              add al,0xab
0000716E  6200              bound ax,[bx+si]
00007170  749D              jz 0x710f
00007172  894D00            mov [di+0x0],cx
00007175  48                dec ax
00007176  1DDD18            sbb ax,0x18dd
00007179  1E                push ds
0000717A  852D              test [di],bp
0000717C  90                nop
0000717D  772C              ja 0x71ab
0000717F  E8A5F4            call 0x6627
00007182  7E63              jng 0x71e7
00007184  9F                lahf
00007185  F4                hlt
00007186  0B6FA9            or bp,[bx-0x57]
00007189  0CB2              or al,0xb2
0000718B  5C                pop sp
0000718C  8095A1CCAF        adc byte [di-0x335f],0xaf
00007191  207F25            and [bx+0x25],bh
00007194  83EE10            sub si,byte +0x10
00007197  83C2BB            add dx,byte -0x45
0000719A  1011              adc [bx+di],dl
0000719C  85F6              test si,si
0000719E  D0                db 0xd0
0000719F  7618              jna 0x71b9
000071A1  AE                scasb
000071A2  C9                leave
000071A3  B298              mov dl,0x98
000071A5  0E                push cs
000071A6  1C62              sbb al,0x62
000071A8  8750AB            xchg [bx+si-0x55],dx
000071AB  45                inc bp
000071AC  2F                das
000071AD  BFFA01            mov di,0x1fa
000071B0  46                inc si
000071B1  F8                clc
000071B2  B9008B            mov cx,0x8b00
000071B5  7E14              jng 0x71cb
000071B7  7DF8              jnl 0x71b1
000071B9  81FEE011          cmp si,0x11e0
000071BD  6BBF69477F        imul di,[bx+0x4769],byte +0x7f
000071C2  250486            and ax,0x8604
000071C5  57                push di
000071C6  85BFCA73          test [bx+0x73ca],di
000071CA  309B16A4          xor [bp+di-0x5bea],bl
000071CE  EF                out dx,ax
000071CF  7C10              jl 0x71e1
000071D1  1B1B              sbb bx,[bp+di]
000071D3  5A                pop dx
000071D4  81B7C70581EE      xor word [bx+0x5c7],0xee81
000071DA  6F                outsw
000071DB  03EB              add bp,bx
000071DD  D46A              aam 0x6a
000071DF  03BB5B56          add di,[bp+di+0x565b]
000071E3  A2C97E            mov [0x7ec9],al
000071E6  21CE              and si,cx
000071E8  9C                pushf
000071E9  D407              aam 0x7
000071EB  2F                das
000071EC  C9                leave
000071ED  44                inc sp
000071EE  0473              add al,0x73
000071F0  B454              mov ah,0x54
000071F2  3604AA            ss add al,0xaa
000071F5  27                daa
000071F6  038F5AB7          add cx,[bx-0x48a6]
000071FA  FD                std
000071FB  17                pop ss
000071FC  F69A6318          neg byte [bp+si+0x1863]
00007200  0411              add al,0x11
00007202  A91432            test ax,0x3214
00007205  3A5DD4            cmp bl,[di-0x2c]
00007208  6ACD              push byte -0x33
0000720A  1DB150            sbb ax,0x50b1
0000720D  AF                scasw
0000720E  66104472          o32 adc [si+0x72],al
00007212  CE                into
00007213  56                push si
00007214  2F                das
00007215  0E                push cs
00007216  B489              mov ah,0x89
00007218  55                push bp
00007219  7680              jna 0x719b
0000721B  76EC              jna 0x7209
0000721D  8D03              lea ax,[bp+di]
0000721F  630F              arpl [bx],cx
00007221  F8                clc
00007222  330C              xor cx,[si]
00007224  44                inc sp
00007225  0D3401            or ax,0x134
00007228  A3042D            mov [0x2d04],ax
0000722B  63A63A5F          arpl [bp+0x5f3a],sp
0000722F  4B                dec bx
00007230  AC                lodsb
00007231  A4                movsb
00007232  A175FC            mov ax,[0xfc75]
00007235  2BFD              sub di,bp
00007237  C436F354          les si,[0x54f3]
0000723B  48                dec ax
0000723C  4C                dec sp
0000723D  E5F1              in ax,0xf1
0000723F  F5                cmc
00007240  96                xchg ax,si
00007241  F2F4              repne hlt
00007243  75F8              jnz 0x723d
00007245  22F4              and dh,ah
00007247  F7                db 0xf7
00007248  4F                dec di
00007249  CB                retf
0000724A  1E                push ds
0000724B  53                push bx
0000724C  0E                push cs
0000724D  299F77A0          sub [bx-0x5f89],bx
00007251  F8                clc
00007252  6F                outsw
00007253  1B4C04            sbb cx,[si+0x4]
00007256  030D              add cx,[di]
00007258  140E              adc al,0xe
0000725A  8D4E2B            lea cx,[bp+0x2b]
0000725D  A5                movsw
0000725E  4F                dec di
0000725F  3C97              cmp al,0x97
00007261  57                push di
00007262  0E                push cs
00007263  54                push sp
00007264  6D                insw
00007265  104ED6            adc [bp-0x2a],cl
00007268  17                pop ss
00007269  52                push dx
0000726A  108DED6D          adc [di+0x6ded],cl
0000726E  1314              adc dx,[si]
00007270  27                daa
00007271  37                aaa
00007272  DA7E9C            fidivr dword [bp-0x64]
00007275  C5                db 0xc5
00007276  FC                cld
00007277  3C69              cmp al,0x69
00007279  01781B            add [bx+si+0x1b],di
0000727C  A3C4E0            mov [0xe0c4],ax
0000727F  FC                cld
00007280  2A64AF            sub ah,[si-0x51]
00007283  682DCE            push word 0xce2d
00007286  5E                pop si
00007287  7F8A              jg 0x7213
00007289  E81575            call 0xe7a1
0000728C  D945F5            fld dword [di-0xb]
0000728F  70A1              jo 0x7232
00007291  FB                sti
00007292  5B                pop bx
00007293  6D                insw
00007294  04FE              add al,0xfe
00007296  51                push cx
00007297  52                push dx
00007298  6A16              push byte +0x16
0000729A  E82384            call 0xf6c0
0000729D  14F3              adc al,0xf3
0000729F  45                inc bp
000072A0  BB54EE            mov bx,0xee54
000072A3  A9F0A8            test ax,0xa8f0
000072A6  17                pop ss
000072A7  2980905E          sub [bx+si+0x5e90],ax
000072AB  33C7              xor ax,di
000072AD  1309              adc cx,[bx+di]
000072AF  9E                sahf
000072B0  0022              add [bp+si],ah
000072B2  ED                in ax,dx
000072B3  28997B06          sub [bx+di+0x67b],bl
000072B7  81802BE7A93E      add word [bx+si-0x18d5],0x3ea9
000072BD  DE741C            fidiv word [si+0x1c]
000072C0  00BF5499          add [bx-0x66ac],bh
000072C4  89C1              mov cx,ax
000072C6  3D1C2E            cmp ax,0x2e1c
000072C9  1DA1DD            sbb ax,0xdda1
000072CC  0F3D              cpu_read
000072CE  4D                dec bp
000072CF  4D                dec bp
000072D0  9F                lahf
000072D1  3DC25A            cmp ax,0x5ac2
000072D4  4D                dec bp
000072D5  11B58705          adc [di+0x587],si
000072D9  AD                lodsw
000072DA  92                xchg ax,dx
000072DB  55                push bp
000072DC  633A              arpl [bp+si],di
000072DE  0DE1FD            or ax,0xfde1
000072E1  EB12              jmp short 0x72f5
000072E3  E99813            jmp 0x867e
000072E6  4D                dec bp
000072E7  78B0              js 0x7299
000072E9  90                nop
000072EA  C1518E1D          rcl word [bx+di-0x72],byte 0x1d
000072EE  9AA0225192        call 0x9251:0x22a0
000072F3  B83E19            mov ax,0x193e
000072F6  FB                sti
000072F7  009B0F13          add [bp+di+0x130f],bl
000072FB  FB                sti
000072FC  041C              add al,0x1c
000072FE  62                db 0x62
000072FF  F7                db 0xf7
00007300  8F                db 0x8f
00007301  8D7895            lea di,[bx+si-0x6b]
00007304  83E903            sub cx,byte +0x3
00007307  21B376C8          and [bp+di-0x378a],si
0000730B  1AC2              sbb al,dl
0000730D  8B4C62            mov cx,[si+0x62]
00007310  06                push es
00007311  16                push ss
00007312  FD                std
00007313  10AF1D0A          adc [bx+0xa1d],ch
00007317  7B2B              jpo 0x7344
00007319  06                push es
0000731A  47                inc di
0000731B  2E0234            add dh,[cs:si]
0000731E  100C              adc [si],cl
00007320  089641E6          or [bp-0x19bf],dl
00007324  857D6E            test [di+0x6e],di
00007327  2F                das
00007328  7004              jo 0x732e
0000732A  2F                das
0000732B  52                push dx
0000732C  16                push ss
0000732D  9AF7E8A383        call 0x83a3:0xe8f7
00007332  0B7BE8            or di,[bp+di-0x18]
00007335  C783BA0550A1      mov word [bp+di+0x5ba],0xa150
0000733B  54                push sp
0000733C  C15D1508          rcr word [di+0x15],byte 0x8
00007340  348D              xor al,0x8d
00007342  8F                db 0x8f
00007343  B183              mov cl,0x83
00007345  BB34C3            mov bx,0xc334
00007348  4C                dec sp
00007349  C6                db 0xc6
0000734A  EF                out dx,ax
0000734B  0D6A09            or ax,0x96a
0000734E  E8B7B5            call 0x2908
00007351  8383EFE40D        add word [bp+di-0x1b11],byte +0xd
00007356  E420              in al,0x20
00007358  E8A9C6            call 0x3a04
0000735B  B88528            mov ax,0x2885
0000735E  C54949            lds cx,[bx+di+0x49]
00007361  4B                dec bx
00007362  59                pop cx
00007363  4B                dec bx
00007364  F5                cmc
00007365  39CB              cmp bx,cx
00007367  7207              jc 0x7370
00007369  10A13ED2          adc [bx+di-0x2dc2],ah
0000736D  77EB              ja 0x735a
0000736F  F4                hlt
00007370  0E                push cs
00007371  5B                pop bx
00007372  C60700            mov byte [bx],0x0
00007375  55                push bp
00007376  A950B3            test ax,0xb350
00007379  7F88              jg 0x7303
0000737B  07                pop es
0000737C  43                inc bx
0000737D  8C5EEA            mov [bp-0x16],ds
00007380  6D                insw
00007381  44                inc sp
00007382  E83604            call 0x77bb
00007385  28C8              sub al,cl
00007387  B71F              mov bh,0x1f
00007389  EA2C800251        jmp 0x5102:0x802c
0000738E  6207              bound ax,[bx]
00007390  D5DB              aad 0xdb
00007392  8D8C507F          lea cx,[si+0x7f50]
00007396  685887            push word 0x8758
00007399  B8AB36            mov ax,0x36ab
0000739C  F4                hlt
0000739D  B70D              mov bh,0xd
0000739F  B80B68            mov ax,0x680b
000073A2  770D              ja 0x73b1
000073A4  A5                movsw
000073A5  E612              out 0x12,al
000073A7  04DB              add al,0xdb
000073A9  700C              jo 0x73b7
000073AB  5B                pop bx
000073AC  6E                outsb
000073AD  126A0D            adc ch,[bp+si+0xd]
000073B0  1550FE            adc ax,0xfe50
000073B3  6D                insw
000073B4  43                inc bx
000073B5  E84587            call 0xfafd
000073B8  C3                ret
000073B9  8B01              mov ax,[bx+di]
000073BB  0300              add ax,[bx+si]
000073BD  60                pusha
000073BE  6E                outsb
000073BF  FFA91125          jmp far [bx+di+0x2511]
000073C3  0127              add [bx],sp
000073C5  A5                movsw
000073C6  6541              gs inc cx
000073C8  BA2C77            mov dx,0x772c
000073CB  06                push es
000073CC  EE                out dx,al
000073CD  57                push di
000073CE  32EB              xor ch,bl
000073D0  4C                dec sp
000073D1  039F919E          add bx,[bx-0x616f]
000073D5  DD440F            fld qword [si+0xf]
000073D8  60                pusha
000073D9  1BAAE8C5          sbb bp,[bp+si-0x3a18]
000073DD  D3EE              shr si,cl
000073DF  13D5              adc dx,bp
000073E1  805DFF30          sbb byte [di-0x1],0x30
000073E5  FFAE87B3          jmp far [bp-0x4c79]
000073E9  5D                pop bp
000073EA  ED                in ax,dx
000073EB  32D5              xor dl,ch
000073ED  51                push cx
000073EE  53                push bx
000073EF  5D                pop bp
000073F0  F5                cmc
000073F1  34F0              xor al,0xf0
000073F3  52                push dx
000073F4  E85B82            call 0xf652
000073F7  A8CE              test al,0xce
000073F9  E00A              loopne 0x7405
000073FB  AA                stosb
000073FC  695BDF500C        imul bx,[bp+di-0x21],word 0xc50
00007401  9B45              wait inc bp
00007403  77A3              ja 0x73a8
00007405  322A              xor ch,[bp+si]
00007407  735F              jnc 0x7468
00007409  3445              xor al,0x45
0000740B  361E              ss push ds
0000740D  03B38610          add si,[bp+di+0x1086]
00007411  1939              sbb [bx+di],di
00007413  D0500A            rcl byte [bx+si+0xa],1
00007416  A13642            mov ax,[0x4236]
00007419  52                push dx
0000741A  DD                db 0xdd
0000741B  28878256          sub [bx+0x5682],al
0000741F  0288B53A          add cl,[bx+si+0x3ab5]
00007423  AB                stosw
00007424  96                xchg ax,si
00007425  C47F93            les di,[bx-0x6d]
00007428  0005              add [di],al
0000742A  751B              jnz 0x7447
0000742C  3B6E0B            cmp bp,[bp+0xb]
0000742F  740E              jz 0x743f
00007431  2977E8            sub [bx-0x18],si
00007434  FF2B              jmp far [bp+di]
00007436  CF                iret
00007437  680C2B            push word 0x2b0c
0000743A  D7                xlatb
0000743B  800C7A            or byte [si],0x7a
0000743E  DDB15C43          fnsave [bx+di+0x435c]
00007442  E007              loopne 0x744b
00007444  9B74E8            wait jz 0x742f
00007447  4F                dec di
00007448  B7B5              mov bh,0xb5
0000744A  B1E8              mov cl,0xe8
0000744C  79A9              jns 0x73f7
0000744E  B5A1              mov ch,0xa1
00007450  C2DE83            ret 0x83de
00007453  90                nop
00007454  10508D            adc [bx+si-0x73],dl
00007457  9BBFB6D6          wait mov di,0xd6b6
0000745B  8308ED            or word [bx+si],byte -0x13
0000745E  018309B9          add [bp+di-0x46f7],ax
00007462  002B              add [bp+di],ch
00007464  142F              adc al,0x2f
00007466  ED                in ax,dx
00007467  E10F              loope 0x7478
00007469  80C4C1            add ah,0xc1
0000746C  41                inc cx
0000746D  16                push ss
0000746E  0D8AB6            or ax,0xb68a
00007471  700C              jo 0x747f
00007473  BD1011            mov bp,0x1110
00007476  F5                cmc
00007477  06                push es
00007478  4F                dec di
00007479  2ED07DE3          sar byte [cs:di-0x1d],1
0000747D  C7                db 0xc7
0000747E  6D                insw
0000747F  7D28              jnl 0x74a9
00007481  4C                dec sp
00007482  CAD128            retf 0x28d1
00007485  B629              mov dh,0x29
00007487  BA92AA            mov dx,0xaa92
0000748A  99                cwd
0000748B  EAA8B9AD65        jmp 0x65ad:0xb9a8
00007490  E84783            call 0xf7da
00007493  FF5B6D            call far [bp+di+0x6d]
00007496  0F34              sysenter
00007498  C02F67            shr byte [bx],byte 0x67
0000749B  4B                dec bx
0000749C  7DE4              jnl 0x7482
0000749E  DBBAEFEF          fstp tword [bp+si-0x1011]
000074A2  E207              loop 0x74ab
000074A4  8C00              mov [bx+si],es
000074A6  34AA              xor al,0xaa
000074A8  16                push ss
000074A9  7F8A              jg 0x7435
000074AB  17                pop ss
000074AC  7E52              jng 0x7500
000074AE  9D                popf
000074AF  17                pop ss
000074B0  328AEFEA          xor cl,[bp+si-0x1511]
000074B4  123D              adc bh,[di]
000074B6  B0FF              mov al,0xff
000074B8  011C              add [si],bx
000074BA  7ED6              jng 0x7492
000074BC  0A02              or al,[bp+si]
000074BE  D43D              aam 0x3d
000074C0  2E2B8C7788        sub cx,[cs:si-0x7789]
000074C5  74EF              jz 0x74b6
000074C7  61                popa
000074C8  98                cbw
000074C9  A02CCA            mov al,[0xca2c]
000074CC  C2AD89            ret 0x89ad
000074CF  F5                cmc
000074D0  65EC              gs in al,dx
000074D2  45                inc bp
000074D3  6E                outsb
000074D4  4E                dec si
000074D5  60                pusha
000074D6  ED                in ax,dx
000074D7  AE                scasb
000074D8  C3                ret
000074D9  B0C2              mov al,0xc2
000074DB  1055D1            adc [di-0x2f],dl
000074DE  C70517AD          mov word [di],0xad17
000074E2  8EDB              mov ds,bx
000074E4  88F8              mov al,bh
000074E6  94                xchg ax,sp
000074E7  321B              xor bl,[bp+di]
000074E9  2126FE3A          and [0x3afe],sp
000074ED  45                inc bp
000074EE  017524            add [di+0x24],si
000074F1  8D94854B          lea dx,[si+0x4b85]
000074F5  771A              ja 0x7511
000074F7  39D3              cmp bx,dx
000074F9  0FE183F002        psraw mm0,[bp+di+0x2f0]
000074FE  F8                clc
000074FF  91                xchg ax,cx
00007500  746F              jz 0x7571
00007502  EF                out dx,ax
00007503  7081              jo 0x7486
00007505  A8DE              test al,0xde
00007507  BFA3A4            mov di,0xa4a3
0000750A  05A03B            add ax,0x3ba0
0000750D  FA                cli
0000750E  CA041B            retf 0x1b04
00007511  9AEA404835        call 0x3548:0x40ea
00007516  C50B              lds cx,[bp+di]
00007518  6F                outsw
00007519  6D                insw
0000751A  3208              xor cl,[bx+si]
0000751C  2C8A              sub al,0x8a
0000751E  41                inc cx
0000751F  54                push sp
00007520  7051              jo 0x7573
00007522  8823              mov [bp+di],ah
00007524  E0A7              loopne 0x74cd
00007526  06                push es
00007527  60                pusha
00007528  AA                stosb
00007529  EC                in al,dx
0000752A  C09DA611CA        rcr byte [di+0x11a6],byte 0xca
0000752F  5E                pop si
00007530  87E3              xchg bx,sp
00007532  58                pop ax
00007533  E3EA              jcxz 0x751f
00007535  C0950ECEA6        rcl byte [di-0x31f2],byte 0xa6
0000753A  D7                xlatb
0000753B  659A28240A58      gs call 0x580a:0x2428
00007541  4B                dec bx
00007542  06                push es
00007543  EE                out dx,al
00007544  FD                std
00007545  84B002CD          test [bx+si-0x32fe],dh
00007549  37                aaa
0000754A  D221              shl byte [bx+di],cl
0000754C  9E                sahf
0000754D  4A                dec dx
0000754E  27                daa
0000754F  E8C696            call 0xc18
00007552  02E3              add ah,bl
00007554  F7F3              div bx
00007556  0457              add al,0x57
00007558  FA                cli
00007559  636A58            arpl [bp+si+0x58],bp
0000755C  58                pop ax
0000755D  6B80549D82        imul ax,[bx+si-0x62ac],byte -0x7e
00007562  89B53E83          mov [di-0x7cc2],si
00007566  0B08              or cx,[bx+si]
00007568  37                aaa
00007569  50                push ax
0000756A  A86E              test al,0x6e
0000756C  2BDE              sub bx,si
0000756E  74F0              jz 0x7560
00007570  40                inc ax
00007571  05F9AF            add ax,0xaff9
00007574  06                push es
00007575  83580FD0          sbb word [bx+si+0xf],byte -0x30
00007579  2028              and [bx+si],ch
0000757B  6219              bound bx,[bx+di]
0000757D  AD                lodsw
0000757E  BEC52C            mov si,0x2cc5
00007581  682311            push word 0x1123
00007584  25BC41            and ax,0x41bc
00007587  0F                db 0x0f
00007588  91                xchg ax,cx
00007589  FE                db 0xfe
0000758A  96                xchg ax,si
0000758B  831C28            sbb word [si],byte +0x28
0000758E  BA0817            mov dx,0x1708
00007591  2096082F          and [bp+0x2f08],dl
00007595  97                xchg ax,di
00007596  6F                outsw
00007597  0804              or [si],al
00007599  6B2229            imul sp,[bp+si],byte +0x29
0000759C  5B                pop bx
0000759D  5F                pop di
0000759E  006F31            add [bx+0x31],ch
000075A1  66F0BFEAE9F903    lock mov edi,0x3f9e9ea
000075A8  B9A200            mov cx,0xa2
000075AB  72B1              jc 0x755e
000075AD  21D5              and bp,dx
000075AF  D9                db 0xd9
000075B0  DA3B              fidivr dword [bp+di]
000075B2  0483              add al,0x83
000075B4  3D6D02            cmp ax,0x26d
000075B7  11D9              adc cx,bx
000075B9  025C2D            add bl,[si+0x2d]
000075BC  EC                in al,dx
000075BD  9B00D7            wait add bh,dl
000075C0  1DFD98            sbb ax,0x98fd
000075C3  7E5B              jng 0x7620
000075C5  F63B              idiv byte [bp+di]
000075C7  D00A              ror byte [bp+si],1
000075C9  45                inc bp
000075CA  AD                lodsw
000075CB  1312              adc dx,[bp+si]
000075CD  C6                db 0xc6
000075CE  7413              jz 0x75e3
000075D0  88FB              mov bl,bh
000075D2  EA83C1050F        jmp 0xf05:0xc183
000075D7  9B5A              wait pop dx
000075D9  7681              jna 0x755c
000075DB  006F5B            add [bx+0x5b],ch
000075DE  05707E            add ax,0x7e70
000075E1  2A05              sub al,[di]
000075E3  05D605            add ax,0x5d6
000075E6  257534            and ax,0x3475
000075E9  11B1A530          adc [bx+di+0x30a5],si
000075ED  AE                scasb
000075EE  C5                db 0xc5
000075EF  E2F5              loop 0x75e6
000075F1  EE                out dx,al
000075F2  8CDA              mov dx,ds
000075F4  1E                push ds
000075F5  5D                pop bp
000075F6  27                daa
000075F7  EAC06A05BB        jmp 0xbb05:0x6ac0
000075FC  147F              adc al,0x7f
000075FE  B92184            mov cx,0x8421
00007601  DBEA              fucomi st2
00007603  91                xchg ax,cx
00007604  06                push es
00007605  96                xchg ax,si
00007606  7B03              jpo 0x760b
00007608  2F                das
00007609  757C              jnz 0x7687
0000760B  B603              mov dh,0x3
0000760D  5C                pop sp
0000760E  09C8              or ax,cx
00007610  07                pop es
00007611  8D6C6B            lea bp,[si+0x6b]
00007614  196167            sbb [bx+di+0x67],sp
00007617  46                inc si
00007618  96                xchg ax,si
00007619  5E                pop si
0000761A  10E4              adc ah,ah
0000761C  3CBB              cmp al,0xbb
0000761E  63801535          arpl [bx+si+0x3515],ax
00007622  B759              mov bh,0x59
00007624  80CC5D            or ah,0x5d
00007627  11952F78          adc [di+0x782f],dx
0000762B  BB2B66            mov bx,0x662b
0000762E  5D                pop bp
0000762F  27                daa
00007630  892F              mov [bx],bp
00007632  8D5C02            lea bx,[si+0x2]
00007635  55                push bp
00007636  2A9C02D6          sub bl,[si-0x29fe]
0000763A  E2A7              loop 0x75e3
0000763C  D6                salc
0000763D  BBBDD1            mov bx,0xd1bd
00007640  F30B20            rep or sp,[bx+si]
00007643  35685C            xor ax,0x5c68
00007646  47                inc di
00007647  26753A            es jnz 0x7684
0000764A  D1A1384B          shl word [bx+di+0x4b38],1
0000764E  003A              add [bp+si],bh
00007650  6E                outsb
00007651  3AF9              cmp bh,cl
00007653  BE0A68            mov si,0x680a
00007656  BC4102            mov sp,0x241
00007659  3BF9              cmp di,cx
0000765B  93                xchg ax,bx
0000765C  BB450C            mov bx,0xc45
0000765F  652583E0          gs and ax,0xe083
00007663  058EC7            add ax,0xc78e
00007666  E53A              in ax,0x3a
00007668  4B                dec bx
00007669  4C                dec sp
0000766A  C6                db 0xc6
0000766B  0AF8              or bh,al
0000766D  19F3              sbb bx,si
0000766F  BB048B            mov bx,0x8b04
00007672  3E1354BB          adc dx,[ds:si-0x45]
00007676  E488              in al,0x88
00007678  45                inc bp
00007679  24F0              and al,0xf0
0000767B  6E                outsb
0000767C  BB8F49            mov bx,0x498f
0000767F  37                aaa
00007680  56                push si
00007681  51                push cx
00007682  1BEF              sbb bp,di
00007684  7F7C              jg 0x7702
00007686  4B                dec bx
00007687  105A39            adc [bp+si+0x39],bl
0000768A  D09FDC18          rcr byte [bx+0x18dc],1
0000768E  1A8A043A          sbb cl,[bp+si+0x3a04]
00007692  F02ACD            lock sub cl,ch
00007695  0C55              or al,0x55
00007697  DF59F0            fistp word [bx+di-0x10]
0000769A  80E2E0            and dl,0xe0
0000769D  0901              or [bx+di],ax
0000769F  72D3              jc 0x7674
000076A1  95                xchg ax,bp
000076A2  A4                movsb
000076A3  D7                xlatb
000076A4  3F                aas
000076A5  F38A7BEB          rep mov bh,[bp+di-0x15]
000076A9  0903              or [bp+di],ax
000076AB  0E                push cs
000076AC  0A540B            or dl,[si+0xb]
000076AF  0A14              or dl,[si]
000076B1  82                db 0x82
000076B2  7F6A              jg 0x771e
000076B4  2D7582            sub ax,0x8275
000076B7  640BDC            fs or bx,sp
000076BA  42                inc dx
000076BB  C47EEA            les di,[bp-0x16]
000076BE  725A              jc 0x771a
000076C0  43                inc bx
000076C1  57                push di
000076C2  52                push dx
000076C3  59                pop cx
000076C4  C21368            ret 0x6813
000076C7  D0C3              rol bl,1
000076C9  A0A2A5            mov al,[0xa5a2]
000076CC  830B71            or word [bp+di],byte +0x71
000076CF  FF885C15          dec word [bx+si+0x155c]
000076D3  5B                pop bx
000076D4  40                inc ax
000076D5  EF                out dx,ax
000076D6  95                xchg ax,bp
000076D7  24D1              and al,0xd1
000076D9  803D0D            cmp byte [di],0xd
000076DC  68016C            push word 0x6c01
000076DF  81FC0D26          cmp sp,0x260d
000076E3  8D5D84            lea bx,[di-0x7c]
000076E6  FF546B            call [si+0x6b]
000076E9  D7                xlatb
000076EA  C444B0            les ax,[si-0x50]
000076ED  858D0A7F          test [di+0x7f0a],cx
000076F1  17                pop ss
000076F2  4F                dec di
000076F3  7357              jnc 0x774c
000076F5  6845EB            push word 0xeb45
000076F8  9A8EF96C8B        call 0x8b6c:0xf98e
000076FD  51                push cx
000076FE  DA4D3E            fimul dword [di+0x3e]
00007701  C105ED            rol word [di],byte 0xed
00007704  49                dec cx
00007705  EBED              jmp short 0x76f4
00007707  45                inc bp
00007708  B776              mov bh,0x76
0000770A  6208              bound cx,[bx+si]
0000770C  3D19B7            cmp ax,0xb719
0000770F  31755D            xor [di+0x5d],si
00007712  B076              mov al,0x76
00007714  51                push cx
00007715  16                push ss
00007716  A26E8E            mov [0x8e6e],al
00007719  D818              fcomp dword [bx+si]
0000771B  4B                dec bx
0000771C  64ED              fs in ax,dx
0000771E  7DFE              jnl 0x771e
00007720  2AD0              sub dl,al
00007722  91                xchg ax,cx
00007723  4B                dec bx
00007724  47                inc di
00007725  1F                pop ds
00007726  6D                insw
00007727  8B3B              mov di,[bp+di]
00007729  B3F0              mov bl,0xf0
0000772B  77F5              ja 0x7722
0000772D  EB24              jmp short 0x7753
0000772F  8C9C2FB0          mov [si-0x4fd1],ds
00007733  7E61              jng 0x7796
00007735  0CB1              or al,0xb1
00007737  1056D7            adc [bp-0x29],dl
0000773A  E39B              jcxz 0x76d7
0000773C  7E95              jng 0x76d3
0000773E  0F                db 0x0f
0000773F  CF                iret
00007740  FC                cld
00007741  040D              add al,0xd
00007743  95                xchg ax,bp
00007744  C7                db 0xc7
00007745  E201              loop 0x7748
00007747  B9086D            mov cx,0x6d08
0000774A  F7FC              idiv sp
0000774C  FD                std
0000774D  865AD5            xchg [bp+si-0x2b],bl
00007750  18ED              sbb ch,ch
00007752  2F                das
00007753  05EE41            add ax,0x41ee
00007756  FF8424DC          inc word [si-0x23dc]
0000775A  3BFF              cmp di,di
0000775C  75E0              jnz 0x773e
0000775E  17                pop ss
0000775F  32BB8B59          xor bh,[bp+di+0x598b]
00007763  6A19              push byte +0x19
00007765  2E55              cs push bp
00007767  07                pop es
00007768  0C6C              or al,0x6c
0000776A  1149BD            adc [bx+di-0x43],cx
0000776D  1A9939EF          sbb bl,[bx+di-0x10c7]
00007771  C8BE8ED0          enter 0x8ebe,0xd0
00007775  BAFEAD            mov dx,0xadfe
00007778  27                daa
00007779  EE                out dx,al
0000777A  E602              out 0x2,al
0000777C  7584              jnz 0x7702
0000777E  CB                retf
0000777F  4A                dec dx
00007780  CF                iret
00007781  FC                cld
00007782  FE                db 0xfe
00007783  F69CFE54          neg byte [si+0x54fe]
00007787  2D3C4E            sub ax,0x4e3c
0000778A  AB                stosw
0000778B  1D3C91            sbb ax,0x913c
0000778E  AA                stosb
0000778F  732E              jnc 0x77bf
00007791  95                xchg ax,bp
00007792  750C              jnz 0x77a0
00007794  01DB              add bx,bx
00007796  4A                dec dx
00007797  88493A            mov [bx+di+0x3a],cl
0000779A  C6                db 0xc6
0000779B  96                xchg ax,si
0000779C  FA                cli
0000779D  82                db 0x82
0000779E  4D                dec bp
0000779F  FF6835            jmp far [bx+si+0x35]
000077A2  9B45              wait inc bp
000077A4  B8CEDF            mov ax,0xdfce
000077A7  7DBF              jnl 0x7768
000077A9  8F                db 0x8f
000077AA  3F                aas
000077AB  FF6661            jmp [bp+0x61]
000077AE  97                xchg ax,di
000077AF  BA35FF            mov dx,0xff35
000077B2  6763E9            a32 arpl cx,bp
000077B5  12B78744          adc dh,[bx+0x4487]
000077B9  68F964            push word 0x64f9
000077BC  CC                int3
000077BD  4B                dec bx
000077BE  C1426820          rol word [bp+si+0x68],byte 0x20
000077C2  D13B              sar word [bp+di],1
000077C4  D6                salc
000077C5  8F                db 0x8f
000077C6  0E                push cs
000077C7  27                daa
000077C8  1E                push ds
000077C9  0DFFBC            or ax,0xbcff
000077CC  D9                db 0xd9
000077CD  0C8F              or al,0x8f
000077CF  359A55            xor ax,0x559a
000077D2  76A5              jna 0x7779
000077D4  7F04              jg 0x77da
000077D6  91                xchg ax,cx
000077D7  23D2              and dx,dx
000077D9  849D4620          test [di+0x2046],bl
000077DD  20E5              and ch,ah
000077DF  46                inc si
000077E0  B0A8              mov al,0xa8
000077E2  5A                pop dx
000077E3  AA                stosb
000077E4  92                xchg ax,dx
000077E5  59                pop cx
000077E6  318CA23C          xor [si+0x3ca2],cx
000077EA  85AA0BF5          test [bp+si-0xaf5],bp
000077EE  06                push es
000077EF  37                aaa
000077F0  C10F8D            ror word [bx],byte 0x8d
000077F3  C07B002F          sar byte [bp+di+0x0],byte 0x2f
000077F7  19497D            sbb [bx+di+0x7d],cx
000077FA  8945FC            mov [di-0x4],ax
000077FD  5E                pop si
000077FE  207466            and [si+0x66],dh
00007801  51                push cx
00007802  33D3              xor dx,bx
00007804  BD825F            mov bp,0x5f82
00007807  7458              jz 0x7861
00007809  AD                lodsw
0000780A  7B1D              jpo 0x7829
0000780C  A5                movsw
0000780D  52                push dx
0000780E  D0                db 0xd0
0000780F  7794              ja 0x77a5
00007811  754C              jnz 0x785f
00007813  88A4C85B          mov [si+0x5bc8],ah
00007817  37                aaa
00007818  2356D7            and dx,[bp-0x29]
0000781B  7434              jz 0x7851
0000781D  09F1              or cx,si
0000781F  57                push di
00007820  88ADD5D3          mov [di-0x2c2b],ch
00007824  0117              add [bx],dx
00007826  C3                ret
00007827  7507              jnz 0x7830
00007829  46                inc si
0000782A  46                inc si
0000782B  A8AA              test al,0xaa
0000782D  DA                db 0xda
0000782E  F27CE8            bnd jl 0x7819
00007831  2524D8            and ax,0xd824
00007834  47                inc di
00007835  C83EEA1E          enter 0xea3e,0x1e
00007839  97                xchg ax,di
0000783A  E98C06            jmp 0x7ec9
0000783D  28F7              sub bh,dh
0000783F  E45F              in al,0x5f
00007841  A5                movsw
00007842  ED                in ax,dx
00007843  9F                lahf
00007844  54                push sp
00007845  EB4E              jmp short 0x7895
00007847  FD                std
00007848  41                inc cx
00007849  83C358            add bx,byte +0x58
0000784C  E97AD4            jmp 0x4cc9
0000784F  D20A              ror byte [bp+si],cl
00007851  42                inc dx
00007852  44                inc sp
00007853  B92F00            mov cx,0x2f
00007856  67AE              a32 scasb
00007858  1178B5            adc [bx+si-0x4b],di
0000785B  005490            add [si-0x70],dl
0000785E  3449              xor al,0x49
00007860  AA                stosb
00007861  3DA45B            cmp ax,0x5ba4
00007864  03E8              add bp,ax
00007866  2129              and [bx+di],bp
00007868  60                pusha
00007869  1F                pop ds
0000786A  7865              js 0x78d1
0000786C  06                push es
0000786D  57                push di
0000786E  C428              les bp,[bx+si]
00007870  222D              and ch,[di]
00007872  4B                dec bx
00007873  B96029            mov cx,0x2960
00007876  5F                pop di
00007877  3F                aas
00007878  F0CA003A          lock retf 0x3a00
0000787C  F006              lock push es
0000787E  57                push di
0000787F  D300              rol word [bx+si],cl
00007881  41                inc cx
00007882  C7044C33          mov word [si],0x334c
00007886  803B23            cmp byte [bp+di],0x23
00007889  50                push ax
0000788A  51                push cx
0000788B  6D                insw
0000788C  0406              add al,0x6
0000788E  41                inc cx
0000788F  DC17              fcom qword [bx]
00007891  5B                pop bx
00007892  805D069C          sbb byte [di+0x6],0x9c
00007896  60                pusha
00007897  215F18            and [bx+0x18],bx
0000789A  663BC5            cmp eax,ebp
0000789D  4B                dec bx
0000789E  53                push bx
0000789F  17                pop ss
000078A0  1B6002            sbb sp,[bx+si+0x2]
000078A3  FD                std
000078A4  0B51BA            or dx,[bx+di-0x46]
000078A7  E8CCFF            call 0x7876
000078AA  EF                out dx,ax
000078AB  DE                db 0xde
000078AC  D081F9FF          rol byte [bx+di-0x7],1
000078B0  D014              rcl byte [si],1
000078B2  7413              jz 0x78c7
000078B4  2CF6              sub al,0xf6
000078B6  1A81FA1E          sbb al,[bx+di+0x1efa]
000078BA  BA0AF4            mov dx,0xf40a
000078BD  29F3              sub bx,si
000078BF  5C                pop sp
000078C0  2B00              sub ax,[bx+si]
000078C2  3A9FF1AC          cmp bl,[bx-0x530f]
000078C6  7370              jnc 0x7938
000078C8  A3FF3A            mov [0x3aff],ax
000078CB  8CAB589C          mov [bp+di-0x63a8],gs
000078CF  56                push si
000078D0  AA                stosb
000078D1  FE                db 0xfe
000078D2  59                pop cx
000078D3  91                xchg ax,cx
000078D4  FF5D00            call far [di+0x0]
000078D7  1105              adc [di],ax
000078D9  11C2              adc dx,ax
000078DB  ED                in ax,dx
000078DC  2F                das
000078DD  3613C8            ss adc cx,ax
000078E0  8509              test [bx+di],cx
000078E2  640CED            fs or al,0xed
000078E5  57                push di
000078E6  0414              add al,0x14
000078E8  96                xchg ax,si
000078E9  9A3B51AD73        call 0x73ad:0x513b
000078EE  056A0D            add ax,0xd6a
000078F1  D6                salc
000078F2  6313              arpl [bp+di],dx
000078F4  DB0F              fisttp dword [bx]
000078F6  027713            add dh,[bx+0x13]
000078F9  89688E            mov [bx+si-0x72],bp
000078FC  C6832060E5        mov byte [bp+di+0x6020],0xe5
00007901  16                push ss
00007902  58                pop ax
00007903  E1A8              loope 0x78ad
00007905  E0F1              loopne 0x78f8
00007907  62                db 0x62
00007908  D3A1EB0E          shl word [bx+di+0xeeb],cl
0000790C  1F                pop ds
0000790D  A3EEE1            mov [0xe1ee],ax
00007910  0E                push cs
00007911  227010            and dh,[bx+si+0x10]
00007914  48                dec ax
00007915  5D                pop bp
00007916  68101B            push word 0x1b10
00007919  FE0F              dec byte [bx]
0000791B  6A3F              push byte +0x3f
0000791D  A91816            test ax,0x1618
00007920  13F1              adc si,cx
00007922  05EBEA            add ax,0xeaeb
00007925  45                inc bp
00007926  EF                out dx,ax
00007927  5A                pop dx
00007928  89F5              mov bp,si
0000792A  3B4E08            cmp cx,[bp+0x8]
0000792D  7255              jc 0x7984
0000792F  8D14              lea dx,[si]
00007931  04FA              add al,0xfa
00007933  EA217B8CAC        jmp 0xac8c:0x7b21
00007938  5D                pop bp
00007939  96                xchg ax,si
0000793A  06                push es
0000793B  3A8A74A2          cmp cl,[bp+si-0x5d8c]
0000793F  4A                dec dx
00007940  0C23              or al,0x23
00007942  FD                std
00007943  E93164            jmp 0xdd77
00007946  6A0C              push byte +0xc
00007948  0941EA            or [bx+di-0x16],ax
0000794B  61                popa
0000794C  A9C57D            test ax,0x7dc5
0000794F  3D7A00            cmp ax,0x7a
00007952  77BF              ja 0x7913
00007954  91                xchg ax,cx
00007955  802F20            sub byte [bx],0x20
00007958  EB14              jmp short 0x796e
0000795A  A13D52            mov ax,[0x523d]
0000795D  7576              jnz 0x79d5
0000795F  0F132A            movlps qword [bp+si],xmm5
00007962  25D741            and ax,0x41d7
00007965  CE                into
00007966  E224              loop 0x798c
00007968  1C6D              sbb al,0x6d
0000796A  8D22              lea sp,[bp+si]
0000796C  F6                db 0xf6
0000796D  0E                push cs
0000796E  75CF              jnz 0x793f
00007970  5D                pop bp
00007971  95                xchg ax,bp
00007972  EAEB4F244C        jmp 0x4c24:0x4feb
00007977  D44B              aam 0x4b
00007979  48                dec ax
0000797A  0E                push cs
0000797B  54                push sp
0000797C  4C                dec sp
0000797D  54                push sp
0000797E  C3                ret
0000797F  A2A331            mov [0x31a3],al
00007982  8B6201            mov sp,[bp+si+0x1]
00007985  2D58B7            sub ax,0xb758
00007988  830575            add word [di],byte +0x75
0000798B  2063AD            and [bp+di-0x53],ah
0000798E  01D5              add bp,dx
00007990  0503CD            add ax,0xcd03
00007993  15C3A0            adc ax,0xa0c3
00007996  F9                stc
00007997  2C85              sub al,0x85
00007999  E160              loope 0x79fb
0000799B  3E7A10            ds jpe 0x79ae
0000799E  6A18              push byte +0x18
000079A0  29E1              sub cx,sp
000079A2  60                pusha
000079A3  EB66              jmp short 0x7a0b
000079A5  24A2              and al,0xa2
000079A7  EF                out dx,ax
000079A8  EBE6              jmp short 0x7990
000079AA  96                xchg ax,si
000079AB  0E                push cs
000079AC  A3DF99            mov [0x99df],ax
000079AF  B88615            mov ax,0x1586
000079B2  E9AD1D            jmp 0x9762
000079B5  53                push bx
000079B6  0119              add [bx+di],bx
000079B8  3EA34A42          mov [ds:0x424a],ax
000079BC  36CC              ss int3
000079BE  658B4145          mov ax,[gs:bx+di+0x45]
000079C2  41                inc cx
000079C3  BB64E8            mov bx,0xe864
000079C6  E163              loope 0x7a2b
000079C8  43                inc bx
000079C9  3A7A8C            cmp bh,[bp+si-0x74]
000079CC  2E98              cs cbw
000079CE  1186E30D          adc [bp+0xde3],ax
000079D2  70A3              jo 0x7977
000079D4  6E                outsb
000079D5  0D8916            or ax,0x1689
000079D8  70B4              jo 0x798e
000079DA  BDDA03            mov bp,0x3da
000079DD  6761              a32 popa
000079DF  35FE2B            xor ax,0x2bfe
000079E2  C56647            lds sp,[bp+0x47]
000079E5  1C8A              sbb al,0x8a
000079E7  30E7              xor bh,ah
000079E9  AC                lodsb
000079EA  61                popa
000079EB  1D2D7E            sbb ax,0x7e2d
000079EE  BF1F06            mov di,0x61f
000079F1  FF5DEB            call far [di-0x15]
000079F4  99                cwd
000079F5  257316            and ax,0x1673
000079F8  7518              jnz 0x7a12
000079FA  EBDE              jmp short 0x79da
000079FC  119B32B2          adc [bp+di-0x4dce],bx
00007A00  90                nop
00007A01  4C                dec sp
00007A02  D6                salc
00007A03  B4BE              mov ah,0xbe
00007A05  343A              xor al,0x3a
00007A07  0AF6              or dh,dh
00007A09  AD                lodsw
00007A0A  AE                scasb
00007A0B  D917              fst dword [bx]
00007A0D  2CD5              sub al,0xd5
00007A0F  0CC8              or al,0xc8
00007A11  F4                hlt
00007A12  68904F            push word 0x4f90
00007A15  08540C            or [si+0xc],dl
00007A18  7FD9              jg 0x79f3
00007A1A  0E                push cs
00007A1B  FE                db 0xfe
00007A1C  5D                pop bp
00007A1D  C0E9F7            shr cl,byte 0xf7
00007A20  2F                das
00007A21  BF3C80            mov di,0x803c
00007A24  7284              jc 0x79aa
00007A26  32D4              xor dl,ah
00007A28  78C4              js 0x79ee
00007A2A  57                push di
00007A2B  25970D            and ax,0xd97
00007A2E  43                inc bx
00007A2F  43                inc bx
00007A30  145B              adc al,0x5b
00007A32  B226              mov dl,0x26
00007A34  44                inc sp
00007A35  D05C1D            rcr byte [si+0x1d],1
00007A38  DE                db 0xde
00007A39  D1                db 0xd1
00007A3A  30ED              xor ch,ch
00007A3C  39CA              cmp dx,cx
00007A3E  1587DD            adc ax,0xdd87
00007A41  08C1              or cl,al
00007A43  E908B0            jmp 0x2a4e
00007A46  097701            or [bx+0x1],si
00007A49  26AE              es scasb
00007A4B  DD23              frstor [bp+di]
00007A4D  EBDD              jmp short 0x7a2c
00007A4F  0562A8            add ax,0xa862
00007A52  AA                stosb
00007A53  C9                leave
00007A54  C9                leave
00007A55  10AA19C6          adc [bp+si-0x39e7],ch
00007A59  78AE              js 0x7a09
00007A5B  2B61AB            sub sp,[bx+di-0x55]
00007A5E  144E              adc al,0x4e
00007A60  44                inc sp
00007A61  6F                outsw
00007A62  F1                int1
00007A63  018CD243          add [si+0x43d2],cx
00007A67  2205              and al,[di]
00007A69  2100              and [bx+si],ax
00007A6B  1F                pop ds
00007A6C  F8                clc
00007A6D  5F                pop di
00007A6E  0038              add [bx+si],bh
00007A70  73D8              jnc 0x7a4a
00007A72  2F                das
00007A73  0A89D91B          or cl,[bx+di+0x1bd9]
00007A77  0D0AB1            or ax,0xb10a
00007A7A  0C75              or al,0x75
00007A7C  086BB6            or [bp+di-0x4a],ch
00007A7F  41                inc cx
00007A80  C9                leave
00007A81  A8C5              test al,0xc5
00007A83  95                xchg ax,bp
00007A84  EF                out dx,ax
00007A85  85BDAB04          test [di+0x4ab],di
00007A89  78A0              js 0x7a2b
00007A8B  C10180            rol word [bx+di],byte 0x80
00007A8E  E09D              loopne 0x7a2d
00007A90  B88176            mov ax,0x7681
00007A93  AB                stosw
00007A94  50                push ax
00007A95  6A8A              push byte -0x76
00007A97  3972D2            cmp [bp+si-0x2e],si
00007A9A  B723              mov bh,0x23
00007A9C  EE                out dx,al
00007A9D  56                push si
00007A9E  FD                std
00007A9F  13B65156          adc si,[bp+0x5651]
00007AA3  A1163E            mov ax,[0x3e16]
00007AA6  8B6045            mov sp,[bx+si+0x45]
00007AA9  2A21              sub ah,[bx+di]
00007AAB  DB                db 0xdb
00007AAC  24A0              and al,0xa0
00007AAE  FB                sti
00007AAF  9F                lahf
00007AB0  6D                insw
00007AB1  06                push es
00007AB2  54                push sp
00007AB3  5D                pop bp
00007AB4  BEE25D            mov si,0x5de2
00007AB7  58                pop ax
00007AB8  06                push es
00007AB9  EA5D0FA1AF        jmp 0xafa1:0xf5d
00007ABE  CE                into
00007ABF  43                inc bx
00007AC0  40                inc ax
00007AC1  6F                outsw
00007AC2  46                inc si
00007AC3  794D              jns 0x7b12
00007AC5  C1E8CB            shr ax,byte 0xcb
00007AC8  7BCD              jpo 0x7a97
00007ACA  630E0257          arpl [0x5702],cx
00007ACE  43                inc bx
00007ACF  3164EE            xor [si-0x12],sp
00007AD2  AB                stosw
00007AD3  FE                db 0xfe
00007AD4  5B                pop bx
00007AD5  26B051            es mov al,0x51
00007AD8  62                db 0x62
00007AD9  E5A2              in ax,0xa2
00007ADB  DCF3              fdivr to st3
00007ADD  FC                cld
00007ADE  61                popa
00007ADF  08B31A7C          or [bp+di+0x7c1a],dh
00007AE3  56                push si
00007AE4  FE                db 0xfe
00007AE5  F5                cmc
00007AE6  C3                ret
00007AE7  FB                sti
00007AE8  AF                scasw
00007AE9  C9                leave
00007AEA  59                pop cx
00007AEB  55                push bp
00007AEC  0F                db 0x0f
00007AED  F07823            lock js 0x7b13
00007AF0  AD                lodsw
00007AF1  38CC              cmp ah,cl
00007AF3  4A                dec dx
00007AF4  5E                pop si
00007AF5  F33C90            rep cmp al,0x90
00007AF8  4F                dec di
00007AF9  ED                in ax,dx
00007AFA  0C00              or al,0x0
00007AFC  A29A1C            mov [0x1c9a],al
00007AFF  EE                out dx,al
00007B00  00FA              add dl,bh
00007B02  A6                cmpsb
00007B03  DF                db 0xdf
00007B04  FD                std
00007B05  28419A            sub [bx+di-0x66],al
00007B08  AA                stosb
00007B09  D50D              aad 0xd
00007B0B  37                aaa
00007B0C  5D                pop bp
00007B0D  03A48CFC          add sp,[si-0x374]
00007B11  6F                outsw
00007B12  98                cbw
00007B13  204FB1            and [bx-0x4f],cl
00007B16  087486            or [si-0x7a],dh
00007B19  0FB00C            cmpxchg [si],cl
00007B1C  A8D8              test al,0xd8
00007B1E  FA                cli
00007B1F  F9                stc
00007B20  88DE              mov dh,bl
00007B22  2AE9              sub ch,cl
00007B24  AC                lodsb
00007B25  FD                std
00007B26  98                cbw
00007B27  4D                dec bp
00007B28  37                aaa
00007B29  DE4F04            fimul word [bx+0x4]
00007B2C  818DFF8F5A3E      or word [di-0x7001],0x3e5a
00007B32  82                db 0x82
00007B33  304D53            xor [di+0x53],cl
00007B36  B2A0              mov dl,0xa0
00007B38  9A820FCB10        call 0x10cb:0xf82
00007B3D  52                push dx
00007B3E  B782              mov bh,0x82
00007B40  26E8FA3F          es call 0xbb3e
00007B44  FC                cld
00007B45  E978FD            jmp 0x78c0
00007B48  BA2E18            mov dx,0x182e
00007B4B  AA                stosb
00007B4C  1E                push ds
00007B4D  F3B8DC33          rep mov ax,0x33dc
00007B51  E8682A            call 0xa5bc
00007B54  18D7              sbb bh,dl
00007B56  FB                sti
00007B57  7408              jz 0x7b61
00007B59  C701E830          mov word [bx+di],0x30e8
00007B5D  83FC20            cmp sp,byte +0x20
00007B60  0F8FFDE8          jg near 0x6461
00007B64  E882FD            call 0x78e9
00007B67  83670FA1          and word [bx+0xf],byte -0x5f
00007B6B  92                xchg ax,dx
00007B6C  1B860748          sbb ax,[bp+0x4807]
00007B70  E26A              loop 0x7bdc
00007B72  B88072            mov ax,0x7280
00007B75  9AAE23ED06        call 0x6ed:0x23ae
00007B7A  3B161956          cmp dx,[0x5619]
00007B7E  32B94CB7          xor bh,[bx+di-0x48b4]
00007B82  3F                aas
00007B83  D14806            ror word [bx+si+0x6],1
00007B86  02DA              add bl,dl
00007B88  93                xchg ax,bx
00007B89  FB                sti
00007B8A  FE                db 0xfe
00007B8B  E0CF              loopne 0x7b5c
00007B8D  98                cbw
00007B8E  45                inc bp
00007B8F  E97A25            jmp 0xa10c
00007B92  AD                lodsw
00007B93  27                daa
00007B94  2D0512            sub ax,0x1205
00007B97  49                dec cx
00007B98  5D                pop bp
00007B99  0A1D              or bl,[di]
00007B9B  F006              lock push es
00007B9D  1DF402            sbb ax,0x2f4
00007BA0  EC                in al,dx
00007BA1  E8C1FB            call 0x7765
00007BA4  6E                outsb
00007BA5  38C0              cmp al,al
00007BA7  09AD51BF          or [di-0x40af],bp
00007BAB  65F9              gs stc
00007BAD  0472              add al,0x72
00007BAF  2476              and al,0x76
00007BB1  B641              mov dh,0x41
00007BB3  06                push es
00007BB4  23A061C5          and sp,[bx+si-0x3a9f]
00007BB8  AD                lodsw
00007BB9  CD08              int 0x8
00007BBB  ED                in ax,dx
00007BBC  FE                db 0xfe
00007BBD  745B              jz 0x7c1a
00007BBF  04B6              add al,0xb6
00007BC1  A21E8E            mov [0x8e1e],al
00007BC4  85AEBA9E          test [bp-0x6146],bp
00007BC8  0E                push cs
00007BC9  22D9              and bl,cl
00007BCB  097166            or [bx+di+0x66],si
00007BCE  94                xchg ax,sp
00007BCF  82                db 0x82
00007BD0  01852AA8          add [di-0x57d6],ax
00007BD4  59                pop cx
00007BD5  AE                scasb
00007BD6  A6                cmpsb
00007BD7  F5                cmc
00007BD8  4F                dec di
00007BD9  EB25              jmp short 0x7c00
00007BDB  84757D            test [di+0x7d],dh
00007BDE  8002FD            add byte [bp+si],0xfd
00007BE1  B550              mov ch,0x50
00007BE3  6BBA995AE1        imul di,[bp+si+0x5a99],byte -0x1f
00007BE8  3655              ss push bp
00007BEA  220B              and cl,[bp+di]
00007BEC  3C5D              cmp al,0x5d
00007BEE  655F              gs pop di
00007BF0  B610              mov dh,0x10
00007BF2  D6                salc
00007BF3  B9EFE4            mov cx,0xe4ef
00007BF6  38FC              cmp ah,bh
00007BF8  EB64              jmp short 0x7c5e
00007BFA  8E65D7            mov fs,[di-0x29]
00007BFD  6715778B          adc ax,0x8b77
00007C01  100B              adc [bp+di],cl
00007C03  41                inc cx
00007C04  7678              jna 0x7c7e
00007C06  EBE7              jmp short 0x7bef
00007C08  22B55480          and dh,[di-0x7fac]
00007C0C  12A02E58          adc ah,[bx+si+0x582e]
00007C10  F6EB              imul bl
00007C12  D3E8              shr ax,cl
00007C14  8C2C              mov [si],gs
00007C16  C6                db 0xc6
00007C17  37                aaa
00007C18  89B60432          mov [bp+0x3204],si
00007C1C  E81A04            call 0x8039
00007C1F  82                db 0x82
00007C20  5D                pop bp
00007C21  7DEB              jnl 0x7c0e
00007C23  29963AFD          sub [bp-0x2c6],dx
00007C27  50                push ax
00007C28  E880B6            call 0x32ab
00007C2B  1B991243          sbb bx,[bx+di+0x4312]
00007C2F  8D2D              lea bp,[di]
00007C31  8638              xchg [bx+si],bh
00007C33  E128              loope 0x7c5d
00007C35  9C                pushf
00007C36  E132              loope 0x7c6a
00007C38  F8                clc
00007C39  15F16A            adc ax,0x6af1
00007C3C  0F05              syscall
00007C3E  0AE1              or ah,cl
00007C40  8F                db 0x8f
00007C41  76A1              jna 0x7be4
00007C43  E94256            jmp 0xd288
00007C46  DA0E04F5          fimul dword [0xf504]
00007C4A  101648F5          adc [0xf548],dl
00007C4E  0FE87C2F          psubsb mm7,[si+0x2f]
00007C52  690604030B1C      imul ax,[0x304],word 0x1c0b
00007C58  50                push ax
00007C59  0C85              or al,0x85
00007C5B  37                aaa
00007C5C  43                inc bx
00007C5D  297A30            sub [bp+si+0x30],di
00007C60  02780C            add bh,[bx+si+0xc]
00007C63  ED                in ax,dx
00007C64  D022              shl byte [bp+si],1
00007C66  3C02              cmp al,0x2
00007C68  3D7A0D            cmp ax,0xd7a
00007C6B  A86F              test al,0x6f
00007C6D  12F2              adc dh,dl
00007C6F  FF88D8C0          dec word [bx+si-0x3f28]
00007C73  CD29              int 0x29
00007C75  1593DE            adc ax,0xde93
00007C78  52                push dx
00007C79  EA8EE9E8A1        jmp 0xa1e8:0xe98e
00007C7E  9C                pushf
00007C7F  BB0C10            mov bx,0x100c
00007C82  7E1F              jng 0x7ca3
00007C84  650AA8D258        or ch,[gs:bx+si+0x58d2]
00007C89  D93B              fnstcw [bp+di]
00007C8B  50                push ax
00007C8C  DC6DC0            fsubr qword [di-0x40]
00007C8F  8842C1            mov [bp+si-0x3f],al
00007C92  7E8C              jng 0x7c20
00007C94  E8E886            call 0x37f
00007C97  B65B              mov dh,0x5b
00007C99  3ADA              cmp bl,dl
00007C9B  19B87D44          sbb [bx+si+0x447d],di
00007C9F  01F0              add ax,si
00007CA1  42                inc dx
00007CA2  D7                xlatb
00007CA3  7672              jna 0x7d17
00007CA5  13CB              adc cx,bx
00007CA7  7CA4              jl 0x7c4d
00007CA9  5B                pop bx
00007CAA  56                push si
00007CAB  F316              rep push ss
00007CAD  1AF1              sbb dh,cl
00007CAF  0C7D              or al,0x7d
00007CB1  252C36            and ax,0x362c
00007CB4  10BB7D1E          adc [bp+di+0x1e7d],bh
00007CB8  52                push dx
00007CB9  6B07D1            imul ax,[bx],byte -0x2f
00007CBC  5B                pop bx
00007CBD  24DF              and al,0xdf
00007CBF  0311              add dx,[bx+di]
00007CC1  40                inc ax
00007CC2  0559FC            add ax,0xfc59
00007CC5  DB4928            fisttp dword [bx+di+0x28]
00007CC8  202E7BFF          and [0xff7b],ch
00007CCC  96                xchg ax,si
00007CCD  B6D6              mov dh,0xd6
00007CCF  CE                into
00007CD0  2B24              sub sp,[si]
00007CD2  4E                dec si
00007CD3  1D4940            sbb ax,0x4049
00007CD6  1BE9              sbb bp,cx
00007CD8  7350              jnc 0x7d2a
00007CDA  4A                dec dx
00007CDB  4A                dec dx
00007CDC  8B8A5F36          mov cx,[bp+si+0x365f]
00007CE0  E8BA50            call 0xcd9d
00007CE3  2AD7              sub dl,bh
00007CE5  F1                int1
00007CE6  8A6F31            mov ch,[bx+0x31]
00007CE9  83C610            add si,byte +0x10
00007CEC  E0E9              loopne 0x7cd7
00007CEE  71FF              jno 0x7cef
00007CF0  03DD              add bx,bp
00007CF2  2406              and al,0x6
00007CF4  BBC808            mov bx,0x8c8
00007CF7  AA                stosb
00007CF8  5F                pop di
00007CF9  3039              xor [bx+di],bh
00007CFB  CE                into
00007CFC  7D1C              jnl 0x7d1a
00007CFE  4A                dec dx
00007CFF  0300              add ax,[bx+si]
00007D01  99                cwd
00007D02  51                push cx
00007D03  40                inc ax
00007D04  6F                outsw
00007D05  D58A              aad 0x8a
00007D07  85AAF615          test [bp+si+0x15f6],bp
00007D0B  8842F8            mov [bp+si-0x8],al
00007D0E  0F1FC3            nop bx
00007D11  46                inc si
00007D12  EBA2              jmp short 0x7cb6
00007D14  E0A5              loopne 0x7cbb
00007D16  39D4              cmp sp,dx
00007D18  0A4EAD            or cl,[bp-0x53]
00007D1B  3C14              cmp al,0x14
00007D1D  46                inc si
00007D1E  E2F4              loop 0x7d14
00007D20  FE                db 0xfe
00007D21  EBF2              jmp short 0x7d15
00007D23  1192778B          adc [bp+si-0x7489],dx
00007D27  9C                pushf
00007D28  7EF5              jng 0x7d1f
00007D2A  98                cbw
00007D2B  43                inc bx
00007D2C  E8E9DF            call 0x5d18
00007D2F  14F3              adc al,0xf3
00007D31  B400              mov ah,0x0
00007D33  CDFE              int 0xfe
00007D35  1A01              sbb al,[bx+di]
00007D37  06                push es
00007D38  8A11              mov dl,[bx+di]
00007D3A  831682B714        adc word [0xb782],byte +0x14
00007D3F  91                xchg ax,cx
00007D40  92                xchg ax,dx
00007D41  123B              adc bh,[bp+di]
00007D43  EE                out dx,al
00007D44  5A                pop dx
00007D45  50                push ax
00007D46  12F7              adc dh,bh
00007D48  1319              adc bx,[bx+di]
00007D4A  C0400AF6          rol byte [bx+si+0xa],byte 0xf6
00007D4E  56                push si
00007D4F  B416              mov ah,0x16
00007D51  65B70D            gs mov bh,0xd
00007D54  5E                pop si
00007D55  18E1              sbb cl,ah
00007D57  C0                db 0xc0
00007D58  7307              jnc 0x7d61
00007D5A  9B60              wait pusha
00007D5C  06                push es
00007D5D  AD                lodsw
00007D5E  5F                pop di
00007D5F  F00198C3B4        lock add [bx+si-0x4b3d],bx
00007D64  6C                insb
00007D65  280A              sub [bp+si],cl
00007D67  55                push bp
00007D68  4D                dec bp
00007D69  2CB4              sub al,0xb4
00007D6B  CA04EB            retf 0xeb04
00007D6E  184051            sbb [bx+si+0x51],al
00007D71  6BAA177F80        imul bp,[bp+si+0x7f17],byte -0x80
00007D76  FD                std
00007D77  03771B            add si,[bx+0x1b]
00007D7A  86ED              xchg ch,ch
00007D7C  E9D0C9            jmp 0x474f
00007D7F  016D73            add [di+0x73],bp
00007D82  0A2D              or ch,[di]
00007D84  AA                stosb
00007D85  0850BF            or [bx+si-0x41],dl
00007D88  06                push es
00007D89  8A5610            mov dl,[bp+0x10]
00007D8C  8A76B5            mov dh,[bp-0x4b]
00007D8F  0E                push cs
00007D90  3F                aas
00007D91  BB3E20            mov bx,0x203e
00007D94  E055              loopne 0x7deb
00007D96  40                inc ax
00007D97  44                inc sp
00007D98  CE                into
00007D99  8F                db 0x8f
00007D9A  2D12F8            sub ax,0xf812
00007D9D  B516              mov ch,0x16
00007D9F  40                inc ax
00007DA0  B045              mov al,0x45
00007DA2  0814              or [si],dl
00007DA4  6B3359            imul si,[bp+di],byte +0x59
00007DA7  BB1F5D            mov bx,0x5d1f
00007DAA  881A              mov [bp+si],bl
00007DAC  81C2EC5F          add dx,0x5fec
00007DB0  7ECD              jng 0x7d7f
00007DB2  16                push ss
00007DB3  C3                ret
00007DB4  5B                pop bx
00007DB5  6F                outsw
00007DB6  7353              jnc 0x7e0b
00007DB8  B417              mov ah,0x17
00007DBA  6B1613E0C3        imul dx,[0xe013],byte -0x3d
00007DBF  22EE              and ch,dh
00007DC1  69505749CF        imul dx,[bx+si+0x57],word 0xcf49
00007DC6  53                push bx
00007DC7  08D9              or cl,bl
00007DC9  DB                db 0xdb
00007DCA  B418              mov ah,0x18
00007DCC  17                pop ss
00007DCD  7281              jc 0x7d50
00007DCF  113C              adc [si],di
00007DD1  92                xchg ax,dx
00007DD2  B0C0              mov al,0xc0
00007DD4  FA                cli
00007DD5  50                push ax
00007DD6  A033DA            mov al,[0xda33]
00007DD9  672694            es xchg ax,sp
00007DDC  E96F8F            jmp 0xd4e
00007DDF  FB                sti
00007DE0  5F                pop di
00007DE1  EBB6              jmp short 0x7d99
00007DE3  D2                db 0xd2
00007DE4  3459              xor al,0x59
00007DE6  DB                db 0xdb
00007DE7  B401              mov ah,0x1
00007DE9  C741FFB88A        mov word [bx+di-0x1],0x8ab8
00007DEE  6E                outsb
00007DEF  088A4E6B          or [bp+si+0x6b4e],cl
00007DF3  CF                iret
00007DF4  5B                pop bx
00007DF5  76B2              jna 0x7da9
00007DF7  009BB412          add [bp+di+0x12b4],bl
00007DFB  1CA3              sbb al,0xa3
00007DFD  0227              add ah,[bx]
00007DFF  FB                sti
00007E00  6BB30B44EC        imul si,[bp+di+0x440b],byte -0x14
00007E05  52                push dx
00007E06  0094012C          add [si+0x2c01],dl
00007E0A  0832              or [bp+si],dh
00007E0C  83B8C00710        cmp word [bx+si+0x7c0],byte +0x10
00007E11  45                inc bp
00007E12  DF8C8023          fisttp word [si+0x2380]
00007E16  CD12              int 0x12
00007E18  B1FF              mov cl,0xff
00007E1A  06                push es
00007E1B  D3E0              shl ax,cl
00007E1D  BAEF5E            mov dx,0x5eef
00007E20  B104              mov cl,0x4
00007E22  FFD3              call bx
00007E24  EA29D08EC0        jmp 0xc08e:0xd029
00007E29  BA50B6            mov dx,0xb650
00007E2C  3B08              cmp cx,[bx+si]
00007E2E  015FD0            add [bx-0x30],bx
00007E31  FB                sti
00007E32  8CC8              mov ax,cs
00007E34  EC                in al,dx
00007E35  BA909E            mov dx,0x9e90
00007E38  0B7FD8            or di,[bx-0x28]
00007E3B  BEDE5E            mov si,0x5ede
00007E3E  8D4C12            lea cx,[si+0x12]
00007E41  68FEF7            push word 0xf7fe
00007E44  D1E9              shr cx,1
00007E46  FD                std
00007E47  F3A5              rep movsw
00007E49  E525              in ax,0x25
00007E4B  B7C3              mov bh,0xc3
00007E4D  C02BF6            shr byte [bp+di],byte 0xf6
00007E50  BE8E9E            mov si,0x9e8e
00007E53  16                push ss
00007E54  0B15              or dx,[di]
00007E56  60                pusha
00007E57  FC                cld
00007E58  B742              mov bh,0x42
00007E5A  9E                sahf
00007E5B  50                push ax
00007E5C  80CBA1            or bl,0xa1
00007E5F  087603            or [bp+0x3],dh
00007E62  A093BA            mov al,[0xba93]
00007E65  6B3343            imul si,[bp+di],byte +0x43
00007E68  E188              loope 0x7df2
00007E6A  1E                push ds
00007E6B  69D6758B          imul dx,si,word 0x8b75
00007E6F  3A424C            cmp al,[bp+si+0x4c]
00007E72  E30C              jcxz 0x7e80
00007E74  A2A56E            mov [0x6ea5],al
00007E77  8C3D              mov [di],segr7
00007E79  6F                outsw
00007E7A  39E9              cmp cx,bp
00007E7C  0103              add [bp+di],ax
00007E7E  DB                db 0xdb
00007E7F  B40F              mov ah,0xf
00007E81  1CE8              sbb al,0xe8
00007E83  F6B9000D          idiv byte [bx+di+0xd00]
00007E87  0A01              or al,[bx+di]
00007E89  8809              mov [bx+di],cl
00007E8B  95                xchg ax,bp
00007E8C  07                pop es
00007E8D  6C                insb
00007E8E  6F                outsw
00007E8F  C46164            les sp,[bx+di+0x64]
00007E92  158F61            adc ax,0x618f
00007E95  3A20              cmp ah,[bx+si]
00007E97  41                inc cx
00007E98  FF6E20            jmp far [bp+0x20]
00007E9B  3830              cmp [bx+si],dh
00007E9D  3338              xor di,[bx+si]
00007E9F  3620B6700E        and [ss:bp+0xe70],dh
00007EA4  6320              arpl [bx+si],sp
00007EA6  AD                lodsw
00007EA7  B56D              mov ch,0x6d
00007EA9  1320              adc sp,[bx+si]
00007EAB  DE02              fiadd word [bp+si]
00007EAD  686967            push word 0x6769
00007EB0  68DF20            push word 0x20df
00007EB3  206973            and [bx+di+0x73],ch
00007EB6  206F32            and [bx+0x32],ch
00007EB9  7175              jno 0x7f30
00007EBB  696C046440        imul bp,[si+0x4],word 0x4064
00007EC0  1D4474            sbb ax,0x7444
00007EC3  B86810            mov ax,0x1068
00007EC6  40                inc ax
00007EC7  4F                dec di
00007EC8  C52E6F4C          lds bp,[0x4c6f]
00007ECC  54                push sp
00007ECD  6F                outsw
00007ECE  20F6              and dh,dh
00007ED0  7573              jnz 0x7f45
00007ED2  6520531E          and [gs:bp+di+0x1e],dl
00007ED6  6F                outsw
00007ED7  6E                outsb
00007ED8  CD1E              int 0x1e
00007EDA  96                xchg ax,si
00007EDB  46                inc si
00007EDC  20A5B6BB          and [di-0x444a],ah
00007EE0  61                popa
00007EE1  206F62            and [bx+0x62],ch
00007EE4  887429            mov [si+0x29],dh
00007EE7  D2A2610A          shl byte [bp+si+0xa61],cl
00007EEB  6F                outsw
00007EEC  367061            ss jo 0x7f50
00007EEF  7469              jz 0x7f5a
00007EF1  B562              mov ch,0x62
00007EF3  16                push ss
00007EF4  92                xchg ax,dx
00007EF5  43                inc bx
00007EF6  D101              rol word [bx+di],1
00007EF8  1024              adc [si],ah
00007EFA  296D0F            sub [di+0xf],bp
00007EFD  F7626F            mul word [bp+si+0x6f]
00007F00  6F                outsw
00007F01  741B              jz 0x7f1e
00007F03  0564ED            add ax,0xed64
00007F06  0E                push cs
00007F07  B307              mov bl,0x7
00007F09  BAF4A8            mov dx,0xa8f4
00007F0C  5E                pop si
00007F0D  2EAC              cs lodsb
00007F0F  34B4              xor al,0xb4
00007F11  F25E              repne pop si
00007F13  3F                aas
00007F14  15A5B9            adc ax,0xb9a5
00007F17  05B280            add ax,0x80b2
00007F1A  78A9              js 0x7ec5
00007F1C  FB                sti
00007F1D  F4                hlt
00007F1E  6E                outsb
00007F1F  94                xchg ax,sp
00007F20  16                push ss
00007F21  74F8              jz 0x7f1b
00007F23  3B4F16            cmp cx,[bx+0x16]
00007F26  CDF0              int 0xf0
00007F28  19EB              sbb bx,bp
00007F2A  FE                db 0xfe
00007F2B  D9E0              fchs
00007F2D  FD                std
00007F2E  7F1B              jg 0x7f4b
00007F30  0010              add [bx+si],dl
00007F32  FF5EF4            call far [bp-0xc]
00007F35  0880FBB0          or [bx+si-0x4f05],al
00007F39  2D7D21            sub ax,0x217d
00007F3C  51                push cx
00007F3D  6B440E3A          imul ax,[si+0xe],byte +0x3a
00007F41  83B5646EEB        xor word [di+0x6e64],byte -0x15
00007F46  89D9              mov cx,bx
00007F48  14AF              adc al,0xaf
00007F4A  0B02              or ax,[bp+si]
00007F4C  0F6F04            movq mm0,[si]
00007F4F  0489              add al,0x89
00007F51  17                pop ss
00007F52  0E                push cs
00007F53  AD                lodsw
00007F54  0E                push cs
00007F55  9E                sahf
00007F56  80F8A1            cmp al,0xa1
00007F59  00D6              add dh,dl
00007F5B  07                pop es
00007F5C  F4                hlt
00007F5D  52                push dx
00007F5E  06                push es
00007F5F  1E                push ds
00007F60  05BFCB            add ax,0xcbbf
00007F63  2EA26BA0          mov [cs:0xa06b],al
00007F67  EBBB              jmp short 0x7f24
00007F69  001F              add [bx],bl
00007F6B  8B07              mov ax,[bx]
00007F6D  5C                pop sp
00007F6E  41                inc cx
00007F6F  B9EA6D            mov cx,0x6dea
00007F72  5E                pop si
00007F73  0850DA            or [bx+si-0x26],dl
00007F76  92                xchg ax,dx
00007F77  6F                outsw
00007F78  0CDF              or al,0xdf
00007F7A  340E              xor al,0xe
00007F7C  8E4710            mov es,[bx+0x10]
00007F7F  155B6B            adc ax,0x6b5b
00007F82  1F                pop ds
00007F83  F1                int1
00007F84  CD00              int 0x0
00007F86  9C                pushf
00007F87  1E                push ds
00007F88  54                push sp
00007F89  77FF              ja 0x7f8a
00007F8B  8E5F06            mov ds,[bx+0x6]
00007F8E  B436              mov ah,0x36
00007F90  0F0B              ud2
00007F92  8E07              mov es,[bx]
00007F94  82                db 0x82
00007F95  8F                db 0x8f
00007F96  D6                salc
00007F97  9F                lahf
00007F98  2CCB              sub al,0xcb
00007F9A  89892C89          mov [bx+di-0x76d4],cx
00007F9E  B289              mov dl,0x89
00007FA0  F9                stc
00007FA1  8F470E            pop word [bx+0xe]
00007FA4  8C5B05            mov [bp+di+0x5],ds
00007FA7  16                push ss
00007FA8  C6                db 0xc6
00007FA9  1F                pop ds
00007FAA  07                pop es
00007FAB  3AD2              cmp dl,dl
00007FAD  5B                pop bx
00007FAE  16                push ss
00007FAF  82                db 0x82
00007FB0  06                push es
00007FB1  BBFF5B            mov bx,0x5bff
00007FB4  5A                pop dx
00007FB5  58                pop ax
00007FB6  59                pop cx
00007FB7  07                pop es
00007FB8  0E                push cs
00007FB9  53                push bx
00007FBA  06                push es
00007FBB  DB51CB            fist dword [bx+di-0x35]
00007FBE  90                nop
00007FBF  43                inc bx
00007FC0  EACD2F3C21        jmp 0x213c:0x2fcd
00007FC5  8F                db 0x8f
00007FC6  5F                pop di
00007FC7  CDC3              int 0xc3
00007FC9  46                inc si
00007FCA  A5                movsw
00007FCB  EE                out dx,al
00007FCC  B8100F            mov ax,0xf10
00007FCF  42                inc dx
00007FD0  243B              and al,0x3b
00007FD2  07                pop es
00007FD3  C3                ret
00007FD4  D1C6              rol si,1
00007FD6  A5                movsw
00007FD7  703D              jo 0x8016
00007FD9  1426              adc al,0x26
00007FDB  5D                pop bp
00007FDC  38A66F7C          cmp [bp+0x7c6f],ah
00007FE0  3EEBF1            ds jmp short 0x7fd4
00007FE3  014273            add [bp+si+0x73],ax
00007FE6  7BEB              jpo 0x7fd3
00007FE8  E8085C            call 0xdbf3
00007FEB  07                pop es
00007FEC  99                cwd
00007FED  7CAE              jl 0x7f9d
00007FEF  2408              and al,0x8
00007FF1  6D                insw
00007FF2  4B                dec bx
00007FF3  42                inc dx
00007FF4  D427              aam 0x27
00007FF6  04BB              add al,0xbb
00007FF8  4E                dec si
00007FF9  19D2              sbb dx,dx
00007FFB  281B              sub [bp+di],bl
00007FFD  50                push ax
00007FFE  0D4050            or ax,0x5040
00008001  91                xchg ax,cx
00008002  AD                lodsw
00008003  85426D            test [bp+si+0x6d],ax
00008006  7B53              jpo 0x805b
00008008  C0175E            rcl byte [bx],byte 0x5e
0000800B  E137              loope 0x8044
0000800D  EBF5              jmp short 0x8004
0000800F  F9                stc
00008010  2448              and al,0x48
00008012  7D19              jnl 0x802d
00008014  DB09              fisttp dword [bx+di]
00008016  D8AF3051          fsubr dword [bx+0x5130]
0000801A  F61A              neg byte [bp+si]
0000801C  1E                push ds
0000801D  8EDB              mov ds,bx
0000801F  0FFF              ud0
00008021  1F                pop ds
00008022  C3                ret
00008023  0208              add cl,[bx+si]
00008025  097075            or [bx+si+0x75],si
00008028  1047E5            adc [bx-0x1b],al
0000802B  88812B74          mov [bx+di+0x742b],al
0000802F  7677              jna 0x80a8
00008031  FF4857            dec word [bx+si+0x57]
00008034  56                push si
00008035  B87000            mov ax,0x70
00008038  1E                push ds
00008039  40                inc ax
0000803A  1D104A            sbb ax,0x4a10
0000803D  4E                dec si
0000803E  99                cwd
0000803F  53                push bx
00008040  2B89DE55          sub cx,[bx+di+0x55de]
00008044  4D                dec bp
00008045  AE                scasb
00008046  1E                push ds
00008047  68CFB5            push word 0xb5cf
0000804A  DA0B              fimul dword [bp+di]
0000804C  0FF7FA            maskmovq mm7,mm2
0000804F  E101              loope 0x8052
00008051  D8A30200          fsub dword [bp+di+0x2]
00008055  9F                lahf
00008056  E0BF              loopne 0x8017
00008058  0B5A8A            or bx,[bp+si-0x76]
0000805B  17                pop ss
0000805C  50                push ax
0000805D  BB4180            mov bx,0x8041
00008060  A1DC53            mov ax,[0x53dc]
00008063  BD076D            mov bp,0x6d07
00008066  82                db 0x82
00008067  0FBB98B90A        btc [bx+si+0xab9],bx
0000806C  096515            or [di+0x15],sp
0000806F  6E                outsb
00008070  0F5E5F97          divps xmm3,oword [bx-0x69]
00008074  85C3              test bx,ax
00008076  2E116C4D          adc [cs:si+0x4d],bp
0000807A  98                cbw
0000807B  1B8FD1B7          sbb cx,[bx-0x482f]
0000807F  E601              out 0x1,al
00008081  A5                movsw
00008082  A5                movsw
00008083  FF                db 0xff
00008084  FA                cli
00008085  8954FC            mov [si-0x4],dx
00008088  8C44FE            mov [si-0x2],es
0000808B  FB                sti
0000808C  D401              aam 0x1
0000808E  EABCC5FCE2        jmp 0xe2fc:0xc5bc
00008093  E42F              in al,0x2f
00008095  0457              add al,0x57
00008097  6653              push ebx
00008099  E86651            call 0xd202
0000809C  66D4FF            o32 aam 0xff
0000809F  6D                insw
000080A0  11BABC5E          adc [bp+si+0x5ebc],di
000080A4  49                dec cx
000080A5  53                push bx
000080A6  885AFF            mov [bp+si-0x1],bl
000080A9  0ADF              or bl,bh
000080AB  024D45            add cl,[di+0x45]
000080AE  66B96F0D4D44      mov ecx,0x444d0d6f
000080B4  66B7BB            o32 mov bh,0xbb
000080B7  054B3F            add ax,0x3f4b
000080BA  0BF1              or si,cx
000080BC  66ED              in eax,dx
000080BE  C1E810            shr ax,byte 0x10
000080C1  039AEBE9          add bx,[bp+si-0x1615]
000080C5  6F                outsw
000080C6  EA103D218B        jmp 0x8b21:0x3d10
000080CB  4D                dec bp
000080CC  8A51B6            mov dl,[bx+di-0x4a]
000080CF  FF4505            inc word [di+0x5]
000080D2  D10EBAFA          ror word [0xfaba],1
000080D6  44                inc sp
000080D7  49                dec cx
000080D8  37                aaa
000080D9  BB81FB            mov bx,0xfb81
000080DC  D6                salc
000080DD  53                push bx
000080DE  4B                dec bx
000080DF  43                inc bx
000080E0  AD                lodsw
000080E1  E405              in al,0x5
000080E3  7796              ja 0x807b
000080E5  6658              pop eax
000080E7  668A5A26          o32 mov bl,[bp+si+0x26]
000080EB  BCE166            mov sp,0x66e1
000080EE  59                pop cx
000080EF  66816207EE426898  and dword [bp+si+0x7],0x986842ee
000080F7  0F                db 0x0f
000080F8  97                xchg ax,di
000080F9  10B880DA          adc [bx+si-0x2580],bh
000080FD  1F                pop ds
000080FE  2D0725            sub ax,0x2507
00008101  DDC1              ffree st1
00008103  D3                db 0xd3
00008104  70B1              jo 0x80b7
00008106  E25A              loop 0x8162
00008108  025CFE            add bl,[si-0x2]
0000810B  57                push di
0000810C  69FEC2BB          imul di,si,word 0xbbc2
00008110  E020              loopne 0x8132
00008112  07                pop es
00008113  38F0              cmp al,dh
00008115  50                push ax
00008116  68E205            push word 0x5e2
00008119  2EEBF4            cs jmp short 0x8110
0000811C  0408              add al,0x8
0000811E  2D80C1            sub ax,0xc180
00008121  687135            push word 0x3571
00008124  B01E              mov al,0x1e
00008126  CF                iret
00008127  3114              xor [si],dx
00008129  54                push sp
0000812A  BADA81            mov dx,0x81da
0000812D  708D              jo 0x80bc
0000812F  F36C              rep insb
00008131  29262DD5          sub [0xd52d],sp
00008135  02CB              add cl,bl
00008137  03977E16          add dx,[bx+0x167e]
0000813B  88D0              mov al,dl
0000813D  FEC8              dec al
0000813F  8E6E7D            mov gs,[bp+0x7d]
00008142  22685B            and ch,[bx+si+0x5b]
00008145  00680A            add [bx+si+0xa],ch
00008148  03EF              add bp,di
0000814A  245C              and al,0x5c
0000814C  7080              jo 0x80ce
0000814E  FA                cli
0000814F  858071D8          test [bx+si-0x278f],ax
00008153  B203              mov dl,0x3
00008155  5A                pop dx
00008156  CB                retf
00008157  88E8              mov al,ch
00008159  8307BF            add word [bx],byte -0x41
0000815C  40                inc ax
0000815D  06                push es
0000815E  31AB6476          xor [bp+di+0x7664],bp
00008162  E89408            call 0x89f9
00008165  FC                cld
00008166  56                push si
00008167  22E8              and ch,al
00008169  59                pop cx
0000816A  0358B4            add bx,[bx+si-0x4c]
0000816D  F6B94300          idiv byte [bx+di+0x43]
00008171  212A              and [bp+si],bp
00008173  8569EA            test [bx+di-0x16],bp
00008176  46                inc si
00008177  0541EF            add ax,0xef41
0000817A  CA7D17            retf 0x177d
0000817D  880EED5E          mov [0x5eed],cl
00008181  016802            add [bx+si+0x2],bp
00008184  07                pop es
00008185  56                push si
00008186  6A02              push byte +0x2
00008188  FE                db 0xfe
00008189  23511F            and dx,[bx+di+0x1f]
0000818C  08FE              or dh,bh
0000818E  41                inc cx
0000818F  EB89              jmp short 0x811a
00008191  D9C3              fld st3
00008193  155DF0            adc ax,0xf05d
00008196  B86A63            mov ax,0x636a
00008199  AE                scasb
0000819A  F355              rep push bp
0000819C  F8                clc
0000819D  F2027001          repne add dh,[bx+si+0x1]
000081A1  2C70              sub al,0x70
000081A3  CD20              int 0x20
000081A5  1435              adc al,0x35
000081A7  C09A5670E5        rcr byte [bp+si+0x7056],byte 0xe5
000081AC  06                push es
000081AD  C08A5FB843        ror byte [bp+si-0x47a1],byte 0x43
000081B2  33FB              xor di,bx
000081B4  14BF              adc al,0xbf
000081B6  52                push dx
000081B7  CB                retf
000081B8  658C6F16          mov [gs:bx+0x16],gs
000081BC  BB660F            mov bx,0xf66
000081BF  38FF              cmp bh,bh
000081C1  7300              jnc 0x81c3
000081C3  07                pop es
000081C4  AD                lodsw
000081C5  2C35              sub al,0x35
000081C7  003624F0          add [0xf024],dh
000081CB  E040              loopne 0x820d
000081CD  72E2              jc 0x81b1
000081CF  E003              loopne 0x81d4
000081D1  D490              aam 0x90
000081D3  E0D5              loopne 0x81aa
000081D5  7BD3              jpo 0x81aa
000081D7  7355              jnc 0x822e
000081D9  60                pusha
000081DA  D4E4              aam 0xe4
000081DC  94                xchg ax,sp
000081DD  6F                outsw
000081DE  DB5436            fist dword [si+0x36]
000081E1  46                inc si
000081E2  F0B1B5            lock mov cl,0xb5
000081E5  80841741E0        add byte [si+0x4117],0xe0
000081EA  087408            or [si+0x8],dh
000081ED  94                xchg ax,sp
000081EE  00B742D0          add [bx-0x2fbe],dh
000081F2  385D40            cmp [di+0x40],bl
000081F5  2E5D              cs pop bp
000081F7  55                push bp
000081F8  FB                sti
000081F9  9E                sahf
000081FA  666F              outsd
000081FC  0AA46D6D          or ah,[si+0x6d6d]
00008200  5B                pop bx
00008201  38D5              cmp ch,dl
00008203  C6876AA391        mov byte [bx-0x5c96],0x91
00008208  0A10              or dl,[bx+si]
0000820A  5D                pop bp
0000820B  73BB              jnc 0x81c8
0000820D  682CF0            push word 0xf02c
00008210  4E                dec si
00008211  BE4BFB            mov si,0xfb4b
00008214  1901              sbb [bx+di],ax
00008216  73D0              jnc 0x81e8
00008218  6745              a32 inc bp
0000821A  D7                xlatb
0000821B  1B5D76            sbb bx,[di+0x76]
0000821E  CD01              int 0x1
00008220  03571D            add dx,[bx+0x1d]
00008223  ED                in ax,dx
00008224  E6BB              out 0xbb,al
00008226  97                xchg ax,di
00008227  6F                outsw
00008228  15C3BA            adc ax,0xbac3
0000822B  85D2              test dx,dx
0000822D  12B9CA8D          adc bh,[bx+di-0x7236]
00008231  E680              out 0x80,al
00008233  E017              loopne 0x824c
00008235  41                inc cx
00008236  3F                aas
00008237  7EEE              jng 0x8227
00008239  EE                out dx,al
0000823A  B8D933            mov ax,0x33d9
0000823D  6F                outsw
0000823E  4A                dec dx
0000823F  06                push es
00008240  55                push bp
00008241  0D1B5D            or ax,0x5d1b
00008244  6D                insw
00008245  B601              mov dh,0x1
00008247  3C9A              cmp al,0x9a
00008249  5A                pop dx
0000824A  115B98            adc [bp+di-0x68],bx
0000824D  013E9F25          add [0x259f],di
00008251  3280E03B          xor al,[bx+si+0x3be0]
00008255  D8E9              fsubr st1
00008257  BB8FC0            mov bx,0xc08f
0000825A  847726            test [bx+0x26],dh
0000825D  07                pop es
0000825E  EABB80C13B        jmp 0x3bc1:0x80bb
00008263  4C                dec sp
00008264  D212              rcl byte [bp+si],cl
00008266  17                pop ss
00008267  53                push bx
00008268  B720              mov bh,0x20
0000826A  BAFAED            mov dx,0xedfa
0000826D  01B970FE          add [bx+di-0x190],di
00008271  96                xchg ax,si
00008272  1B08              sbb cx,[bx+si]
00008274  0577B1            add ax,0xb177
00008277  E80BAA            call 0x2c85
0000827A  291638DF          sub [0xdf38],dx
0000827E  20B15908          and [bx+di+0x859],dh
00008282  86B7A593          xchg [bx-0x6c5b],dh
00008286  008507DE          add [di-0x21f9],al
0000828A  7005              jo 0x8291
0000828C  4E                dec si
0000828D  B787              mov bh,0x87
0000828F  D6                salc
00008290  D517              aad 0x17
00008292  0F9200            setc [bx+si]
00008295  0A34              or dh,[si]
00008297  92                xchg ax,dx
00008298  86D1              xchg cl,dl
0000829A  F66F5B            imul byte [bx+0x5b]
0000829D  21A346D0          and [bp+di-0x2fba],sp
000082A1  1B8CBFE1          sbb cx,[si-0x1e41]
000082A5  D0C7              rol bh,1
000082A7  06                push es
000082A8  D417              aam 0x17
000082AA  4D                dec bp
000082AB  07                pop es
000082AC  16                push ss
000082AD  FD                std
000082AE  D6                salc
000082AF  17                pop ss
000082B0  E8E422            call 0xa597
000082B3  A1BD05            mov ax,[0x5bd]
000082B6  2DFF0F            sub ax,0xfff
000082B9  FD                std
000082BA  12F0              adc dh,al
000082BC  FFA3C011          jmp [bp+di+0x11c0]
000082C0  50                push ax
000082C1  DD                db 0xdd
000082C2  AD                lodsw
000082C3  5E                pop si
000082C4  028D1338          add cl,[di+0x3813]
000082C8  A26056            mov [0x5660],al
000082CB  C9                leave
000082CC  0480              add al,0x80
000082CE  1B7C93            sbb di,[si-0x6d]
000082D1  FC                cld
000082D2  D4E8              aam 0xe8
000082D4  34BB              xor al,0xbb
000082D6  3C5E              cmp al,0x5e
000082D8  3459              xor al,0x59
000082DA  3A470A            cmp al,[bx+0xa]
000082DD  5C                pop sp
000082DE  D12C              shr word [si],1
000082E0  3440              xor al,0x40
000082E2  18B4E3A2          sbb [si-0x5d1d],dh
000082E6  186F70            sbb [bx+0x70],ch
000082E9  AE                scasb
000082EA  06                push es
000082EB  EA1923336D        jmp 0x6d33:0x2319
000082F0  3E0C11            ds or al,0x11
000082F3  1B41B8            sbb ax,[bx+di-0x48]
000082F6  D10E06D0          ror word [0xd006],1
000082FA  B6FD              mov dh,0xfd
000082FC  B7EA              mov bh,0xea
000082FE  2ED574            cs aad 0x74
00008301  E8260A            call 0x8d2a
00008304  3E9A200A2D24      ds call 0x242d:0xa20
0000830A  A30607            mov [0x706],ax
0000830D  F4                hlt
0000830E  17                pop ss
0000830F  0A42A8            or al,[bp+si-0x58]
00008312  895A60            mov [bp+si+0x60],bx
00008315  FB                sti
00008316  88DF              mov bh,bl
00008318  8814              mov [si],dl
0000831A  7CF6              jl 0x8312
0000831C  E88574            call 0xf7a4
0000831F  45                inc bp
00008320  15B50E            adc ax,0xeb5
00008323  5A                pop dx
00008324  6E                outsb
00008325  07                pop es
00008326  A6                cmpsb
00008327  FD                std
00008328  08C9              or cl,cl
0000832A  3B6265            cmp sp,[bp+si+0x65]
0000832D  B6BA              mov dh,0xba
0000832F  2686C2            es xchg dl,al
00008332  82                db 0x82
00008333  288EB28C          sub [bp-0x734e],cl
00008337  D26F38            shr byte [bx+0x38],cl
0000833A  47                inc di
0000833B  217860            and [bx+si+0x60],di
0000833E  8D                db 0x8d
0000833F  DE                db 0xde
00008340  D46B              aam 0x6b
00008342  C2588E            ret 0x8e58
00008345  79B6              jns 0x82fd
00008347  3C03              cmp al,0x3
00008349  7F22              jg 0x836d
0000834B  37                aaa
0000834C  50                push ax
0000834D  89CB              mov bx,cx
0000834F  C001C3            rol byte [bx+di],byte 0xc3
00008352  A300F9            mov [0xf900],ax
00008355  65FB              gs sti
00008357  6F                outsw
00008358  B498              mov ah,0x98
0000835A  6D                insw
0000835B  26EB00            es jmp short 0x835e
0000835E  17                pop ss
0000835F  0F6F5B2E          movq mm3,[bp+di+0x2e]
00008363  642E45            cs inc bp
00008366  46                inc si
00008367  5D                pop bp
00008368  7D2C              jnl 0x8396
0000836A  0461              add al,0x61
0000836C  C5A00587          lds sp,[bx+si-0x78fb]
00008370  AA                stosb
00008371  1F                pop ds
00008372  96                xchg ax,si
00008373  0C45              or al,0x45
00008375  AB                stosw
00008376  B96547            mov cx,0x4765
00008379  1BC5              sbb ax,bp
0000837B  40                inc ax
0000837C  D48E              aam 0x8e
0000837E  E02D              loopne 0x83ad
00008380  8519              test [bx+di],bx
00008382  BA037C            mov dx,0x7c03
00008385  1B38              sbb di,[bx+si]
00008387  685A68            push word 0x685a
0000838A  25B262            and ax,0x62b2
0000838D  16                push ss
0000838E  00D1              add cl,dl
00008390  72B3              jc 0x8345
00008392  7C49              jl 0x83dd
00008394  BA074D            mov dx,0x4d07
00008397  C6054F            mov byte [di],0x4f
0000839A  DA944282          ficom dword [si-0x7dbe]
0000839E  666853A515B7      push dword 0xb715a553
000083A4  4A                dec dx
000083A5  BD6CFB            mov bp,0xfb6c
000083A8  1A92151D          sbb dl,[bp+si+0x1d15]
000083AC  1B4315            sbb ax,[bp+di+0x15]
000083AF  6C                insb
000083B0  07                pop es
000083B1  04FA              add al,0xfa
000083B3  0DFBB5            or ax,0xb5fb
000083B6  032F              add bp,[bx]
000083B8  2425              and al,0x25
000083BA  FB                sti
000083BB  6A4F              push byte +0x4f
000083BD  011E7B06          add [0x67b],bx
000083C1  1B6517            sbb sp,[di+0x17]
000083C4  94                xchg ax,sp
000083C5  082E03F1          or [0xf103],ch
000083C9  FA                cli
000083CA  08CD              or ch,cl
000083CC  B0A3              mov al,0xa3
000083CE  328F690A          xor cl,[bx+0xa69]
000083D2  4E                dec si
000083D3  59                pop cx
000083D4  DBE0              fneni
000083D6  9F                lahf
000083D7  96                xchg ax,si
000083D8  97                xchg ax,di
000083D9  FC                cld
000083DA  680C16            push word 0x160c
000083DD  CAFC9E            retf 0x9efc
000083E0  2383C40C          and ax,[bp+di+0xcc4]
000083E4  1188CE09          adc [bx+si+0x9ce],cx
000083E8  16                push ss
000083E9  7881              js 0x836c
000083EB  ED                in ax,dx
000083EC  FE                db 0xfe
000083ED  2D2E88            sub ax,0x882e
000083F0  2CA9              sub al,0xa9
000083F2  B476              mov ah,0x76
000083F4  096805            or [bx+si+0x5],bp
000083F7  ED                in ax,dx
000083F8  685D1F            push word 0x1f5d
000083FB  8D168DB6          lea dx,[0xb68d]
000083FF  68541E            push word 0x1e54
00008402  F00DDA86          lock or ax,0x86da
00008406  B96C96            mov cx,0x966c
00008409  EC                in al,dx
0000840A  7F0A              jg 0x8416
0000840C  5A                pop dx
0000840D  817F15848F        cmp word [bx+0x15],0x8f84
00008412  09FF              or di,di
00008414  36A6              ss cmpsb
00008416  6E                outsb
00008417  61                popa
00008418  F36C              rep insb
0000841A  AD                lodsw
0000841B  CE                into
0000841C  146E              adc al,0x6e
0000841E  97                xchg ax,di
0000841F  09FE              or si,di
00008421  DF05              fild word [di]
00008423  807E7E7F          cmp byte [bp+0x7e],0x7f
00008427  DB                db 0xdb
00008428  730A              jnc 0x8434
0000842A  A5                movsw
0000842B  766F              jna 0x849c
0000842D  097A7F            or [bp+si+0x7f],di
00008430  0DDD75            or ax,0x75dd
00008433  ED                in ax,dx
00008434  0F                db 0x0f
00008435  7AC2              jpe 0x83f9
00008437  7361              jnc 0x849a
00008439  84A8141A          test [bx+si+0x1a14],ch
0000843D  68422A            push word 0x2a42
00008440  DD7964            fnstsw [bx+di+0x64]
00008443  05B209            add ax,0x9b2
00008446  4C                dec sp
00008447  28D5              sub ch,dl
00008449  1437              adc al,0x37
0000844B  DB478D            fild dword [bx-0x73]
0000844E  5E                pop si
0000844F  F67F8D            idiv byte [bx-0x73]
00008452  767F              jna 0x84d3
00008454  2F                das
00008455  FF567E            call [bp+0x7e]
00008458  01F2              add dx,si
0000845A  39D3              cmp bx,dx
0000845C  73E0              jnc 0x843e
0000845E  31803FDB          xor [bx+si-0x24c1],ax
00008462  BD0A04            mov bp,0x40a
00008465  7909              jns 0x8470
00008467  7405              jz 0x846e
00008469  5B                pop bx
0000846A  3E1F              ds pop ds
0000846C  7F48              jg 0x84b6
0000846E  46                inc si
0000846F  8D56FC            lea dx,[bp-0x4]
00008472  7F01              jg 0x8475
00008474  D6                salc
00008475  39DE              cmp si,bx
00008477  725B              jc 0x84d4
00008479  37                aaa
0000847A  14FD              adc al,0xfd
0000847C  885403            mov [si+0x3],dl
0000847F  4E                dec si
00008480  EBF4              jmp short 0x8476
00008482  1A40EE            sbb al,[bx+si-0x12]
00008485  EC                in al,dx
00008486  236CEB            and bp,[si-0x15]
00008489  0A3634C5          or dh,[0xc534]
0000848D  EB84              jmp short 0x8413
0000848F  A3825B            mov [0x5b82],ax
00008492  9E                sahf
00008493  9E                sahf
00008494  F1                int1
00008495  019AF212          add [bp+si+0x12f2],bx
00008499  AD                lodsw
0000849A  AE                scasb
0000849B  CB                retf
0000849C  ED                in ax,dx
0000849D  048D              add al,0x8d
0000849F  A6                cmpsb
000084A0  C2E85D            ret 0x5de8
000084A3  E90C38            jmp 0xbcb2
000084A6  9A1009F86A        call 0x6af8:0x910
000084AB  2F                das
000084AC  8D0B              lea cx,[bp+di]
000084AE  90                nop
000084AF  0A05              or al,[di]
000084B1  43                inc bx
000084B2  1353B5            adc dx,[bp+di-0x4b]
000084B5  860A              xchg [bp+si],cl
000084B7  96                xchg ax,si
000084B8  0A4628            or al,[bp+0x28]
000084BB  E6D5              out 0xd5,al
000084BD  0CFB              or al,0xfb
000084BF  5C                pop sp
000084C0  26EB3A            es jmp short 0x84fd
000084C3  06                push es
000084C4  153499            adc ax,0x9934
000084C7  194530            sbb [di+0x30],ax
000084CA  6F                outsw
000084CB  4D                dec bp
000084CC  AC                lodsb
000084CD  4E                dec si
000084CE  E094              loopne 0x8464
000084D0  1000              adc [bx+si],al
000084D2  1B97E86D          sbb dx,[bx+0x6de8]
000084D6  360E              ss push cs
000084D8  B65D              mov dh,0x5d
000084DA  6B37F0            imul si,[bx],byte -0x10
000084DD  3DBA45            cmp ax,0x45ba
000084E0  BA0078            mov dx,0x7800
000084E3  156971            adc ax,0x7169
000084E6  19A81BEC          sbb [bx+si-0x13e5],bp
000084EA  FE                db 0xfe
000084EB  198E1290          sbb [bp-0x6fee],cx
000084EF  DD3B              fnstsw [bp+di]
000084F1  51                push cx
000084F2  8DA78FDF          lea sp,[bx-0x2071]
000084F6  F71B              neg word [bp+di]
000084F8  8D573D            lea dx,[bx+0x3d]
000084FB  195219            sbb [bp+si+0x19],dx
000084FE  E63F              out 0x3f,al
00008500  8A5446            mov dl,[si+0x46]
00008503  6588B51702        mov [gs:di+0x217],dh
00008508  3E9E              ds sahf
0000850A  7F13              jg 0x851f
0000850C  83595C19          sbb word [bx+di+0x5c],byte +0x19
00008510  D53B              aad 0x3b
00008512  43                inc bx
00008513  07                pop es
00008514  3D1E42            cmp ax,0x421e
00008517  41                inc cx
00008518  CB                retf
00008519  3C3E              cmp al,0x3e
0000851B  C085C904F7        rol byte [di+0x4c9],byte 0xf7
00008520  A842              test al,0x42
00008522  2E                cs
00008523  FE                db 0xfe
00008524  263A5447          cmp dl,[es:si+0x47]
00008528  7338              jnc 0x8562
0000852A  E6A5              out 0xa5,al
0000852C  0AD0              or dl,al
0000852E  6BA832B5FB        imul bp,[bx+si-0x4ace],byte -0x5
00008533  FA                cli
00008534  248E              and al,0x8e
00008536  C18D4A68FE        ror word [di+0x684a],byte 0xfe
0000853B  D9365C7B          fnstenv [0x7b5c]
0000853F  8C6C47            mov [si+0x47],gs
00008542  3BD8              cmp bx,ax
00008544  217E26            and [bp+0x26],di
00008547  C44C3C            les cx,[si+0x3c]
0000854A  0085E68D          add [di-0x721a],al
0000854E  CE                into
0000854F  4A                dec dx
00008550  99                cwd
00008551  44                inc sp
00008552  E919CA            jmp 0x4f6e
00008555  7F3D              jg 0x8594
00008557  26FE4446          inc byte [es:si+0x46]
0000855B  40                inc ax
0000855C  EBE9              jmp short 0x8547
0000855E  6AFF              push byte -0x1
00008560  BFE7DC            mov di,0xdce7
00008563  140D              adc al,0xd
00008565  3EFE82FD2C        inc byte [ds:bp+si+0x2cfd]
0000856A  0E                push cs
0000856B  642A911B80        sub dl,[fs:bx+di-0x7fe5]
00008570  3E44              ds inc sp
00008572  1BA5CF10          sbb sp,[di+0x10cf]
00008576  D8CB              fmul st3
00008578  7417              jz 0x8591
0000857A  2A5885            sub bl,[bx+si-0x7b]
0000857D  13A39471          adc sp,[bp+di+0x7194]
00008581  0F410B            cmovno cx,[bp+di]
00008584  FC                cld
00008585  E914B5            jmp 0x3a9c
00008588  64E555            fs in ax,0x55
0000858B  BC03E3            mov sp,0xe303
0000858E  EBDF              jmp short 0x856f
00008590  154D2F            adc ax,0x2f4d
00008593  88D0              mov al,dl
00008595  43                inc bx
00008596  F4                hlt
00008597  7FCE              jg 0x8567
00008599  1030              adc [bx+si],dh
0000859B  C0                db 0xc0
0000859C  F039D9            lock cmp cx,bx
0000859F  74F1              jz 0x8592
000085A1  17                pop ss
000085A2  6A41              push byte +0x41
000085A4  EC                in al,dx
000085A5  CA89D4            retf 0xd489
000085A8  40                inc ax
000085A9  132A              adc bp,[bp+si]
000085AB  4D                dec bp
000085AC  D7                xlatb
000085AD  D96C07            fldcw [si+0x7]
000085B0  D86E00            fsubr dword [bp+0x0]
000085B3  D6                salc
000085B4  1E                push ds
000085B5  A0355C            mov al,[0x5c35]
000085B8  53                push bx
000085B9  3D45E4            cmp ax,0xe445
000085BC  57                push di
000085BD  CAC1E6            retf 0xe6c1
000085C0  47                inc di
000085C1  50                push ax
000085C2  C275E7            ret 0xe775
000085C5  E86C05            call 0x8b34
000085C8  BB7646            mov bx,0x4676
000085CB  E8062E            call 0xb3d4
000085CE  60                pusha
000085CF  55                push bp
000085D0  B002              mov al,0x2
000085D2  CF                iret
000085D3  85F4              test sp,si
000085D5  EAD6165317        jmp 0x1753:0x16d6
000085DA  55                push bp
000085DB  56                push si
000085DC  E8DB62            call 0xe8ba
000085DF  6B26D90156        imul sp,[0x1d9],byte +0x56
000085E4  83708040          xor word [bx+si-0x80],byte +0x40
000085E8  7FEC              jg 0x85d6
000085EA  E9AC00            jmp 0x8699
000085ED  047A              add al,0x7a
000085EF  EF                out dx,ax
000085F0  A9BB62            test ax,0x62bb
000085F3  E601              out 0x1,al
000085F5  E8502F            call 0xb548
000085F8  3D76E4            cmp ax,0xe476
000085FB  74AA              jz 0x85a7
000085FD  E7E5              out 0xe5,ax
000085FF  CE                into
00008600  54                push sp
00008601  AD                lodsw
00008602  EC                in al,dx
00008603  228D0E50          and cl,[di+0x500e]
00008607  A2E316            mov [0x16e3],al
0000860A  F089DB            lock mov bx,bx
0000860D  148C              adc al,0x8c
0000860F  1F                pop ds
00008610  75EB              jnz 0x85fd
00008612  CF                iret
00008613  5F                pop di
00008614  E604              out 0x4,al
00008616  0FB01B            cmpxchg [bp+di],bl
00008619  00ADED32          add [di+0x32ed],ch
0000861D  C4                db 0xc4
0000861E  E405              in al,0x5
00008620  A836              test al,0x36
00008622  B669              mov dh,0x69
00008624  03DB              add bx,bx
00008626  1B2B              sbb bp,[bp+di]
00008628  19556F            sbb [di+0x6f],dx
0000862B  0DBA44            or ax,0x44ba
0000862E  006D0D            add [di+0xd],ch
00008631  13CE              adc cx,si
00008633  17                pop ss
00008634  9B16              wait push ss
00008636  67BA5289          mov dx,0x8952
0000863A  D6                salc
0000863B  9B4B              wait dec bx
0000863D  4D                dec bp
0000863E  124B03            adc cl,[bp+di+0x3]
00008641  E375              jcxz 0x86b8
00008643  FC                cld
00008644  0B6A99            or bp,[bp+si-0x67]
00008647  01A26BF0          add [bp+si-0xf95],sp
0000864B  30B7CCFD          xor [bx-0x234],dh
0000864F  1B8A9501          sbb cx,[bp+si+0x195]
00008653  142D              adc al,0x2d
00008655  0D118A            or ax,0x8a11
00008658  AF                scasw
00008659  2D8001            sub ax,0x180
0000865C  782D              js 0x868b
0000865E  17                pop ss
0000865F  C0EB13            shr bl,byte 0x13
00008662  80A8D68114        sub byte [bx+si-0x7e2a],0x14
00008667  0C2E              or al,0x2e
00008669  9D                popf
0000866A  3017              xor [bx],dl
0000866C  94                xchg ax,sp
0000866D  8031E3            xor byte [bx+di],0xe3
00008670  0406              add al,0x6
00008672  B161              mov cl,0x61
00008674  83F548            xor bp,byte +0x48
00008677  68B1C7            push word 0xc7b1
0000867A  6A4A              push byte +0x4a
0000867C  6709D6            a32 or si,dx
0000867F  F1                int1
00008680  85FE              test si,di
00008682  C05B85A5          rcr byte [bp+di-0x7b],byte 0xa5
00008686  7FA3              jg 0x862b
00008688  E7E9              out 0xe9,ax
0000868A  C889FA0F          enter 0xfa89,0xf
0000868E  696E53712A        imul bp,[bp+0x53],word 0x2a71
00008693  20C0              and al,al
00008695  A7                cmpsw
00008696  08DD              or ch,bl
00008698  E7C8              out 0xc8,ax
0000869A  1832              sbb [bp+si],dh
0000869C  92                xchg ax,dx
0000869D  811D69E8          sbb word [di],0xe869
000086A1  D168B8            shr word [bx+si-0x48],1
000086A4  B6C1              mov dh,0xc1
000086A6  E8259A            call 0x20ce
000086A9  F5                cmc
000086AA  0E                push cs
000086AB  83E303            and bx,byte +0x3
000086AE  BF6D39            mov di,0x396d
000086B1  DA7D14            fidivr dword [di+0x14]
000086B4  C7                db 0xc7
000086B5  0A32              or dh,[bp+si]
000086B7  05EF45            add ax,0x45ef
000086BA  2F                das
000086BB  54                push sp
000086BC  6A17              push byte +0x17
000086BE  8D6809            lea bp,[bx+si+0x9]
000086C1  37                aaa
000086C2  CE                into
000086C3  98                cbw
000086C4  F6F3              div bl
000086C6  42                inc dx
000086C7  EBE8              jmp short 0x86b1
000086C9  C9                leave
000086CA  3033              xor [bp+di],dh
000086CC  19843909          sbb [si+0x939],ax
000086D0  6407              fs pop es
000086D2  66E0CF            o32 loopne 0x86a4
000086D5  A30014            mov [0x1400],ax
000086D8  23643E            and sp,[si+0x3e]
000086DB  C82CD52F          enter 0xd52c,0x2f
000086DF  56                push si
000086E0  59                pop cx
000086E1  DB13              fist dword [bp+di]
000086E3  03D5              add dx,bp
000086E5  F04B              lock dec bx
000086E7  8856D4            mov [bp-0x2c],dl
000086EA  BA7EDA            mov dx,0xda7e
000086ED  8D8E81ED          lea cx,[bp-0x127f]
000086F1  DC6A13            fsubr qword [bp+si+0x13]
000086F4  2397D440          and dx,[bx+0x40d4]
000086F8  F6E2              mul dl
000086FA  F646EAAB          test byte [bp-0x16],0xab
000086FE  D11B              rcr word [bp+di],1
00008700  C9                leave
00008701  5C                pop sp
00008702  AA                stosb
00008703  1CAE              sbb al,0xae
00008705  7DCB              jnl 0x86d2
00008707  A5                movsw
00008708  0F7D02            rsts tword [bp+si]
0000870B  047F              add al,0x7f
0000870D  807F6903          cmp byte [bx+0x69],0x3
00008711  73A2              jnc 0x86b5
00008713  7256              jc 0x876b
00008715  DF14              fist word [si]
00008717  B7BA              mov bh,0xba
00008719  A3056C            mov [0x6c05],ax
0000871C  BEAAB9            mov si,0xb9aa
0000871F  6B1F6C            imul bx,[bx],byte +0x6c
00008722  0812              or [bp+si],dl
00008724  41                inc cx
00008725  A064A7            mov al,[0xa764]
00008728  0F416E6D          cmovno bp,[bp+0x6d]
0000872C  3D68AB            cmp ax,0xab68
0000872F  66763D            o32 jna 0x876f
00008732  48                dec ax
00008733  04F6              add al,0xf6
00008735  0C68              or al,0x68
00008737  6C                insb
00008738  21CD              and bp,cx
0000873A  49                dec cx
0000873B  0270AD            add dh,[bx+si-0x53]
0000873E  A7                cmpsw
0000873F  66                o32
00008740  82                db 0x82
00008741  7CE5              jl 0x8728
00008743  34D5              xor al,0xd5
00008745  3B7406            cmp si,[si+0x6]
00008748  12FB              adc bh,bl
0000874A  E401              in al,0x1
0000874C  0266A5            add ah,[bp-0x5b]
0000874F  82                db 0x82
00008750  E7B5              out 0xb5,ax
00008752  0F5202            rsqrtps xmm0,oword [bp+si]
00008755  E000              loopne 0x8757
00008757  7C0F              jl 0x8768
00008759  49                dec cx
0000875A  7C8A              jl 0x86e6
0000875C  E4BB              in al,0xbb
0000875E  B5F5              mov ch,0xf5
00008760  1AADFC13          sbb ch,[di+0x13fc]
00008764  012E455E          add [0x5e45],bp
00008768  FC                cld
00008769  FB                sti
0000876A  EA56EBC23A        jmp 0x3ac2:0xeb56
0000876F  C1A0BDB18D        shl word [bx+si-0x4e43],byte 0x8d
00008774  7705              ja 0x877b
00008776  13FD              adc di,bp
00008778  5B                pop bx
00008779  638D0472          arpl [di+0x7204],cx
0000877D  61                popa
0000877E  0AC7              or al,bh
00008780  5B                pop bx
00008781  04C1              add al,0xc1
00008783  F0F8              lock clc
00008785  0409              add al,0x9
00008787  D0                db 0xd0
00008788  F62606D4          mul byte [0xd406]
0000878C  C0EB55            shr bl,byte 0x55
0000878F  D1                db 0xd1
00008790  30EE              xor dh,ch
00008792  C05B010E          rcr byte [bp+di+0x1],byte 0xe
00008796  EAEF2D3A0B        jmp 0xb3a:0x2def
0000879B  20798B            and [bx+di-0x75],bh
0000879E  686270            push word 0x7062
000087A1  0046B2            add [bp-0x4e],al
000087A4  0C10              or al,0x10
000087A6  3857F5            cmp [bx-0xb],dl
000087A9  5D                pop bp
000087AA  01E9              add cx,bp
000087AC  0245CC            add al,[di-0x34]
000087AF  9B2A5927          wait sub bl,[bx+di+0x27]
000087B3  B01B              mov al,0x1b
000087B5  7C3B              jl 0x87f2
000087B7  F5                cmc
000087B8  56                push si
000087B9  685AE2            push word 0xe25a
000087BC  0D6386            or ax,0x8663
000087BF  1E                push ds
000087C0  96                xchg ax,si
000087C1  54                push sp
000087C2  1F                pop ds
000087C3  CB                retf
000087C4  BBC4D8            mov bx,0xd8c4
000087C7  17                pop ss
000087C8  BE282A            mov si,0x2a28
000087CB  1B73F4            sbb si,[bp+di-0xc]
000087CE  C6                db 0xc6
000087CF  700B              jo 0x87dc
000087D1  8894D810          mov [si+0x10d8],dl
000087D5  D8696D            fsubr dword [bx+di+0x6d]
000087D8  FFA685E8          jmp [bp-0x177b]
000087DC  55                push bp
000087DD  EBE4              jmp short 0x87c3
000087DF  89F7              mov di,si
000087E1  BFDAFF            mov di,0xffda
000087E4  6BDB55            imul bx,bx,byte +0x55
000087E7  81B5C328D31C      xor word [di+0x28c3],0x1cd3
000087ED  014C50            add [si+0x50],cx
000087F0  0B4882            or cx,[bx+si-0x7e]
000087F3  F7807DBE183C      test word [bx+si-0x4183],0x3c18
000087F9  6D                insw
000087FA  BE0445            mov si,0x4504
000087FD  B75E              mov bh,0x5e
000087FF  101A              adc [bp+si],bl
00008801  78B6              js 0x87b9
00008803  1129              adc [bx+di],bp
00008805  D80D              fmul dword [di]
00008807  DCE9              fsub to st1
00008809  7D04              jnl 0x880f
0000880B  41                inc cx
0000880C  36                ss
0000880D  62                db 0x62
0000880E  E228              loop 0x8838
00008810  D7                xlatb
00008811  E528              in ax,0x28
00008813  83AF31103C        sub word [bx+0x1031],byte +0x3c
00008818  70B9              jo 0x87d3
0000881A  6E                outsb
0000881B  FB                sti
0000881C  B862DC            mov ax,0xdc62
0000881F  7DFE              jnl 0x881f
00008821  1C66              sbb al,0x66
00008823  5D                pop bp
00008824  0D1A01            or ax,0x11a
00008827  6E                outsb
00008828  7328              jnc 0x8852
0000882A  8BEE              mov bp,si
0000882C  0BA15C01          or sp,[bx+di+0x15c]
00008830  E423              in al,0x23
00008832  BDC72A            mov bp,0x2ac7
00008835  CC                int3
00008836  00D0              add al,dl
00008838  16                push ss
00008839  2CD0              sub al,0xd0
0000883B  719F              jno 0x87dc
0000883D  2E6C              cs insb
0000883F  AF                scasw
00008840  120C              adc cl,[si]
00008842  8B951287          mov dx,[di-0x78ee]
00008846  B76D              mov bh,0x6d
00008848  BA4C0B            mov dx,0xb4c
0000884B  59                pop cx
0000884C  E3B0              jcxz 0x87fe
0000884E  103A              adc [bp+si],bh
00008850  663C8A            o32 cmp al,0x8a
00008853  3E24F2            ds and al,0xf2
00008856  112D              adc [di],bp
00008858  001C              add [si],bl
0000885A  300E36DD          xor [0xdd36],cl
0000885E  1131              adc [bx+di],si
00008860  97                xchg ax,di
00008861  5D                pop bp
00008862  7E24              jng 0x8888
00008864  126EFC            adc ch,[bp-0x4]
00008867  3A1B              cmp bl,[bp+di]
00008869  833EAF440C        cmp word [0x44af],byte +0xc
0000886E  9D                popf
0000886F  0D32FD            or ax,0xfd32
00008872  1AA3421B          sbb ah,[bp+di+0x1b42]
00008876  3B06BD0C          cmp ax,[0xcbd]
0000887A  7606              jna 0x8882
0000887C  A1AE04            mov ax,[0x4ae]
0000887F  0BB5A102          or si,[di+0x2a1]
00008883  2F                das
00008884  3A0A              cmp cl,[bp+si]
00008886  0106129F          add [0x9f12],ax
0000888A  B12F              mov cl,0x2f
0000888C  DA8B1608          fimul dword [bp+di+0x816]
00008890  17                pop ss
00008891  6406              fs push es
00008893  65B72B            gs mov bh,0x2b
00008896  364A              ss dec dx
00008898  A12EB9            mov ax,[0xb92e]
0000889B  5A                pop dx
0000889C  D9                db 0xd9
0000889D  49                dec cx
0000889E  D8A63603          fsub dword [bp+0x336]
000088A2  2C5D              sub al,0x5d
000088A4  2A7846            sub bh,[bx+si+0x46]
000088A7  6C                insb
000088A8  B6B7              mov dh,0xb7
000088AA  10B67510          adc [bp+0x1075],dh
000088AE  59                pop cx
000088AF  C007D2            rol byte [bx],byte 0xd2
000088B2  0F02C0            lar ax,ax
000088B5  37                aaa
000088B6  AB                stosw
000088B7  0E                push cs
000088B8  76A8              jna 0x8862
000088BA  044D              add al,0x4d
000088BC  352E45            xor ax,0x452e
000088BF  0300              add ax,[bx+si]
000088C1  E052              loopne 0x8915
000088C3  35E40E            xor ax,0xee4
000088C6  D6                salc
000088C7  2B4928            sub cx,[bx+di+0x28]
000088CA  EE                out dx,al
000088CB  3E100EEBE8        adc [ds:0xe8eb],cl
000088D0  7019              jo 0x88eb
000088D2  8F                db 0x8f
000088D3  B690              mov dh,0x90
000088D5  02A02369          add ah,[bx+si+0x6923]
000088D9  7548              jnz 0x8923
000088DB  1B6D54            sbb bp,[di+0x54]
000088DE  0CCE              or al,0xce
000088E0  8A25              mov ah,[di]
000088E2  010A              add [bp+si],cx
000088E4  B2D0              mov dl,0xd0
000088E6  0D1686            or ax,0x8616
000088E9  DD9E9D0B          fstp qword [bp+0xb9d]
000088ED  F6B001A2          div byte [bx+si-0x5dff]
000088F1  A102CB            mov ax,[0xcb02]
000088F4  A9ABBF            test ax,0xbfab
000088F7  01D9              add cx,bx
000088F9  A0A817            mov al,[0x17a8]
000088FC  3E35EF60          ds xor ax,0x60ef
00008900  42                inc dx
00008901  8520              test [bx+si],sp
00008903  AD                lodsw
00008904  3A46D7            cmp al,[bp-0x29]
00008907  7308              jnc 0x8911
00008909  4C                dec sp
0000890A  BC1527            mov sp,0x2715
0000890D  16                push ss
0000890E  98                cbw
0000890F  66E5ED            in eax,0xed
00008912  9B772A            wait ja 0x893f
00008915  D004              rol byte [si],1
00008917  1C33              sbb al,0x33
00008919  B441              mov ah,0x41
0000891B  50                push ax
0000891C  6F                outsw
0000891D  E9A001            jmp 0x8ac0
00008920  2D12DE            sub ax,0xde12
00008923  8528              test [bx+si],bp
00008925  C13B05            sar word [bp+di],byte 0x5
00008928  AD                lodsw
00008929  07                pop es
0000892A  B06E              mov al,0x6e
0000892C  AD                lodsw
0000892D  B90F40            mov cx,0x400f
00008930  79C2              jns 0x88f4
00008932  66263627          ss o32 daa
00008936  18A067EC          sbb [bx+si-0x1399],ah
0000893A  3834              cmp [si],dh
0000893C  7720              ja 0x895e
0000893E  626160            bound sp,[bx+di+0x60]
00008941  F2                repne
00008942  82                db 0x82
00008943  0F07              sysret
00008945  A0D1AA            mov al,[0xaad1]
00008948  0135              add [di],si
0000894A  D6                salc
0000894B  35BB37            xor ax,0x37bb
0000894E  BE0EA0            mov si,0xa00e
00008951  51                push cx
00008952  BFC0AF            mov di,0xafc0
00008955  06                push es
00008956  AC                lodsb
00008957  01BAB753          add [bp+si+0x53b7],di
0000895B  255C0F            and ax,0xf5c
0000895E  120EB509          adc cl,[0x9b5]
00008962  B614              mov dh,0x14
00008964  1E                push ds
00008965  1F                pop ds
00008966  C5532E            lds dx,[bp+di+0x2e]
00008969  00FC              add ah,bh
0000896B  F39A26E9D813      rep call 0x13d8:0xe926
00008971  53                push bx
00008972  5B                pop bx
00008973  7236              jc 0x89ab
00008975  E7A8              out 0xa8,ax
00008977  0AA6510A          or ah,[bp+0xa51]
0000897B  48                dec ax
0000897C  AB                stosw
0000897D  866F5A            xchg [bx+0x5a],ch
00008980  F8                clc
00008981  FD                std
00008982  027423            add dh,[si+0x23]
00008985  A1321D            mov ax,[0x1d32]
00008988  66AF              scasd
0000898A  DD                db 0xdd
0000898B  2BA8F301          sub bp,[bx+si+0x1f3]
0000898F  D1CC              ror sp,1
00008991  4A                dec dx
00008992  017F2B            add [bx+0x2b],di
00008995  085343            or [bp+di+0x43],dl
00008998  1470              adc al,0x70
0000899A  ED                in ax,dx
0000899B  BB95CA            mov bx,0xca95
0000899E  190ECA83          sbb [0x83ca],cx
000089A2  A4                movsb
000089A3  BD39C8            mov bp,0xc839
000089A6  7315              jnc 0x89bd
000089A8  D43F              aam 0x3f
000089AA  C007EA            rol byte [bx],byte 0xea
000089AD  D10B              ror word [bp+di],1
000089AF  28B1347C          sub [bx+di+0x7c34],dh
000089B3  1AFD              sbb bh,ch
000089B5  AD                lodsw
000089B6  3B02              cmp ax,[bp+si]
000089B8  85B41A26          test [si+0x261a],si
000089BC  EE                out dx,al
000089BD  0B75D0            or si,[di-0x30]
000089C0  B44A              mov ah,0x4a
000089C2  F245              repne inc bp
000089C4  867923            xchg [bx+di+0x23],bh
000089C7  59                pop cx
000089C8  F625              mul byte [di]
000089CA  01878806          add [bx+0x688],ax
000089CE  F6551F            not byte [di+0x1f]
000089D1  E921BF            jmp 0x48f5
000089D4  F21212            repne adc dl,[bp+si]
000089D7  014267            add [bp+si+0x67],ax
000089DA  B98E0B            mov cx,0xb8e
000089DD  8AD4              mov dl,ah
000089DF  99                cwd
000089E0  17                pop ss
000089E1  44                inc sp
000089E2  AF                scasw
000089E3  D3D9              rcr cx,cl
000089E5  B748              mov bh,0x48
000089E7  D6                salc
000089E8  878CB200          xchg [si+0xb2],cx
000089EC  A06C4D            mov al,[0x4d6c]
000089EF  07                pop es
000089F0  75FF              jnz 0x89f1
000089F2  4F                dec di
000089F3  23888B07          and cx,[bx+si+0x78b]
000089F7  886D2B            mov [di+0x2b],ch
000089FA  97                xchg ax,di
000089FB  1DB54A            sbb ax,0x4ab5
000089FE  73DD              jnc 0x89dd
00008A00  23E8              and bp,ax
00008A02  EC                in al,dx
00008A03  0F50BF9F4A        movmskps edi,xmm12
00008A08  4A                dec dx
00008A09  B94D00            mov cx,0x4d
00008A0C  45                inc bp
00008A0D  DB6CC5            fld tword [si-0x3b]
00008A10  0F05              syscall
00008A12  B1A3              mov cl,0xa3
00008A14  3C77              cmp al,0x77
00008A16  BEA33E            mov si,0x3ea3
00008A19  1B54D8            sbb dx,[si-0x28]
00008A1C  DE401B            fiadd word [bx+si+0x1b]
00008A1F  8BA69973          mov sp,[bp+0x7399]
00008A23  39ADF1F6          cmp [di-0x90f],bp
00008A27  8E00              mov es,[bx+si]
00008A29  3307              xor ax,[bx]
00008A2B  91                xchg ax,cx
00008A2C  094CDC            or [si-0x24],cx
00008A2F  8B53FA            mov dx,[bp+di-0x6]
00008A32  0E                push cs
00008A33  1D0D5A            sbb ax,0x5a0d
00008A36  043F              add al,0x3f
00008A38  0E                push cs
00008A39  034503            add ax,[di+0x3]
00008A3C  A24026            mov [0x2640],al
00008A3F  8BB629DE          mov si,[bp-0x21d7]
00008A43  2BD6              sub dx,si
00008A45  7302              jnc 0x8a49
00008A47  F7F8              idiv ax
00008A49  7513              jnz 0x8a5e
00008A4B  154C8B            adc ax,0x8b4c
00008A4E  085822            or [bx+si+0x22],bl
00008A51  C420              les sp,[bx+si]
00008A53  66C40A            les ecx,[bp+si]
00008A56  80BBA3FA03        cmp byte [bp+di-0x55d],0x3
00008A5B  000C              add [si],cl
00008A5D  EA855E102D        jmp 0x2d10:0x5e85
00008A62  2CC3              sub al,0xc3
00008A64  DC9C29DA          fcomp qword [si-0x25d7]
00008A68  4A                dec dx
00008A69  0BFD              or di,bp
00008A6B  C4BF3E51          les di,[bx+0x513e]
00008A6F  95                xchg ax,bp
00008A70  8C4FA6            mov [bx-0x5a],cs
00008A73  CC                int3
00008A74  87FE              xchg si,di
00008A76  2901              sub [bx+di],ax
00008A78  7AC0              jpe 0x8a3a
00008A7A  0314              add dx,[si]
00008A7C  44                inc sp
00008A7D  0DB838            or ax,0x38b8
00008A80  7FA5              jg 0x8a27
00008A82  39C6              cmp si,ax
00008A84  0FDB83626B        pand mm0,[bp+di+0x6b62]
00008A89  C6                db 0xc6
00008A8A  50                push ax
00008A8B  A24EA6            mov [0xa64e],al
00008A8E  A07572            mov al,[0x7275]
00008A91  E6AD              out 0xad,al
00008A93  E220              loop 0x8ab5
00008A95  F4                hlt
00008A96  64C6055A          mov byte [fs:di],0x5a
00008A9A  3A20              cmp ah,[bx+si]
00008A9C  12FC              adc bh,ah
00008A9E  E85007            call 0x91f1
00008AA1  61                popa
00008AA2  0472              add al,0x72
00008AA4  809F3AC026        sbb byte [bx-0x3fc6],0x26
00008AA9  2368D0            and bp,[bx+si-0x30]
00008AAC  6707              pop es
00008AAE  DE5AA5            ficomp word [bp+si-0x5b]
00008AB1  F1                int1
00008AB2  A3383A            mov [0x3a38],ax
00008AB5  D27D22            sar byte [di+0x22],cl
00008AB8  95                xchg ax,bp
00008AB9  C4                db 0xc4
00008ABA  F20E              repne push cs
00008ABC  96                xchg ax,si
00008ABD  7A7C              jpe 0x8b3b
00008ABF  BF0BFC            mov di,0xfc0b
00008AC2  7530              jnz 0x8af4
00008AC4  1B52EC            sbb dx,[bp+si-0x14]
00008AC7  350E2F            xor ax,0x2f0e
00008ACA  A4                movsb
00008ACB  AC                lodsb
00008ACC  0FA3862C11        bt [bp+0x112c],ax
00008AD1  1A0C              sbb cl,[si]
00008AD3  D01C              rcr byte [si],1
00008AD5  0574F2            add ax,0xf274
00008AD8  8532              test [bp+si],si
00008ADA  032EB4A0          add bp,[0xa0b4]
00008ADE  FE                db 0xfe
00008ADF  5F                pop di
00008AE0  D6                salc
00008AE1  2B81FEA9          sub ax,[bx+di-0x5602]
00008AE5  E210              loop 0x8af7
00008AE7  7214              jc 0x8afd
00008AE9  B7E1              mov bh,0xe1
00008AEB  FD                std
00008AEC  0B6B1F            or bp,[bp+di+0x1f]
00008AEF  337468            xor si,[si+0x68]
00008AF2  7FB8              jg 0x8aac
00008AF4  F8                clc
00008AF5  1C1A              sbb al,0x1a
00008AF7  3F                aas
00008AF8  0D118A            or ax,0x8a11
00008AFB  5F                pop di
00008AFC  2E0BDA            cs or bx,dx
00008AFF  3C1A              cmp al,0x1a
00008B01  59                pop cx
00008B02  885191            mov [bx+di-0x6f],dl
00008B05  1B1C              sbb bx,[si]
00008B07  C0002A            rol byte [bx+si],byte 0x2a
00008B0A  0801              or [bx+di],al
00008B0C  37                aaa
00008B0D  E330              jcxz 0x8b3f
00008B0F  3F                aas
00008B10  7532              jnz 0x8b44
00008B12  1B00              sbb ax,[bx+si]
00008B14  D6                salc
00008B15  F20E              repne push cs
00008B17  06                push es
00008B18  808B9242B3        or byte [bp+di+0x4292],0xb3
00008B1D  FE                db 0xfe
00008B1E  E602              out 0x2,al
00008B20  81C6C017          add si,0x17c0
00008B24  FE                db 0xfe
00008B25  5E                pop si
00008B26  E822F1            call 0x7c4b
00008B29  C4AC4A03          les bp,[si+0x34a]
00008B2D  E488              in al,0x88
00008B2F  52                push dx
00008B30  41                inc cx
00008B31  B98511            mov cx,0x1185
00008B34  BD92BA            mov bp,0xba92
00008B37  AC                lodsb
00008B38  10DC              adc ah,bl
00008B3A  83E853            sub ax,byte +0x53
00008B3D  0DA05C            or ax,0x5ca0
00008B40  CC                int3
00008B41  AC                lodsb
00008B42  10D6              adc dh,dl
00008B44  7213              jc 0x8b59
00008B46  37                aaa
00008B47  B38B              mov bl,0x8b
00008B49  210C              and [si],cx
00008B4B  FEC3              inc bl
00008B4D  8A4502            mov al,[di+0x2]
00008B50  84DD              test ch,bl
00008B52  B506              mov ch,0x6
00008B54  98                cbw
00008B55  1034              adc [si],dh
00008B57  8358486E          sbb word [bx+si+0x48],byte +0x6e
00008B5B  ED                in ax,dx
00008B5C  4D                dec bp
00008B5D  A1B1DF            mov ax,[0xdfb1]
00008B60  E8E7F4            call 0x804a
00008B63  48                dec ax
00008B64  156F8C            adc ax,0x8c6f
00008B67  3DA8BF            cmp ax,0xbfa8
00008B6A  F4                hlt
00008B6B  7421              jz 0x8b8e
00008B6D  3D29B7            cmp ax,0xb729
00008B70  94                xchg ax,sp
00008B71  1C94              sbb al,0x94
00008B73  0B1A              or bx,[bp+si]
00008B75  660F6C983DAE      punpcklqdq xmm3,[bx+si-0x51c3]
00008B7B  B6F7              mov dh,0xf7
00008B7D  46                inc si
00008B7E  0BEB              or bp,bx
00008B80  2606              es push es
00008B82  6E                outsb
00008B83  E30C              jcxz 0x8b91
00008B85  5B                pop bx
00008B86  7512              jnz 0x8b9a
00008B88  0D832D            or ax,0x2d83
00008B8B  053095            add ax,0x9530
00008B8E  96                xchg ax,si
00008B8F  44                inc sp
00008B90  68A635            push word 0x35a6
00008B93  A3CD19            mov [0x19cd],ax
00008B96  20ABFF91          and [bp+di-0x6e01],ch
00008B9A  77FF              ja 0x8b9b
00008B9C  06                push es
00008B9D  8C6CEA            mov [si-0x16],gs
00008BA0  FE                db 0xfe
00008BA1  A6                cmpsb
00008BA2  777B              ja 0x8c1f
00008BA4  F065A8D5          gs lock test al,0xd5
00008BA8  8B2EC2DE          mov bp,[0xdec2]
00008BAC  0FAA              rsm
00008BAE  50                push ax
00008BAF  44                inc sp
00008BB0  C86A1972          enter 0x196a,0x72
00008BB4  28831ED5          sub [bp+di-0x2ae2],al
00008BB8  1081F1F0          adc [bx+di-0xf0f],al
00008BBC  AE                scasb
00008BBD  0D5B9F            or ax,0x9f5b
00008BC0  0557C6            add ax,0xc657
00008BC3  D4E9              aam 0xe9
00008BC5  42                inc dx
00008BC6  F9                stc
00008BC7  DC6E22            fsubr qword [bp+0x22]
00008BCA  04FD              add al,0xfd
00008BCC  7AC2              jpe 0x8b90
00008BCE  BB6C05            mov bx,0x56c
00008BD1  711E              jno 0x8bf1
00008BD3  07                pop es
00008BD4  DE3D              fidivr word [di]
00008BD6  D27C34            sar byte [si+0x34],cl
00008BD9  2415              and al,0x15
00008BDB  706A              jo 0x8c47
00008BDD  16                push ss
00008BDE  23B58580          and si,[di-0x7f7b]
00008BE2  EF                out dx,ax
00008BE3  2932              sub [bp+si],si
00008BE5  8359DBE8          sbb word [bx+di-0x25],byte -0x18
00008BE9  28EB              sub bl,ch
00008BEB  92                xchg ax,dx
00008BEC  1C7A              sbb al,0x7a
00008BEE  1F                pop ds
00008BEF  29CB              sub bx,cx
00008BF1  97                xchg ax,di
00008BF2  9F                lahf
00008BF3  1239              adc bh,[bx+di]
00008BF5  E8C372            call 0xfebb
00008BF8  D23B              sar byte [bp+di],cl
00008BFA  50                push ax
00008BFB  50                push ax
00008BFC  1117              adc [bx],dx
00008BFE  7C30              jl 0x8c30
00008C00  317B53            xor [bp+di+0x53],di
00008C03  EF                out dx,ax
00008C04  8B067BE9          mov ax,[0xe97b]
00008C08  3E117EFC          adc [ds:bp-0x4],di
00008C0C  C6                db 0xc6
00008C0D  A0A20F            mov al,[0xfa2]
00008C10  36044A            ss add al,0x4a
00008C13  7E8D              jng 0x8ba2
00008C15  E8859F            call 0x2b9d
00008C18  83C198            add cx,byte -0x68
00008C1B  18CB              sbb bl,cl
00008C1D  B049              mov al,0x49
00008C1F  9A13DD56FF        call 0xff56:0xdd13
00008C24  C6                db 0xc6
00008C25  D006FF2D          rol byte [0x2dff],1
00008C29  94                xchg ax,sp
00008C2A  3F                aas
00008C2B  AD                lodsw
00008C2C  5A                pop dx
00008C2D  09A54C2A          or [di+0x2a4c],sp
00008C31  C4                db 0xc4
00008C32  EB0A              jmp short 0x8c3e
00008C34  05CBD6            add ax,0xd6cb
00008C37  9F                lahf
00008C38  91                xchg ax,cx
00008C39  A0C237            mov al,[0x37c2]
00008C3C  6307              arpl [bx],ax
00008C3E  68B6D7            push word 0xd7b6
00008C41  2E696A0433C9      imul bp,[cs:bp+si+0x4],word 0xc933
00008C47  6C                insb
00008C48  3EDEB359BD        fidiv word [ds:bp+di-0x42a7]
00008C4D  0FD8E3            psubusb mm4,mm3
00008C50  AB                stosw
00008C51  0059AF            add [bx+di-0x51],bl
00008C54  34AB              xor al,0xab
00008C56  121D              adc bl,[di]
00008C58  B14A              mov cl,0x4a
00008C5A  1B77D2            sbb si,[bx-0x2e]
00008C5D  D3E0              shl ax,cl
00008C5F  85B50610          test [di+0x1006],si
00008C63  B16C              mov cl,0x6c
00008C65  92                xchg ax,dx
00008C66  355A4B            xor ax,0x4b5a
00008C69  CA1809            retf 0x918
00008C6C  E2B6              loop 0x8c24
00008C6E  8EFD              mov segr7,bp
00008C70  0BCA              or cx,dx
00008C72  49                dec cx
00008C73  B6FC              mov dh,0xfc
00008C75  A0D754            mov al,[0x54d7]
00008C78  F783D278E97B      test word [bp+di+0x78d2],0x7be9
00008C7E  FD                std
00008C7F  DC963B1E          fcom qword [bp+0x1e3b]
00008C83  2CDE              sub al,0xde
00008C85  7D4B              jnl 0x8cd2
00008C87  41                inc cx
00008C88  00568D            add [bp-0x73],dl
00008C8B  DE07              fiadd word [bx]
00008C8D  51                push cx
00008C8E  0D2E83            or ax,0x832e
00008C91  EE                out dx,al
00008C92  98                cbw
00008C93  7E02              jng 0x8c97
00008C95  08E8              or al,ch
00008C97  FA                cli
00008C98  17                pop ss
00008C99  67CC              a32 int3
00008C9B  34BB              xor al,0xbb
00008C9D  56                push si
00008C9E  36FA              ss cli
00008CA0  98                cbw
00008CA1  E8310C            call 0x98d5
00008CA4  50                push ax
00008CA5  7040              jo 0x8ce7
00008CA7  B0C7              mov al,0xc7
00008CA9  1F                pop ds
00008CAA  41                inc cx
00008CAB  BCE820            mov sp,0x20e8
00008CAE  3C4E              cmp al,0x4e
00008CB0  4B                dec bx
00008CB1  0FEB8E2531        por mm1,[bp+0x3125]
00008CB6  8E163DC6          mov ss,[0xc63d]
00008CBA  12EB              adc ch,bl
00008CBC  50                push ax
00008CBD  DB0B              fisttp dword [bp+di]
00008CBF  2ECB              cs retf
00008CC1  37                aaa
00008CC2  02EB              add ch,bl
00008CC4  2478              and al,0x78
00008CC6  B0DB              mov al,0xdb
00008CC8  B70E              mov bh,0xe
00008CCA  0F64BB6089        pcmpgtb mm7,[bp+di-0x76a0]
00008CCF  D7                xlatb
00008CD0  D1D2              rcl dx,1
00008CD2  5F                pop di
00008CD3  B920AA            mov cx,0xaa20
00008CD6  3BDB              cmp bx,bx
00008CD8  143C              adc al,0x3c
00008CDA  7102              jno 0x8cde
00008CDC  41                inc cx
00008CDD  7844              js 0x8d23
00008CDF  AB                stosw
00008CE0  C9                leave
00008CE1  3AD7              cmp dl,bh
00008CE3  AD                lodsw
00008CE4  E8880A            call 0x976f
00008CE7  291F              sub [bx],bx
00008CE9  D02E98FD          shr byte [0xfd98],1
00008CED  0AA2386F          or ah,[bp+si+0x6f38]
00008CF1  7603              jna 0x8cf6
00008CF3  2D75F6            sub ax,0xf675
00008CF6  1380FC8D          adc ax,[bx+si-0x7204]
00008CFA  5C                pop sp
00008CFB  01EB              add bx,bp
00008CFD  12B1A156          adc dh,[bx+di+0x56a1]
00008D01  59                pop cx
00008D02  88A3B6F7          mov [bp+di-0x84a],ah
00008D06  3809              cmp [bx+di],cl
00008D08  CB                retf
00008D09  60                pusha
00008D0A  C0FCC6            sar ah,byte 0xc6
00008D0D  F1                int1
00008D0E  29D8              sub ax,bx
00008D10  17                pop ss
00008D11  98                cbw
00008D12  DA25              fisub dword [di]
00008D14  58                pop ax
00008D15  D7                xlatb
00008D16  7841              js 0x8d59
00008D18  7E10              jng 0x8d2a
00008D1A  EB18              jmp short 0x8d34
00008D1C  687102            push word 0x271
00008D1F  AB                stosw
00008D20  D3                db 0xd3
00008D21  700B              jo 0x8d2e
00008D23  61                popa
00008D24  35DA0F            xor ax,0xfda
00008D27  4D                dec bp
00008D28  C6                db 0xc6
00008D29  FE02              inc byte [bp+si]
00008D2B  25EDCE            and ax,0xceed
00008D2E  2D12DB            sub ax,0xdb12
00008D31  01C1              add cx,ax
00008D33  D3D1              rcl cx,cl
00008D35  44                inc sp
00008D36  0E                push cs
00008D37  72B5              jc 0x8cee
00008D39  D436              aam 0x36
00008D3B  99                cwd
00008D3C  E98422            jmp 0xafc3
00008D3F  0521F5            add ax,0xf521
00008D42  D3E8              shr ax,cl
00008D44  95                xchg ax,bp
00008D45  0A12              or dl,[bp+si]
00008D47  43                inc bx
00008D48  E8A40A            call 0x97ef
00008D4B  AB                stosw
00008D4C  44                inc sp
00008D4D  65025ABE          add bl,[gs:bp+si-0x42]
00008D51  26694030488B      imul ax,[es:bx+si+0x30],word 0x8b48
00008D57  52                push dx
00008D58  80A2DAD196        and byte [bp+si-0x2e26],0x96
00008D5D  BD98FF            mov bp,0xff98
00008D60  6811B9            push word 0xb911
00008D63  B5F4              mov ch,0xf4
00008D65  16                push ss
00008D66  85D2              test dx,dx
00008D68  A31AEC            mov [0xec1a],ax
00008D6B  BB1126            mov bx,0x2611
00008D6E  6746              a32 inc si
00008D70  803061            xor byte [bx+si],0x61
00008D73  5F                pop di
00008D74  B1E4              mov cl,0xe4
00008D76  7D47              jnl 0x8dbf
00008D78  AE                scasb
00008D79  740E              jz 0x8d89
00008D7B  39D8              cmp ax,bx
00008D7D  42                inc dx
00008D7E  DACC              fcmove st4
00008D80  122A              adc ch,[bp+si]
00008D82  17                pop ss
00008D83  2B1688C0          sub dx,[0xc088]
00008D87  5E                pop si
00008D88  E70C              out 0xc,ax
00008D8A  42                inc dx
00008D8B  2D688E            sub ax,0x8e68
00008D8E  C6                db 0xc6
00008D8F  2213              and dl,[bp+di]
00008D91  EBCB              jmp short 0x8d5e
00008D93  E64F              out 0x4f,al
00008D95  D3ED              shr bp,cl
00008D97  C9                leave
00008D98  EAB3EE5648        jmp 0x4856:0xeeb3
00008D9D  FA                cli
00008D9E  2EE86860          cs call 0xee0a
00008DA2  FA                cli
00008DA3  A22922            mov [0x2229],al
00008DA6  DB                db 0xdb
00008DA7  7441              jz 0x8dea
00008DA9  53                push bx
00008DAA  51                push cx
00008DAB  47                inc di
00008DAC  FE                db 0xfe
00008DAD  6F                outsw
00008DAE  F0                lock
00008DAF  FE                db 0xfe
00008DB0  10DC              adc ah,bl
00008DB2  180F              sbb [bx],cl
00008DB4  61                popa
00008DB5  025B43            add bl,[bp+di+0x43]
00008DB8  E20D              loop 0x8dc7
00008DBA  156AD2            adc ax,0xd26a
00008DBD  FD                std
00008DBE  D6                salc
00008DBF  6846B3            push word 0xb346
00008DC2  856E01            test [bp+0x1],bp
00008DC5  3310              xor dx,[bx+si]
00008DC7  52                push dx
00008DC8  47                inc di
00008DC9  80C3EB            add bl,0xeb
00008DCC  7065              jo 0x8e33
00008DCE  0FDF708A          pandn mm6,[bx+si-0x76]
00008DD2  25D9B7            and ax,0xb7d9
00008DD5  0319              add bx,[bx+di]
00008DD7  BB404B            mov bx,0x4b40
00008DDA  7160              jno 0x8e3c
00008DDC  01C0              add ax,ax
00008DDE  9D                popf
00008DDF  08DD              or ch,bl
00008DE1  25CE0E            and ax,0xece
00008DE4  87D6              xchg si,dx
00008DE6  96                xchg ax,si
00008DE7  9AFE150C6D        call 0x6d0c:0x15fe
00008DEC  51                push cx
00008DED  DBDB              fcmovnu st3
00008DEF  7F03              jg 0x8df4
00008DF1  2EAD              cs lodsw
00008DF3  A20A0B            mov [0xb0a],al
00008DF6  88A10A6D          mov [bx+di+0x6d0a],ah
00008DFA  ED                in ax,dx
00008DFB  E5D8              in ax,0xd8
00008DFD  FFF5              push bp
00008DFF  0901              or [bx+di],ax
00008E01  00E0              add al,ah
00008E03  A2D871            mov [0x71d8],al
00008E06  09707A            or [bx+si+0x7a],si
00008E09  54                push sp
00008E0A  DFB6430A          fbstp tword [bp+0xa43]
00008E0E  3C41              cmp al,0x41
00008E10  7C44              jl 0x8e56
00008E12  2CA2              sub al,0xa2
00008E14  7E44              jng 0x8e5a
00008E16  D8E5              fsub st5
00008E18  C707B99E          mov word [bx],0x9eb9
00008E1C  B140              mov cl,0x40
00008E1E  362E102C          adc [cs:si],ch
00008E22  40                inc ax
00008E23  DF1C              fistp word [si]
00008E25  D839              fdivr dword [bx+di]
00008E27  F37EEE            rep jng 0x8e18
00008E2A  03A2A841          add sp,[bp+si+0x41a8]
00008E2E  A8A9              test al,0xa9
00008E30  8EFF              mov segr7,di
00008E32  6C                insb
00008E33  42                inc dx
00008E34  C3                ret
00008E35  D3A9F451          shr word [bx+di+0x51f4],cl
00008E39  30C9              xor cl,cl
00008E3B  C1                db 0xc1
00008E3C  F1                int1
00008E3D  A877              test al,0x77
00008E3F  FE                db 0xfe
00008E40  B8056E            mov ax,0x6e05
00008E43  0C0A              or al,0xa
00008E45  0BF0              or si,ax
00008E47  52                push dx
00008E48  686A08            push word 0x86a
00008E4B  0B36DB82          or si,[0x82db]
00008E4F  5F                pop di
00008E50  BA2CB1            mov dx,0xb12c
00008E53  8DA6DBC2          lea sp,[bp-0x3d25]
00008E57  0311              add dx,[bx+di]
00008E59  6E                outsb
00008E5A  2F                das
00008E5B  04E8              add al,0xe8
00008E5D  C9                leave
00008E5E  3C08              cmp al,0x8
00008E60  4E                dec si
00008E61  7DEA              jnl 0x8e4d
00008E63  1404              adc al,0x4
00008E65  A25BEB            mov [0xeb5b],al
00008E68  07                pop es
00008E69  7A60              jpe 0x8ecb
00008E6B  C3                ret
00008E6C  DB                db 0xdb
00008E6D  662C25            o32 sub al,0x25
00008E70  55                push bp
00008E71  A1CEED            mov ax,[0xedce]
00008E74  70C8              jo 0x8e3e
00008E76  A16B2C            mov ax,[0x2c6b]
00008E79  1F                pop ds
00008E7A  A01F93            mov al,[0x931f]
00008E7D  D182894E          rol word [bp+si+0x4e89],1
00008E81  1BC7              sbb ax,di
00008E83  0E                push cs
00008E84  0A1B              or bl,[bp+di]
00008E86  0E                push cs
00008E87  845644            test [bp+0x44],dl
00008E8A  A8EB              test al,0xeb
00008E8C  9D                popf
00008E8D  A32244            mov [0x4422],ax
00008E90  87CA              xchg dx,cx
00008E92  42                inc dx
00008E93  92                xchg ax,dx
00008E94  1240CF            adc al,[bx+si-0x31]
00008E97  51                push cx
00008E98  82                db 0x82
00008E99  91                xchg ax,cx
00008E9A  1E                push ds
00008E9B  E589              in ax,0x89
00008E9D  096867            or [bx+si+0x67],bp
00008EA0  815922D9A7        sbb word [bx+di+0x22],0xa7d9
00008EA5  9E                sahf
00008EA6  DF21              fbld tword [bx+di]
00008EA8  FC                cld
00008EA9  A6                cmpsb
00008EAA  FD                std
00008EAB  7868              js 0x8f15
00008EAD  07                pop es
00008EAE  5D                pop bp
00008EAF  9A9EEC0EF4        call 0xf40e:0xec9e
00008EB4  1C2C              sbb al,0x2c
00008EB6  3600810875        add [ss:bx+di+0x7508],al
00008EBB  C3                ret
00008EBC  635068            arpl [bx+si+0x68],dx
00008EBF  40                inc ax
00008EC0  DA3A              fidivr dword [bp+si]
00008EC2  0824              or [si],ah
00008EC4  15450C            adc ax,0xc45
00008EC7  F60258            test byte [bp+si],0x58
00008ECA  5D                pop bp
00008ECB  855869            test [bx+si+0x69],bx
00008ECE  43                inc bx
00008ECF  20EF              and bh,ch
00008ED1  5A                pop dx
00008ED2  2809              sub [bx+di],cl
00008ED4  3C46              cmp al,0x46
00008ED6  010B              add [bp+di],cx
00008ED8  C6                db 0xc6
00008ED9  2F                das
00008EDA  4D                dec bp
00008EDB  0424              add al,0x24
00008EDD  C23C4B            ret 0x4b3c
00008EE0  F9                stc
00008EE1  A2DFFE            mov [0xfedf],al
00008EE4  3C45              cmp al,0x45
00008EE6  7427              jz 0x8f0f
00008EE8  D3E9              shr cx,cl
00008EEA  7169              jno 0x8f55
00008EEC  5A                pop dx
00008EED  B55E              mov ch,0x5e
00008EEF  DD27              frstor [bx]
00008EF1  6D                insw
00008EF2  0009              add [bx+di],cl
00008EF4  67B66D            mov dh,0x6d
00008EF7  2A067CA4          sub al,[0xa47c]
00008EFB  60                pusha
00008EFC  D877EB            fdiv dword [bx-0x15]
00008EFF  59                pop cx
00008F00  06                push es
00008F01  B60D              mov dh,0xd
00008F03  52                push dx
00008F04  0439              add al,0x39
00008F06  6D                insw
00008F07  43                inc bx
00008F08  E956EA            jmp 0x7961
00008F0B  D801              fadd dword [bx+di]
00008F0D  4D                dec bp
00008F0E  E1CB              loope 0x8edb
00008F10  0808              or [bx+si],cl
00008F12  DB0F              fisttp dword [bx]
00008F14  2D6FD4            sub ax,0xd46f
00008F17  4B                dec bx
00008F18  EB34              jmp short 0x8f4e
00008F1A  0E                push cs
00008F1B  FD                std
00008F1C  8AB56846          mov dh,[di+0x4668]
00008F20  87C1              xchg cx,ax
00008F22  4B                dec bx
00008F23  27                daa
00008F24  C008A1            ror byte [bx+si],byte 0xa1
00008F27  C7                db 0xc7
00008F28  2D941B            sub ax,0x1b94
00008F2B  2619D1            es sbb cx,dx
00008F2E  3D30B5            cmp ax,0xb530
00008F31  A4                movsb
00008F32  0FBC13            bsf dx,[bp+di]
00008F35  047F              add al,0x7f
00008F37  0A4DBE            or cl,[di-0x42]
00008F3A  24DA              and al,0xda
00008F3C  F0A3150C          lock mov [0xc15],ax
00008F40  65742B            gs jz 0x8f6e
00008F43  06                push es
00008F44  16                push ss
00008F45  49                dec cx
00008F46  E1E9              loope 0x8f31
00008F48  52                push dx
00008F49  82                db 0x82
00008F4A  9D                popf
00008F4B  7BE9              jpo 0x8f36
00008F4D  E1B6              loope 0x8f05
00008F4F  F5                cmc
00008F50  53                push bx
00008F51  F6                db 0xf6
00008F52  0E                push cs
00008F53  9F                lahf
00008F54  E144              loope 0x8f9a
00008F56  D3CF              ror di,cl
00008F58  2ED1A2F82B        shl word [cs:bp+si+0x2bf8],1
00008F5D  A5                movsw
00008F5E  07                pop es
00008F5F  4F                dec di
00008F60  61                popa
00008F61  0D407E            or ax,0x7e40
00008F64  1E                push ds
00008F65  80FCF8            cmp ah,0xf8
00008F68  18A3B5E5          sbb [bp+di-0x1a4b],ah
00008F6C  B602              mov dh,0x2
00008F6E  3A99A18F          cmp bl,[bx+di-0x705f]
00008F72  AD                lodsw
00008F73  A00475            mov al,[0x7504]
00008F76  0E                push cs
00008F77  C9                leave
00008F78  018097C6          add [bx+si-0x3969],ax
00008F7C  BBF4C6            mov bx,0xc6f4
00008F7F  B952E5            mov cx,0xe552
00008F82  BE808E            mov si,0x8e80
00008F85  E9A4E3            jmp 0x732c
00008F88  E84DFC            call 0x8bd8
00008F8B  94                xchg ax,sp
00008F8C  C28CED            ret 0xed8c
00008F8F  E85B49            call 0xd8ed
00008F92  A6                cmpsb
00008F93  C7                db 0xc7
00008F94  4E                dec si
00008F95  D50C              aad 0xc
00008F97  FF5331            call [bp+di+0x31]
00008F9A  E23D              loop 0x8fd9
00008F9C  2CA1              sub al,0xa1
00008F9E  E3DF              jcxz 0x8f7f
00008FA0  54                push sp
00008FA1  2B4034            sub ax,[bx+si+0x34]
00008FA4  D569              aad 0x69
00008FA6  05ADDE            add ax,0xdead
00008FA9  15EE66            adc ax,0x66ee
00008FAC  FE                db 0xfe
00008FAD  FEC1              inc cl
00008FAF  03EB              add bp,bx
00008FB1  767C              jna 0x902f
00008FB3  17                pop ss
00008FB4  2B04              sub ax,[si]
00008FB6  8096417E26        adc byte [bp+0x7e41],0x26
00008FBB  C2F7FE            ret 0xfef7
00008FBE  4A                dec dx
00008FBF  30D2              xor dl,dl
00008FC1  3800              cmp [bx+si],al
00008FC3  5C                pop sp
00008FC4  D4D0              aam 0xd0
00008FC6  740D              jz 0x8fd5
00008FC8  41                inc cx
00008FC9  FC                cld
00008FCA  351ADB            xor ax,0xdb1a
00008FCD  0F3D              cpu_read
00008FCF  AC                lodsb
00008FD0  DA6512            fisub dword [di+0x12]
00008FD3  D201              rol byte [bx+di],cl
00008FD5  7C40              jl 0x9017
00008FD7  DB05              fild dword [di]
00008FD9  0408              add al,0x8
00008FDB  7F11              jg 0x8fee
00008FDD  DE01              fiadd word [bx+di]
00008FDF  7EEB              jng 0x8fcc
00008FE1  0B6873            or bp,[bx+si+0x73]
00008FE4  45                inc bp
00008FE5  7375              jnc 0x905c
00008FE7  13D1              adc dx,cx
00008FE9  16                push ss
00008FEA  4D                dec bp
00008FEB  6B0710            imul ax,[bx],byte +0x10
00008FEE  5D                pop bp
00008FEF  7E65              jng 0x9056
00008FF1  50                push ax
00008FF2  3ABFAB44          cmp bh,[bx+0x44ab]
00008FF6  82                db 0x82
00008FF7  DDC0              ffree st0
00008FF9  EA7665B9F8        jmp 0xf8b9:0x6576
00008FFE  A26908            mov [0x869],al
00009001  2CC3              sub al,0xc3
00009003  E2F1              loop 0x8ff6
00009005  BFA008            mov di,0x8a0
00009008  32A228D8          xor ah,[bp+si-0x27d8]
0000900C  3EFA              ds cli
0000900E  0A9E9557          or bl,[bp+0x5795]
00009012  16                push ss
00009013  E066              loopne 0x907b
00009015  22985344          and bl,[bx+si+0x4453]
00009019  F08E25            lock mov fs,[di]
0000901C  6E                outsb
0000901D  0FD200            psrld mm0,[bx+si]
00009020  22E1              and ah,cl
00009022  80BA6EA40C        cmp byte [bp+si-0x5b92],0xc
00009027  A04D3A            mov al,[0x3a4d]
0000902A  51                push cx
0000902B  BD4157            mov bp,0x5741
0000902E  68ADB3            push word 0xb3ad
00009031  680C57            push word 0x570c
00009034  0457              add al,0x57
00009036  7558              jnz 0x9090
00009038  02507E            add dl,[bx+si+0x7e]
0000903B  A26A17            mov [0x176a],al
0000903E  97                xchg ax,di
0000903F  02EA              add ch,dl
00009041  3DDA17            cmp ax,0x17da
00009044  00A6DA1D          add [bp+0x1dda],ah
00009048  BB174F            mov bx,0x4f17
0000904B  3302              xor ax,[bp+si]
0000904D  7E14              jng 0x9063
0000904F  68CD35            push word 0x35cd
00009052  4A                dec dx
00009053  BB290E            mov bx,0xe29
00009056  5D                pop bp
00009057  E4A2              in al,0xa2
00009059  0925              or [di],sp
0000905B  79DB              jns 0x9038
0000905D  68D618            push word 0x18d6
00009060  1AD3              sbb dl,bl
00009062  0256A3            add dl,[bp-0x5d]
00009065  78E7              js 0x904e
00009067  E827EA            call 0x7a91
0000906A  0890B9E0          or [bx+si-0x1f47],dl
0000906E  E55C              in ax,0x5c
00009070  3D981C            cmp ax,0x1c98
00009073  42                inc dx
00009074  0AE2              or ah,dl
00009076  03EA              add bp,dx
00009078  2E3582D7          cs xor ax,0xd782
0000907C  8B656D            mov sp,[di+0x6d]
0000907F  3E0F4BD7          ds cmovpo dx,di
00009083  EA0447E836        jmp 0x36e8:0x4704
00009088  5A                pop dx
00009089  EC                in al,dx
0000908A  5C                pop sp
0000908B  0E                push cs
0000908C  E80B52            call 0xe29a
0000908F  3D55B6            cmp ax,0xb655
00009092  90                nop
00009093  BC8EF8            mov sp,0xf88e
00009096  EC                in al,dx
00009097  0C75              or al,0x75
00009099  B629              mov dh,0x29
0000909B  CB                retf
0000909C  6D                insw
0000909D  3B911B36          cmp dx,[bx+di+0x361b]
000090A1  C505              lds ax,[di]
000090A3  1CEB              sbb al,0xeb
000090A5  D809              fmul dword [bx+di]
000090A7  CE                into
000090A8  D6                salc
000090A9  7617              jna 0x90c2
000090AB  C0CED7            ror dh,byte 0xd7
000090AE  D2                db 0xd2
000090AF  B530              mov ch,0x30
000090B1  BB5CF6            mov bx,0xf65c
000090B4  E8C9CA            call 0x5b80
000090B7  E93788            jmp 0x18f1
000090BA  136F68            adc bp,[bx+0x68]
000090BD  9A5ECCA4E9        call 0xe9a4:0xcc5e
000090C2  0ADD              or bl,ch
000090C4  39FF              cmp di,di
000090C6  A1B40E            mov ax,[0xeb4]
000090C9  3D125B            cmp ax,0x5b12
000090CC  E287              loop 0x9055
000090CE  6C                insb
000090CF  E166              loope 0x9137
000090D1  2DA503            sub ax,0x3a5
000090D4  FA                cli
000090D5  20581C            and [bx+si+0x1c],bl
000090D8  B788              mov bh,0x88
000090DA  84E9              test cl,ch
000090DC  DB39              fstp tword [bx+di]
000090DE  F01E              lock push ds
000090E0  57                push di
000090E1  BEFF7F            mov si,0x7fff
000090E4  9A685FDB03        call 0x3db:0x5f68
000090E9  FE                db 0xfe
000090EA  1E                push ds
000090EB  B683              mov dh,0x83
000090ED  BC1CC1            mov sp,0xc11c
000090F0  06                push es
000090F1  0DF08B            or ax,0x8bf0
000090F4  E8845A            call 0xeb7b
000090F7  1CAB              sbb al,0xab
000090F9  EABE8C4201        jmp 0x142:0x8cbe
000090FE  3D07DE            cmp ax,0xde07
00009101  06                push es
00009102  8F                db 0x8f
00009103  3B01              cmp ax,[bx+di]
00009105  2A7B48            sub bh,[bp+di+0x48]
00009108  3475              xor al,0x75
0000910A  3DB45C            cmp ax,0x5cb4
0000910D  4B                dec bx
0000910E  AC                lodsb
0000910F  53                push bx
00009110  88E9              mov cl,ch
00009112  AC                lodsb
00009113  0391AFC1          add dx,[bx+di-0x3e51]
00009117  78FC              js 0x9115
00009119  4E                dec si
0000911A  1B6A0A            sbb bp,[bp+si+0xa]
0000911D  E82BB3            call 0x444b
00009120  0A5EFD            or bl,[bp-0x3]
00009123  0E                push cs
00009124  055176            add ax,0x7651
00009127  45                inc bp
00009128  058214            add ax,0x1482
0000912B  333617F6          xor si,[0xf617]
0000912F  5B                pop bx
00009130  6B1A5F            imul bx,[bp+si],byte +0x5f
00009133  5B                pop bx
00009134  1004              adc [si],al
00009136  6C                insb
00009137  1DDFFD            sbb ax,0xfddf
0000913A  689602            push word 0x296
0000913D  D317              rcl word [bx],cl
0000913F  DE37              fidiv word [bx]
00009141  10CE              adc dh,cl
00009143  FE                db 0xfe
00009144  63981B12          arpl [bx+si+0x121b],bx
00009148  99                cwd
00009149  CA56D5            retf 0xd556
0000914C  006B03            add [bp+di+0x3],ch
0000914F  06                push es
00009150  5B                pop bx
00009151  14B9              adc al,0xb9
00009153  B3FE              mov bl,0xfe
00009155  93                xchg ax,bx
00009156  7233              jc 0x918b
00009158  5D                pop bp
00009159  C7                db 0xc7
0000915A  3BA1A11D          cmp sp,[bx+di+0x1da1]
0000915E  0865EE            or [di-0x12],ah
00009161  F9                stc
00009162  B100              mov cl,0x0
00009164  A15A1B            mov ax,[0x1b5a]
00009167  64F034A8          fs lock xor al,0xa8
0000916B  7D44              jnl 0x91b1
0000916D  1237              adc dh,[bx]
0000916F  27                daa
00009170  26A3F4B6          mov [es:0xb6f4],ax
00009174  1506F0            adc ax,0xf006
00009177  5E                pop si
00009178  F615              not byte [di]
0000917A  A1DF3F            mov ax,[0x3fdf]
0000917D  3D1600            cmp ax,0x16
00009180  725B              jc 0x91dd
00009182  09162B0A          or [0xa2b],dx
00009186  58                pop ax
00009187  46                inc si
00009188  B0D1              mov al,0xd1
0000918A  52                push dx
0000918B  32FB              xor bh,bl
0000918D  BA1A16            mov dx,0x161a
00009190  BE317F            mov si,0x7f31
00009193  EB17              jmp short 0x91ac
00009195  6BD80A            imul bx,ax,byte +0xa
00009198  6BF4B7            imul si,sp,byte -0x49
0000919B  8A02              mov al,[bp+si]
0000919D  052751            add ax,0x5127
000091A0  8BC0              mov ax,ax
000091A2  94                xchg ax,sp
000091A3  014B94            add [bp+di-0x6c],cx
000091A6  B4FE              mov ah,0xfe
000091A8  031689FB          add dx,[0xfb89]
000091AC  C1E303            shl bx,byte 0x3
000091AF  B772              mov bh,0x72
000091B1  40                inc ax
000091B2  40                inc ax
000091B3  DB83BF30          fild dword [bp+di+0x30bf]
000091B7  07                pop es
000091B8  C47536            les si,[di+0x36]
000091BB  AD                lodsw
000091BC  39406D            cmp [bx+si+0x6d],ax
000091BF  35120C            xor ax,0xc12
000091C2  4E                dec si
000091C3  DB80A379          fild dword [bx+si+0x79a3]
000091C7  7B56              jpo 0x921f
000091C9  52                push dx
000091CA  1E                push ds
000091CB  A7                cmpsw
000091CC  96                xchg ax,si
000091CD  A3FDEB            mov [0xebfd],ax
000091D0  27                daa
000091D1  56                push si
000091D2  50                push ax
000091D3  1E                push ds
000091D4  86B1AD81          xchg [bx+di-0x7e53],dh
000091D8  7370              jnc 0x924a
000091DA  1F                pop ds
000091DB  98                cbw
000091DC  1C3C              sbb al,0x3c
000091DE  02EB              add ch,bl
000091E0  0A80FE19          or al,[bx+si+0x19fe]
000091E4  5A                pop dx
000091E5  47                inc di
000091E6  E999FE            jmp 0x9082
000091E9  0CBF              or al,0xbf
000091EB  76EB              jna 0x91d8
000091ED  100A              adc [bp+si],cl
000091EF  DD0EEAD0          fisttp qword [0xd0ea]
000091F3  C6                db 0xc6
000091F4  68ED53            push word 0x53ed
000091F7  E6B8              out 0xb8,al
000091F9  1077F6            adc [bx-0xa],dh
000091FC  E8F1E7            call 0x79f0
000091FF  1CD3              sbb al,0xd3
00009201  A968C1            test ax,0xc168
00009204  96                xchg ax,si
00009205  F4                hlt
00009206  B108              mov cl,0x8
00009208  0A9C9F58          or bl,[si+0x589f]
0000920C  F4                hlt
0000920D  F8                clc
0000920E  48                dec ax
0000920F  AA                stosb
00009210  FA                cli
00009211  52                push dx
00009212  E80204            call 0x9617
00009215  CF                iret
00009216  7E2C              jng 0x9244
00009218  7597              jnz 0x91b1
0000921A  35F503            xor ax,0x3f5
0000921D  60                pusha
0000921E  0C89              or al,0x89
00009220  6B535BD9          imul dx,[bp+di+0x5b],byte -0x27
00009224  CF                iret
00009225  24A2              and al,0xa2
00009227  3A9BDBC3          cmp bl,[bp+di-0x3c25]
0000922B  19C4              sbb sp,ax
0000922D  750E              jnz 0x923d
0000922F  CB                retf
00009230  1BCD              sbb cx,bp
00009232  9D                popf
00009233  132C              adc bp,[si]
00009235  DA                db 0xda
00009236  F9                stc
00009237  BF07A0            mov di,0xa007
0000923A  D541              aad 0x41
0000923C  15DCEC            adc ax,0xecdc
0000923F  F8                clc
00009240  E8EAFB            call 0x8e2d
00009243  9C                pushf
00009244  F5                cmc
00009245  18BD0A02          sbb [di+0x20a],bh
00009249  E99465            jmp 0xf7e0
0000924C  15DC89            adc ax,0x89dc
0000924F  45                inc bp
00009250  BE11AA            mov si,0xaa11
00009253  7C93              jl 0x91e8
00009255  0381F26E          add ax,[bx+di+0x6ef2]
00009259  F8                clc
0000925A  8BD5              mov dx,bp
0000925C  A3AB4A            mov [0x4aab],ax
0000925F  C55A1C            lds bx,[bp+si+0x1c]
00009262  37                aaa
00009263  F727              mul word [bx]
00009265  A16A09            mov ax,[0x96a]
00009268  6AB5              push byte -0x4b
0000926A  73E6              jnc 0x9252
0000926C  7F08              jg 0x9276
0000926E  A816              test al,0x16
00009270  0D0B96            or ax,0x960b
00009273  9F                lahf
00009274  02B524ED          add dh,[di-0x12dc]
00009278  0C07              or al,0x7
0000927A  7E21              jng 0x929d
0000927C  40                inc ax
0000927D  7E06              jng 0x9285
0000927F  4D                dec bp
00009280  7006              jo 0x9288
00009282  3605AB59          ss add ax,0x59ab
00009286  C9                leave
00009287  AB                stosw
00009288  9B                wait
00009289  82                db 0x82
0000928A  A5                movsw
0000928B  AB                stosw
0000928C  6E                outsb
0000928D  0806005B          or [0x5b00],al
00009291  AE                scasb
00009292  45                inc bp
00009293  5B                pop bx
00009294  E006              loopne 0x929c
00009296  F6A4019C          mul byte [si-0x63ff]
0000929A  1C05              sbb al,0x5
0000929C  FD                std
0000929D  A6                cmpsb
0000929E  01DF              add di,bx
000092A0  1CBA              sbb al,0xba
000092A2  BC08E8            mov sp,0xe808
000092A5  8AF8              mov bh,al
000092A7  53                push bx
000092A8  B725              mov bh,0x25
000092AA  8F                db 0x8f
000092AB  ED                in ax,dx
000092AC  3A59A1            cmp bl,[bx+di-0x5f]
000092AF  06                push es
000092B0  FD                std
000092B1  BA1C09            mov dx,0x91c
000092B4  E82004            call 0x96d7
000092B7  F02800            lock sub [bx+si],al
000092BA  23B06DF0          and si,[bx+si-0xf93]
000092BE  F8                clc
000092BF  BA1F09            mov dx,0x91f
000092C2  38B3DA3C          cmp [bp+di+0x3cda],dh
000092C6  847D98            test [di-0x68],bh
000092C9  BAD903            mov dx,0x3d9
000092CC  65E037            gs loopne 0x9306
000092CF  032ECD16          add bp,[0x16cd]
000092D3  4A                dec dx
000092D4  83D765            adc di,byte +0x65
000092D7  40                inc ax
000092D8  BFEA28            mov di,0x28ea
000092DB  44                inc sp
000092DC  F8                clc
000092DD  F66580            mul byte [di-0x80]
000092E0  27                daa
000092E1  DF2C              fild qword [si]
000092E3  0CEF              or al,0xef
000092E5  040D              add al,0xd
000092E7  A5                movsw
000092E8  046E              add al,0x6e
000092EA  100F              adc [bx],cl
000092EC  2085EC80          and [di-0x7f14],al
000092F0  E6B1              out 0xb1,al
000092F2  AD                lodsw
000092F3  68D138            push word 0x38d1
000092F6  3B7F05            cmp di,[bx+0x5]
000092F9  1A508B            sbb dl,[bx+si-0x75]
000092FC  8B0EB175          mov cx,[0x75b1]
00009300  030E681B          add cx,[0x1b68]
00009304  294DF4            sub [di-0xc],cx
00009307  350043            xor ax,0x4300
0000930A  187F1D            sbb [bx+0x1d],bh
0000930D  682309            push word 0x923
00009310  EB03              jmp short 0x9315
00009312  68B550            push word 0x50b5
00009315  7C2A              jl 0x9341
00009317  11E1              adc cx,sp
00009319  58                pop ax
0000931A  57                push di
0000931B  D02B              shr byte [bp+di],1
0000931D  91                xchg ax,cx
0000931E  5B                pop bx
0000931F  27                daa
00009320  D6                salc
00009321  BA1721            mov dx,0x2117
00009324  1308              adc cx,[bx+si]
00009326  6B445112          imul ax,[si+0x51],byte +0x12
0000932A  2C2B              sub al,0x2b
0000932C  8D10              lea dx,[bx+si]
0000932E  45                inc bp
0000932F  09F8              or ax,di
00009331  D41A              aam 0x1a
00009333  52                push dx
00009334  6448              fs dec ax
00009336  0B44ED            or ax,[si-0x13]
00009339  091F              or [bx],bx
0000933B  56                push si
0000933C  78DB              js 0x9319
0000933E  A15DEB            mov ax,[0xeb5d]
00009341  B50C              mov ch,0xc
00009343  085AB3            or [bp+si-0x4d],bl
00009346  AC                lodsb
00009347  58                pop ax
00009348  FC                cld
00009349  47                inc di
0000934A  2439              and al,0x39
0000934C  C10BD3            ror word [bp+di],byte 0xd3
0000934F  41                inc cx
00009350  B841A4            mov ax,0xa441
00009353  5D                pop bp
00009354  A39DB6            mov [0xb69d],ax
00009357  F72B              imul word [bp+di]
00009359  E6D4              out 0xd4,al
0000935B  026C03            add ch,[si+0x3]
0000935E  0351E0            add dx,[bx+di-0x20]
00009361  E7FA              out 0xfa,ax
00009363  92                xchg ax,dx
00009364  E620              out 0x20,al
00009366  6521EE            gs and si,bp
00009369  3A1EAB75          cmp bl,[0x75ab]
0000936D  32B7EB68          xor dh,[bx+0x68eb]
00009371  16                push ss
00009372  25A7DF            and ax,0xdfa7
00009375  2B58C9            sub bx,[bx+si-0x37]
00009378  DEEC              fsubp st4
0000937A  02BA63D2          add bh,[bp+si-0x2d9d]
0000937E  700B              jo 0x938b
00009380  0328              add bp,[bx+si]
00009382  6C                insb
00009383  D489              aam 0x89
00009385  F1                int1
00009386  EA3D4463B2        jmp 0xb263:0x443d
0000938B  0C87              or al,0x87
0000938D  B9DF15            mov cx,0x15df
00009390  5D                pop bp
00009391  D3EC              shr sp,cl
00009393  7C3E              jl 0x93d3
00009395  7556              jnz 0x93ed
00009397  31C5              xor bp,ax
00009399  07                pop es
0000939A  23CC              and cx,sp
0000939C  4C                dec sp
0000939D  B648              mov dh,0x48
0000939F  03748A            add si,[si-0x76]
000093A2  3413              xor al,0x13
000093A4  06                push es
000093A5  5D                pop bp
000093A6  EF                out dx,ax
000093A7  7702              ja 0x93ab
000093A9  1214              adc dl,[si]
000093AB  B2AF              mov dl,0xaf
000093AD  48                dec ax
000093AE  DB4A68            fisttp dword [bp+si+0x68]
000093B1  EB80              jmp short 0x9333
000093B3  BE6CFE            mov si,0xfe6c
000093B6  02751B            add dh,[di+0x1b]
000093B9  F8                clc
000093BA  58                pop ax
000093BB  44                inc sp
000093BC  1A15              sbb dl,[di]
000093BE  801005            adc byte [bx+si],0x5
000093C1  3036BA36          xor [0x36ba],dh
000093C5  2CD5              sub al,0xd5
000093C7  BC2826            mov sp,0x2628
000093CA  3B4B73            cmp cx,[bp+di+0x73]
000093CD  2B5572            sub dx,[di+0x72]
000093D0  7103              jno 0x93d5
000093D2  9B7B87            wait jpo 0x935c
000093D5  AC                lodsb
000093D6  11C9              adc cx,cx
000093D8  5B                pop bx
000093D9  1280E8E1          adc al,[bx+si-0x1e18]
000093DD  07                pop es
000093DE  BAED3A            mov dx,0x3aed
000093E1  E285              loop 0x9368
000093E3  778E              ja 0x9373
000093E5  60                pusha
000093E6  F38A6711          rep mov ah,[bx+0x11]
000093EA  B0C5              mov al,0xc5
000093EC  01D2              add dx,dx
000093EE  AE                scasb
000093EF  5D                pop bp
000093F0  205639            and [bp+0x39],dl
000093F3  3F                aas
000093F4  6709E8            a32 or ax,bp
000093F7  E20D              loop 0x9406
000093F9  32DB              xor bl,bl
000093FB  E384              jcxz 0x9381
000093FD  0967D8            or [bx-0x28],sp
00009400  F046              lock inc si
00009402  39FE              cmp si,di
00009404  742C              jz 0x9432
00009406  AA                stosb
00009407  00B9CA0D          add [bx+di+0xdca],bh
0000940B  FB                sti
0000940C  F0688E18          lock push word 0x188e
00009410  6F                outsw
00009411  BF0A45            mov di,0x450a
00009414  5A                pop dx
00009415  9A2AB20F73        call 0x730f:0xb22a
0000941A  C7                db 0xc7
0000941B  8840FA            mov [bx+si-0x6],al
0000941E  7894              js 0x93b4
00009420  1E                push ds
00009421  FA                cli
00009422  0C68              or al,0x68
00009424  0F414B93          cmovno cx,[bp+di-0x6d]
00009428  1E                push ds
00009429  E50D              in ax,0xd
0000942B  8B1E0488          mov bx,[0x8804]
0000942F  EB00              jmp short 0x9431
00009431  B449              mov ah,0x49
00009433  15181E            adc ax,0x1e18
00009436  8836711F          mov [0x1f71],dh
0000943A  A05812            mov al,[0x1258]
0000943D  E88A6B            call 0xffca
00009440  884316            mov [bp+di+0x16],al
00009443  7854              js 0x9499
00009445  034A6C            add cx,[bp+si+0x6c]
00009448  A8C6              test al,0xc6
0000944A  0128              add [bx+si],bp
0000944C  D109              ror word [bx+di],1
0000944E  7C6D              jl 0x94bd
00009450  D827              fsub dword [bx]
00009452  F7C64409          test si,0x944
00009456  44                inc sp
00009457  1E                push ds
00009458  4F                dec di
00009459  EB47              jmp short 0x94a2
0000945B  3E29FA            ds sub dx,di
0000945E  D81F              fcomp dword [bx]
00009460  01D1              add cx,dx
00009462  FE                db 0xfe
00009463  B478              mov ah,0x78
00009465  8E15              mov ss,[di]
00009467  A08CDB            mov al,[0xdb8c]
0000946A  4A                dec dx
0000946B  031A              add bx,[bp+si]
0000946D  50                push ax
0000946E  A3E3EE            mov [0xeee3],ax
00009471  B86588            mov ax,0x8865
00009474  0498              add al,0x98
00009476  251C35            and ax,0x351c
00009479  0DA5DC            or ax,0xdca5
0000947C  45                inc bp
0000947D  FF062086          inc word [0x8620]
00009481  0D510D            or ax,0xd51
00009484  3B535B            cmp dx,[bp+di+0x5b]
00009487  9E                sahf
00009488  1E                push ds
00009489  5F                pop di
0000948A  BA58EC            mov dx,0xec58
0000948D  56                push si
0000948E  01FB              add bx,di
00009490  8C7306            mov [bp+di+0x6],segr6
00009493  890A              mov [bp+si],cx
00009495  0D0974            or ax,0x7409
00009498  89421D            mov [bp+si+0x1d],ax
0000949B  0CC5              or al,0xc5
0000949D  56                push si
0000949E  108A8302          adc [bp+si+0x283],cl
000094A2  1D0FC1            sbb ax,0xc10f
000094A5  A0141F            mov al,[0x1f14]
000094A8  ED                in ax,dx
000094A9  837DAE24          cmp word [di-0x52],byte +0x24
000094AD  2A8EA121          sub cl,[bp+0x21a1]
000094B1  97                xchg ax,di
000094B2  16                push ss
000094B3  29DA              sub dx,bx
000094B5  45                inc bp
000094B6  F4                hlt
000094B7  4A                dec dx
000094B8  1CD6              sbb al,0xd6
000094BA  1D5181            sbb ax,0x8151
000094BD  A2314B            mov [0x4b31],al
000094C0  800BDC            or byte [bp+di],0xdc
000094C3  58                pop ax
000094C4  52                push dx
000094C5  53                push bx
000094C6  040C              add al,0xc
000094C8  FB                sti
000094C9  15DB1D            adc ax,0x1ddb
000094CC  6A0A              push byte +0xa
000094CE  38A0661C          cmp [bx+si+0x1c66],ah
000094D2  41                inc cx
000094D3  C0EA02            shr dl,byte 0x2
000094D6  D9E1              fabs
000094D8  3DF0D0            cmp ax,0xd0f0
000094DB  7D03              jnl 0x94e0
000094DD  80C610            add dh,0x10
000094E0  44                inc sp
000094E1  32EA              xor ch,dl
000094E3  9A3E0C6A08        call 0x86a:0xc3e
000094E8  B9E75C            mov cx,0x5ce7
000094EB  EF                out dx,ax
000094EC  36                ss
000094ED  C6                db 0xc6
000094EE  B8990A            mov ax,0xa99
000094F1  A01726            mov al,[0x2617]
000094F4  8A50DA            mov dl,[bx+si-0x26]
000094F7  64E0FF            fs loopne 0x94f9
000094FA  0846AA            or [bp-0x56],al
000094FD  F3D544            rep aad 0x44
00009500  98                cbw
00009501  35834D            xor ax,0x4d83
00009504  815606A9BF        adc word [bp+0x6],0xbfa9
00009509  6AA2              push byte -0x5e
0000950B  57                push di
0000950C  CE                into
0000950D  6760              a32 pusha
0000950F  D7                xlatb
00009510  FF19              call far [bx+di]
00009512  53                push bx
00009513  72B3              jc 0x94c8
00009515  9BE4BE            wait in al,0xbe
00009518  0502ED            add ax,0xed02
0000951B  D100              rol word [bx+si],1
0000951D  4C                dec sp
0000951E  FB                sti
0000951F  B44E              mov ah,0x4e
00009521  5F                pop di
00009522  52                push dx
00009523  7857              js 0x957c
00009525  C039EE            sar byte [bx+di],byte 0xee
00009528  02E1              add ah,cl
0000952A  DA11              ficom dword [bx+di]
0000952C  0E                push cs
0000952D  17                pop ss
0000952E  64E93008          fs jmp 0x9d62
00009532  D3E3              shl bx,cl
00009534  09D7              or di,dx
00009536  16                push ss
00009537  A2E0A9            mov [0xa9e0],al
0000953A  154556            adc ax,0x5645
0000953D  EE                out dx,al
0000953E  AB                stosw
0000953F  2ABA093E          sub bh,[bp+si+0x3e09]
00009543  2EDDB892FF        fnstsw [cs:bx+si-0x6e]
00009548  7C00              jl 0x954a
0000954A  21A9885B          and [bx+di+0x5b88],bp
0000954E  54                push sp
0000954F  017033            add [bx+si+0x33],si
00009552  B616              mov dh,0x16
00009554  FF28              jmp far [bx+si]
00009556  9D                popf
00009557  D410              aam 0x10
00009559  689655            push word 0x5596
0000955C  3216EBA8          xor dl,[0xa8eb]
00009560  1E                push ds
00009561  DE21              fisub word [bx+di]
00009563  F1                int1
00009564  8F                db 0x8f
00009565  A3897B            mov [0x7b89],ax
00009568  AE                scasb
00009569  17                pop ss
0000956A  1AB63D55          sbb dh,[bp+0x553d]
0000956E  3CAC              cmp al,0xac
00009570  A4                movsb
00009571  6649              dec ecx
00009573  B603              mov dh,0x3
00009575  2546D8            and ax,0xd846
00009578  A3DA0D            mov [0xdda],ax
0000957B  3477              xor al,0x77
0000957D  EB2E              jmp short 0x95ad
0000957F  F1                int1
00009580  3CDB              cmp al,0xdb
00009582  307CCE            xor [si-0x32],bh
00009585  39B07FCA          cmp [bx+si-0x3581],si
00009589  D50B              aad 0xb
0000958B  4E                dec si
0000958C  06                push es
0000958D  2F                das
0000958E  022C              add ch,[si]
00009590  207AD5            and [bp+si-0x2b],bh
00009593  134A6C            adc cx,[bp+si+0x6c]
00009596  A29814            mov [0x1498],al
00009599  1AFA              sbb bh,dl
0000959B  22EF              and ch,bh
0000959D  C4                db 0xc4
0000959E  EF                out dx,ax
0000959F  880E22DA          mov [0xda22],cl
000095A3  1DB902            sbb ax,0x2b9
000095A6  DA1A              ficomp dword [bp+si]
000095A8  CB                retf
000095A9  8D4AA2            lea cx,[bp+si-0x5e]
000095AC  50                push ax
000095AD  54                push sp
000095AE  EE                out dx,al
000095AF  A37CFF            mov [0xff7c],ax
000095B2  75CD              jnz 0x9581
000095B4  54                push sp
000095B5  51                push cx
000095B6  DABAD202          fidivr dword [bp+si+0x2d2]
000095BA  98                cbw
000095BB  7E10              jng 0x95cd
000095BD  EB9F              jmp short 0x955e
000095BF  2F                das
000095C0  7C27              jl 0x95e9
000095C2  55                push bp
000095C3  01D8              add ax,bx
000095C5  056FAC            add ax,0xac6f
000095C8  0355E9            add dx,[di-0x17]
000095CB  80F34E            xor bl,0x4e
000095CE  C2D68E            ret 0x8ed6
000095D1  A1525B            mov ax,[0x5b52]
000095D4  DB                db 0xdb
000095D5  A045C1            mov al,[0xc145]
000095D8  77EE              ja 0x95c8
000095DA  43                inc bx
000095DB  E897D2            call 0x6875
000095DE  FF                db 0xff
000095DF  3879D7            cmp [bx+di-0x29],bh
000095E2  0909              or [bx+di],cx
000095E4  252242            and ax,0x4222
000095E7  01E2              add dx,sp
000095E9  AA                stosb
000095EA  F0A93475          lock test ax,0x7534
000095EE  A5                movsw
000095EF  F051              lock push cx
000095F1  87DE              xchg si,bx
000095F3  C152A082          rcl word [bp+si-0x60],byte 0x82
000095F7  0BF0              or si,ax
000095F9  B0F7              mov al,0xf7
000095FB  D9680E            fldcw [bx+si+0xe]
000095FE  8700              xchg [bx+si],ax
00009600  12FE              adc bh,dh
00009602  AA                stosb
00009603  8D17              lea dx,[bx]
00009605  42                inc dx
00009606  34EA              xor al,0xea
00009608  321D              xor bl,[di]
0000960A  015B7D            add [bp+di+0x7d],bx
0000960D  1402              adc al,0x2
0000960F  F7F3              div bx
00009611  BF4E83            mov di,0x834e
00009614  F9                stc
00009615  06                push es
00009616  7D05              jnl 0x961d
00009618  88B92D88          mov [bx+di-0x77d3],bh
0000961C  B712              mov bh,0x12
0000961E  09637E            or [bp+di+0x7e],sp
00009621  F1                int1
00009622  0D5168            or ax,0x6851
00009625  91                xchg ax,cx
00009626  B9D9FE            mov cx,0xfed9
00009629  0ABEB963          or bh,[bp+0x63b9]
0000962D  0039              add [bx+di],bh
0000962F  D9                db 0xd9
00009630  0A8E1848          or cl,[bp+0x4818]
00009634  5B                pop bx
00009635  366507            gs pop es
00009638  3D8C44            cmp ax,0x448c
0000963B  3A44A2            cmp al,[si-0x5e]
0000963E  D817              fcom dword [bx]
00009640  B438              mov ah,0x38
00009642  69B5C3405475      imul si,[di+0x40c3],word 0x7554
00009648  0E                push cs
00009649  5E                pop si
0000964A  1C34              sbb al,0x34
0000964C  883E482F          mov [0x2f48],bh
00009650  1A22              sbb ah,[bp+si]
00009652  2B23              sub sp,[bp+di]
00009654  776B              ja 0x96c1
00009656  42                inc dx
00009657  43                inc bx
00009658  5D                pop bp
00009659  16                push ss
0000965A  C3                ret
0000965B  9C                pushf
0000965C  FD                std
0000965D  43                inc bx
0000965E  75E5              jnz 0x9645
00009660  7533              jnz 0x9695
00009662  5F                pop di
00009663  D2E2              shl dl,cl
00009665  F8                clc
00009666  64A3500D          mov [fs:0xd50],ax
0000966A  6417              fs pop ss
0000966C  13520D            adc dx,[bp+si+0xd]
0000966F  0107              add [bx],ax
00009671  6F                outsw
00009672  2847B1            sub [bx-0x4f],al
00009675  C645F679          mov byte [di-0xa],0x79
00009679  0169C9            add [bx+di-0x37],bp
0000967C  4A                dec dx
0000967D  DDBF1FE7          fnstsw [bx-0x18e1]
00009681  8D6451            lea sp,[si+0x51]
00009684  6E                outsb
00009685  1B01              sbb ax,[bx+di]
00009687  C8F6261D          enter 0x26f6,0x1d
0000968B  7FC7              jg 0x9654
0000968D  45                inc bp
0000968E  7AAC              jpe 0x963c
00009690  0A7505            or dh,[di+0x5]
00009693  7CAC              jl 0x9641
00009695  1D10FF            sbb ax,0xff10
00009698  89756D            mov [di+0x6d],si
0000969B  648C45DF          mov [fs:di-0x21],es
0000969F  6F                outsw
000096A0  4B                dec bx
000096A1  7D01              jnl 0x96a4
000096A3  BAF087            mov dx,0x87f0
000096A6  02BB1DC1          add bh,[bp+di-0x3ee3]
000096AA  8DB5BC0D          lea si,[di+0xdbc]
000096AE  BA0B3C            mov dx,0x3c0b
000096B1  8954ED            mov [si-0x13],dx
000096B4  1B23              sbb sp,[bp+di]
000096B6  55                push bp
000096B7  F60248            test byte [bp+si],0x48
000096BA  75EE              jnz 0x96aa
000096BC  9D                popf
000096BD  3AFA              cmp bh,dl
000096BF  29BA0C15          sub [bp+si+0x150c],di
000096C3  AA                stosb
000096C4  3B28              cmp bp,[bx+si]
000096C6  858FDFEF          test [bx-0x1021],cx
000096CA  43                inc bx
000096CB  12508B            adc dl,[bx+si-0x75]
000096CE  53                push bx
000096CF  CF                iret
000096D0  5B                pop bx
000096D1  DF1E3706          fistp word [0x637]
000096D5  E97C82            jmp 0x1954
000096D8  EF                out dx,ax
000096D9  C16BB454          shr word [bp+di-0x4c],byte 0x54
000096DD  7302              jnc 0x96e1
000096DF  06                push es
000096E0  1C66              sbb al,0x66
000096E2  51                push cx
000096E3  75D4              jnz 0x96b9
000096E5  0C8A              or al,0x8a
000096E7  19BF61A2          sbb [bx-0x5d9f],di
000096EB  55                push bp
000096EC  C6                db 0xc6
000096ED  0DC980            or ax,0x80c9
000096F0  1DC16C            sbb ax,0x6cc1
000096F3  C9                leave
000096F4  EF                out dx,ax
000096F5  2E1CE1            cs sbb al,0xe1
000096F8  0964B8            or [si-0x48],sp
000096FB  C9                leave
000096FC  9A01BB173A        call 0x3a17:0xbb01
00009701  EF                out dx,ax
00009702  55                push bp
00009703  4D                dec bp
00009704  F0FD              lock std
00009706  1834              sbb [si],dh
00009708  ED                in ax,dx
00009709  B072              mov al,0x72
0000970B  03C6              add ax,si
0000970D  E073              loopne 0x9782
0000970F  B37D              mov bl,0x7d
00009711  E837FD            call 0x944b
00009714  58                pop ax
00009715  4A                dec dx
00009716  7BE9              jpo 0x9701
00009718  FD                std
00009719  4F                dec di
0000971A  AE                scasb
0000971B  3809              cmp [bx+di],cl
0000971D  C52D              lds bp,[di]
0000971F  302F              xor [bx],ch
00009721  1355BF            adc dx,[di-0x41]
00009724  D8E8              fsubr st0
00009726  17                pop ss
00009727  01C7              add di,ax
00009729  256CF8            and ax,0xf86c
0000972C  C88905A1          enter 0x589,0xa1
00009730  44                inc sp
00009731  D8C9              fmul st1
00009733  45                inc bp
00009734  2A1B              sub bl,[bp+di]
00009736  F33BEB            rep cmp bp,bx
00009739  6E                outsb
0000973A  2C3D              sub al,0x3d
0000973C  4F                dec di
0000973D  8D22              lea sp,[bp+si]
0000973F  DA03              fiadd dword [bp+di]
00009741  BE0496            mov si,0x9604
00009744  A105D4            mov ax,[0xd405]
00009747  A3BE3D            mov [0x3dbe],ax
0000974A  B95201            mov cx,0x152
0000974D  FE                db 0xfe
0000974E  96                xchg ax,si
0000974F  DE05              fiadd word [di]
00009751  A5                movsw
00009752  EF                out dx,ax
00009753  B706              mov bh,0x6
00009755  24E9              and al,0xe9
00009757  D48E              aam 0x8e
00009759  EE                out dx,al
0000975A  091F              or [bx],bx
0000975C  8A0B              mov cl,[bp+di]
0000975E  6D                insw
0000975F  0424              add al,0x24
00009761  6F                outsw
00009762  D4C6              aam 0xc6
00009764  07                pop es
00009765  1B6D64            sbb bp,[di+0x64]
00009768  F08C8B55E9        lock mov [bp+di-0x16ab],cs
0000976D  20C1              and cl,al
0000976F  34B7              xor al,0xb7
00009771  8370D3BB          xor word [bx+si-0x2d],byte -0x45
00009775  C2D301            ret 0x1d3
00009778  52                push dx
00009779  722F              jc 0x97aa
0000977B  A14335            mov ax,[0x3543]
0000977E  7580              jnz 0x9700
00009780  0E                push cs
00009781  2E7363            cs jnc 0x97e7
00009784  45                inc bp
00009785  AC                lodsb
00009786  0210              add dl,[bx+si]
00009788  7574              jnz 0x97fe
0000978A  2334              and si,[si]
0000978C  F7                db 0xf7
0000978D  4A                dec dx
0000978E  6E                outsb
0000978F  FA                cli
00009790  B0EA              mov al,0xea
00009792  819906C688DB      sbb word [bx+di-0x39fa],0xdb88
00009798  7FA0              jg 0x973a
0000979A  1E                push ds
0000979B  50                push ax
0000979C  2498              and al,0x98
0000979E  FA                cli
0000979F  A2DF68            mov [0x68df],al
000097A2  F3DCC3            rep fadd to st3
000097A5  FB                sti
000097A6  08C3              or bl,al
000097A8  3C45              cmp al,0x45
000097AA  44                inc sp
000097AB  D5DE              aad 0xde
000097AD  082A              or [bp+si],ch
000097AF  16                push ss
000097B0  AD                lodsw
000097B1  D5F7              aad 0xf7
000097B3  097F15            or [bx+0x15],di
000097B6  854B69            test [bp+di+0x69],cx
000097B9  74F2              jz 0x97ad
000097BB  27                daa
000097BC  6D                insw
000097BD  307BA1            xor [bp+di-0x5f],bh
000097C0  06                push es
000097C1  0871D9            or [bx+di-0x27],dh
000097C4  080D              or [di],cl
000097C6  42                inc dx
000097C7  E3DB              jcxz 0x97a4
000097C9  68090A            push word 0xa09
000097CC  CE                into
000097CD  7B2C              jpo 0x97fb
000097CF  5F                pop di
000097D0  390F              cmp [bx],cx
000097D2  16                push ss
000097D3  20CB              and bl,cl
000097D5  1DB83D            sbb ax,0x3db8
000097D8  A15AF6            mov ax,[0xf65a]
000097DB  AA                stosb
000097DC  661131            adc [bx+di],esi
000097DF  CB                retf
000097E0  2EA7              cs cmpsw
000097E2  2309              and cx,[bx+di]
000097E4  CB                retf
000097E5  68359C            push word 0x9c35
000097E8  25F805            and ax,0x5f8
000097EB  683F0A            push word 0xa3f
000097EE  3A9445D9          cmp dl,[si-0x26bb]
000097F2  1487              adc al,0x87
000097F4  D47B              aam 0x7b
000097F6  B514              mov ch,0x14
000097F8  73B8              jnc 0x97b2
000097FA  48                dec ax
000097FB  41                inc cx
000097FC  B8ADE7            mov ax,0xe7ad
000097FF  38964C6E          cmp [bp+0x6e4c],dl
00009803  762D              jna 0x9832
00009805  B54A              mov ch,0x4a
00009807  4A                dec dx
00009808  2822              sub [bp+si],ah
0000980A  78A8              js 0x97b4
0000980C  032697D1          add sp,[0xd197]
00009810  51                push cx
00009811  EF                out dx,ax
00009812  23E1              and sp,cx
00009814  106318            adc [bp+di+0x18],ah
00009817  0FC28EAA2CDB      cmpps xmm1,oword [bp+0x2caa],byte 0xdb
0000981D  0E                push cs
0000981E  08E9              or cl,ch
00009820  8817              mov [bx],dl
00009822  8D                db 0x8d
00009823  DB6C06            fld tword [si+0x6]
00009826  FF17              call [bx]
00009828  4B                dec bx
00009829  CF                iret
0000982A  08E9              or cl,ch
0000982C  56                push si
0000982D  B982EB            mov cx,0xeb82
00009830  4C                dec sp
00009831  0D5911            or ax,0x1159
00009834  355CA2            xor ax,0xa25c
00009837  BB06EB            mov bx,0xeb06
0000983A  4F                dec di
0000983B  114624            adc [bp+0x24],ax
0000983E  D923              fldenv [bp+di]
00009840  80ED1C            sub ch,0x1c
00009843  A0B081            mov al,[0x81b0]
00009846  3C2D              cmp al,0x2d
00009848  6D                insw
00009849  3CB9              cmp al,0xb9
0000984B  C1C849            ror ax,byte 0x49
0000984E  663AEC            o32 cmp ch,ah
00009851  E72D              out 0x2d,ax
00009853  FE                db 0xfe
00009854  16                push ss
00009855  49                dec cx
00009856  A10441            mov ax,[0x4104]
00009859  2F                das
0000985A  C0507521          rcl byte [bx+si+0x75],byte 0x21
0000985E  67281A            sub [edx],bl
00009861  3F                aas
00009862  097D13            or [di+0x13],di
00009865  3441              xor al,0x41
00009867  97                xchg ax,di
00009868  04BA              add al,0xba
0000986A  FE                db 0xfe
0000986B  F030166FFB        lock xor [0xfb6f],dl
00009870  B6D0              mov dh,0xd0
00009872  28D8              sub al,bl
00009874  041B              add al,0x1b
00009876  7161              jno 0x98d9
00009878  6C                insb
00009879  05F301            add ax,0x1f3
0000987C  0F708B46F1EC      pshufw mm1,[bp+di-0xeba],0xec
00009882  4F                dec di
00009883  D029              shr byte [bx+di],1
00009885  95                xchg ax,bp
00009886  44                inc sp
00009887  DF7280            fbstp tword [bp+si-0x80]
0000988A  EB30              jmp short 0x98bc
0000988C  881E6E2E          mov [0x2e6e],bl
00009890  686ADC            push word 0xdc6a
00009893  ED                in ax,dx
00009894  99                cwd
00009895  07                pop es
00009896  C12D18            shr word [di],byte 0x18
00009899  05D619            add ax,0x19d6
0000989C  E6E0              out 0xe0,al
0000989E  6C                insb
0000989F  0ADA              or bl,dl
000098A1  61                popa
000098A2  9C                pushf
000098A3  055374            add ax,0x7453
000098A6  15062F            adc ax,0x2f06
000098A9  AF                scasw
000098AA  9C                pushf
000098AB  0109              add [bx+di],cx
000098AD  262A0D            sub cl,[es:di]
000098B0  C44117            les ax,[bx+di+0x17]
000098B3  5F                pop di
000098B4  002F              add [bx],ch
000098B6  4C                dec sp
000098B7  1E                push ds
000098B8  A28437            mov [0x3784],al
000098BB  40                inc ax
000098BC  B1FC              mov cl,0xfc
000098BE  FA                cli
000098BF  F610              not byte [bx+si]
000098C1  3D1DF1            cmp ax,0xf11d
000098C4  E82AF9            call 0x91f1
000098C7  727D              jc 0x9946
000098C9  17                pop ss
000098CA  2DC7FA            sub ax,0xfac7
000098CD  17                pop ss
000098CE  DEE4              fsubrp st4
000098D0  AA                stosb
000098D1  EF                out dx,ax
000098D2  F34A              rep dec dx
000098D4  1B64B4            sbb sp,[si-0x4c]
000098D7  FA                cli
000098D8  FD                std
000098D9  07                pop es
000098DA  40                inc ax
000098DB  BAB1A3            mov dx,0xa3b1
000098DE  57                push di
000098DF  FF5160            call [bx+di+0x60]
000098E2  C8E888C2          enter 0x88e8,0xc2
000098E6  90                nop
000098E7  BF5503            mov di,0x355
000098EA  A0F4BB            mov al,[0xbbf4]
000098ED  4A                dec dx
000098EE  00169C82          add [0x829c],dl
000098F2  A9A0F4            test ax,0xf4a0
000098F5  FEC8              dec al
000098F7  4B                dec bx
000098F8  A4                movsb
000098F9  BB024B            mov bx,0x4b02
000098FC  8007A9            add byte [bx],0xa9
000098FF  056CD6            add ax,0xd66c
00009902  186514            sbb [di+0x14],ah
00009905  E38D              jcxz 0x9894
00009907  DD                db 0xdd
00009908  2F                das
00009909  D474              aam 0x74
0000990B  7EEB              jng 0x98f8
0000990D  C890E060          enter 0xe090,0x60
00009911  762A              jna 0x993d
00009913  DEF3              fdivrp st3
00009915  C2A39A            ret 0x9aa3
00009918  0137              add [bx],si
0000991A  16                push ss
0000991B  9E                sahf
0000991C  4E                dec si
0000991D  30C9              xor cl,cl
0000991F  35FF98            xor ax,0x98ff
00009922  A015D6            mov al,[0xd615]
00009925  B29A              mov dl,0x9a
00009927  2C38              sub al,0x38
00009929  0FEF7F10          pxor mm7,[bx+0x10]
0000992D  37                aaa
0000992E  FF8A6E6D          dec word [bp+si+0x6d6e]
00009932  0B1A              or bx,[bp+si]
00009934  8399136C1C        sbb word [bx+di+0x6c13],byte +0x1c
00009939  0F8EF2EE          jng near 0x882f
0000993D  791A              jns 0x9959
0000993F  45                inc bp
00009940  BF6088            mov di,0x8860
00009943  C8C0E004          enter 0xe0c0,0x4
00009947  06                push es
00009948  92                xchg ax,dx
00009949  AB                stosw
0000994A  99                cwd
0000994B  BF08FF            mov di,0xff08
0000994E  53                push bx
0000994F  BBE202            mov bx,0x2e2
00009952  0B7F41            or di,[bx+0x41]
00009955  12A7E864          adc ah,[bx+0x64e8]
00009959  3BDA              cmp bx,dx
0000995B  A7                cmpsw
0000995C  5B                pop bx
0000995D  1313              adc dx,[bp+di]
0000995F  C0A31C020E        shl byte [bp+di+0x21c],byte 0xe
00009964  80B7D0A320        xor byte [bx-0x5c30],0x20
00009969  881625BA          mov [0xba25],dl
0000996D  4B                dec bx
0000996E  9E                sahf
0000996F  227406            and dh,[si+0x6]
00009972  04B3              add al,0xb3
00009974  234B05            and cx,[bp+di+0x5]
00009977  2434              and al,0x34
00009979  06                push es
0000997A  B327              mov bl,0x27
0000997C  4B                dec bx
0000997D  07                pop es
0000997E  2934              sub [si],si
00009980  08B32B4B          or [bp+di+0x4b2b],dh
00009984  092D              or [di],bp
00009986  340A              xor al,0xa
00009988  B32F              mov bl,0x2f
0000998A  4B                dec bx
0000998B  0B30              or si,[bx+si]
0000998D  340C              xor al,0xc
0000998F  B83116            mov ax,0x1631
00009992  3F                aas
00009993  8B83C3F4          mov ax,[bp+di-0xb3d]
00009997  0DEB96            or ax,0x96eb
0000999A  50                push ax
0000999B  7EB3              jng 0x9950
0000999D  0406              add al,0x6
0000999F  6C                insb
000099A0  68762E            push word 0x2e76
000099A3  9D                popf
000099A4  FB                sti
000099A5  05667F            add ax,0x7f66
000099A8  1F                pop ds
000099A9  10FF              adc bh,bh
000099AB  37                aaa
000099AC  DB6897            fld tword [bx+si-0x69]
000099AF  13E7              adc sp,di
000099B1  3504F0            xor ax,0xf004
000099B4  2BEA              sub bp,dx
000099B6  F7BFD921          idiv word [bx+0x21d9]
000099BA  86DC              xchg ah,bl
000099BC  6F                outsw
000099BD  3E69D88215        ds imul bx,ax,word 0x1582
000099C2  17                pop ss
000099C3  57                push di
000099C4  42                inc dx
000099C5  1202              adc al,[bp+si]
000099C7  8017A3            adc byte [bx],0xa3
000099CA  FF4EE0            dec word [bp-0x20]
000099CD  C6477F5D          mov byte [bx+0x7f],0x5d
000099D1  7897              js 0x996a
000099D3  8037BB            xor byte [bx],0xbb
000099D6  2A1B              sub bl,[bp+di]
000099D8  59                pop cx
000099D9  50                push ax
000099DA  CA8F85            retf 0x858f
000099DD  4D                dec bp
000099DE  6A0D              push byte +0xd
000099E0  0E                push cs
000099E1  53                push bx
000099E2  B5A1              mov ch,0xa1
000099E4  105D3C            adc [di+0x3c],bl
000099E7  76B7              jna 0x99a0
000099E9  CF                iret
000099EA  3D689B            cmp ax,0x9b68
000099ED  6C                insb
000099EE  4E                dec si
000099EF  98                cbw
000099F0  E0B7              loopne 0x99a9
000099F2  ED                in ax,dx
000099F3  67F77325          div word [ebx+0x25]
000099F7  1E                push ds
000099F8  C57673            lds si,[bp+0x73]
000099FB  057C16            add ax,0x167c
000099FE  D356F0            rcl word [bp-0x10],cl
00009A01  107011            adc [bx+si+0x11],dh
00009A04  58                pop ax
00009A05  CF                iret
00009A06  DC1D              fcomp qword [di]
00009A08  BCBC22            mov sp,0x22bc
00009A0B  EBEC              jmp short 0x99f9
00009A0D  8B46A4            mov ax,[bp-0x5c]
00009A10  FF89D9C1          dec word [bx+di-0x3e27]
00009A14  E102              loope 0x9a18
00009A16  43                inc bx
00009A17  897609            mov [bp+0x9],si
00009A1A  BBC0B6            mov bx,0xb6c0
00009A1D  44                inc sp
00009A1E  CB                retf
00009A1F  2DB1B6            sub ax,0xb6b1
00009A22  3812              cmp [bp+si],dl
00009A24  0F2FB75528        comiss xmm6,dword [bx+0x2855]
00009A29  8AAD8A40          mov ch,[di+0x408a]
00009A2D  E80F10            call 0xaa3f
00009A30  52                push dx
00009A31  60                pusha
00009A32  96                xchg ax,si
00009A33  0E                push cs
00009A34  56                push si
00009A35  8B8878BA          mov cx,[bx+si-0x4588]
00009A39  E8ADF8            call 0x92e9
00009A3C  FE                db 0xfe
00009A3D  B98D76            mov cx,0x768d
00009A40  F2A18244          repne mov ax,[0x4482]
00009A44  DA687E            fisubr dword [bx+si+0x7e]
00009A47  08AD6A07          or [di+0x76a],ch
00009A4B  DBC1              fcmovnb st1
00009A4D  F08CB54B2E        lock mov [di+0x2e4b],segr6
00009A52  C3                ret
00009A53  C6                db 0xc6
00009A54  4E                dec si
00009A55  8ADF              mov bl,bh
00009A57  92                xchg ax,dx
00009A58  BEF001            mov si,0x1f0
00009A5B  DE406D            fiadd word [bx+si+0x6d]
00009A5E  6A0D              push byte +0xd
00009A60  B308              mov bl,0x8
00009A62  37                aaa
00009A63  C3                ret
00009A64  02C8              add cl,al
00009A66  4B                dec bx
00009A67  728C              jc 0x99f5
00009A69  FA                cli
00009A6A  5E                pop si
00009A6B  7689              jna 0x99f6
00009A6D  5E                pop si
00009A6E  7481              jz 0x99f1
00009A70  46                inc si
00009A71  ED                in ax,dx
00009A72  7C02              jl 0x9a76
00009A74  96                xchg ax,si
00009A75  7E78              jng 0x9aef
00009A77  5E                pop si
00009A78  7AFF              jpe 0x9a79
00009A7A  B5DB              mov ch,0xdb
00009A7C  CC                int3
00009A7D  8D1D              lea bx,[di]
00009A7F  40                inc ax
00009A80  6D                insw
00009A81  27                daa
00009A82  F2B73C            repne mov bh,0x3c
00009A85  47                inc di
00009A86  A125AC            mov ax,[0xac25]
00009A89  77C4              ja 0x9a4f
00009A8B  A2F68D            mov [0x8df6],al
00009A8E  C0A6881B03        shl byte [bp+0x1b88],byte 0x3
00009A93  288FEA63          sub [bx+0x63ea],cl
00009A97  1D2C49            sbb ax,0x492c
00009A9A  1B25              sbb sp,[di]
00009A9C  F8                clc
00009A9D  C86A21E0          enter 0x216a,0xe0
00009AA1  50                push ax
00009AA2  DB5742            fist dword [bx+0x42]
00009AA5  15A8ED            adc ax,0xeda8
00009AA8  845888            test [bx+si-0x78],bl
00009AAB  05B76B            add ax,0x6bb7
00009AAE  E7A3              out 0xa3,ax
00009AB0  2DAD9F            sub ax,0x9fad
00009AB3  2AF9              sub bh,cl
00009AB5  E905A2            jmp 0x3cbd
00009AB8  CC                int3
00009AB9  6E                outsb
00009ABA  EE                out dx,al
00009ABB  B99023            mov cx,0x2390
00009ABE  82                db 0x82
00009ABF  DEFA              fdivp st2
00009AC1  1B83C12A          sbb ax,[bp+di+0x2ac1]
00009AC5  51                push cx
00009AC6  D52F              aad 0x2f
00009AC8  40                inc ax
00009AC9  E0D9              loopne 0x9aa4
00009ACB  2DC190            sub ax,0x90c1
00009ACE  9E                sahf
00009ACF  2DE899            sub ax,0x99e8
00009AD2  46                inc si
00009AD3  72EA              jc 0x9abf
00009AD5  1BC2              sbb ax,dx
00009AD7  37                aaa
00009AD8  7401              jz 0x9adb
00009ADA  C1                db 0xc1
00009ADB  F5                cmc
00009ADC  51                push cx
00009ADD  E8F8DB            call 0x76d8
00009AE0  41                inc cx
00009AE1  D0                db 0xd0
00009AE2  70BB              jo 0x9a9f
00009AE4  BB673B            mov bx,0x3b67
00009AE7  363A747D          cmp dh,[ss:si+0x7d]
00009AEB  1432              adc al,0x32
00009AED  B68D              mov dh,0x8d
00009AEF  E0C5              loopne 0x9ab6
00009AF1  A6                cmpsb
00009AF2  FF8C7546          dec word [si+0x4675]
00009AF6  287F5D            sub [bx+0x5d],bh
00009AF9  83EBE6            sub bx,byte -0x1a
00009AFC  46                inc si
00009AFD  F9                stc
00009AFE  EE                out dx,al
00009AFF  95                xchg ax,bp
00009B00  FF8D6FA4          dec word [di-0x5b91]
00009B04  E9A0E9            jmp 0x84a7
00009B07  05FFE8            add ax,0xe8ff
00009B0A  13ED              adc bp,bp
00009B0C  E8ABF7            call 0x92ba
00009B0F  198BEA4A          sbb [bp+di+0x4aea],cx
00009B13  B86969            mov ax,0x6969
00009B16  7473              jz 0x9b8b
00009B18  C50A              lds cx,[bp+si]
00009B1A  E2A1              loop 0x9abd
00009B1C  F8                clc
00009B1D  7BF0              jpo 0x9b0f
00009B1F  8F                db 0x8f
00009B20  1B6FC2            sbb bp,[bx-0x3e]
00009B23  0DD193            or ax,0x93d1
00009B26  F8                clc
00009B27  F9                stc
00009B28  A4                movsb
00009B29  BB4D5B            mov bx,0x5b4d
00009B2C  0D12A6            or ax,0xa612
00009B2F  2B7E88            sub di,[bp-0x78]
00009B32  48                dec ax
00009B33  B68A              mov dh,0x8a
00009B35  119D91FF          adc [di-0x6f],bx
00009B39  17                pop ss
00009B3A  864D43            xchg [di+0x43],cl
00009B3D  011E680A          add [0xa68],bx
00009B41  51                push cx
00009B42  5B                pop bx
00009B43  0D50C7            or ax,0xc750
00009B46  5B                pop bx
00009B47  98                cbw
00009B48  06                push es
00009B49  7C07              jl 0x9b52
00009B4B  F4                hlt
00009B4C  2EC1D603          cs rcl si,byte 0x3
00009B50  047E              add al,0x7e
00009B52  55                push bp
00009B53  7C1E              jl 0x9b73
00009B55  1257ED            adc dl,[bx-0x13]
00009B58  E565              in ax,0x65
00009B5A  DA07              fiadd dword [bx]
00009B5C  30EA              xor dl,ch
00009B5E  BB0E2D            mov bx,0x2d0e
00009B61  2901              sub [bx+di],ax
00009B63  4D                dec bp
00009B64  6E                outsb
00009B65  1F                pop ds
00009B66  DA5251            ficom dword [bp+si+0x51]
00009B69  0DDD18            or ax,0x18dd
00009B6C  F4                hlt
00009B6D  4C                dec sp
00009B6E  C01121            rcl byte [bx+di],byte 0x21
00009B71  B870BB            mov ax,0xbb70
00009B74  132E1246          adc bp,[0x4612]
00009B78  1B09              sbb cx,[bx+di]
00009B7A  CE                into
00009B7B  43                inc bx
00009B7C  A9BD24            test ax,0x24bd
00009B7F  033EDC17          add di,[0x17dc]
00009B83  13E8              adc bp,ax
00009B85  1926E8E7          sbb [0xe7e8],sp
00009B89  3108              xor [bx+si],cx
00009B8B  6F                outsw
00009B8C  FC                cld
00009B8D  06                push es
00009B8E  39D3              cmp bx,dx
00009B90  75FD              jnz 0x9b8f
00009B92  283D              sub [di],bh
00009B94  800273            add byte [bp+si],0x73
00009B97  23821516          and ax,[bp+si+0x1615]
00009B9B  DDDB              fstp st3
00009B9D  027F4C            add bh,[bx+0x4c]
00009BA0  17                pop ss
00009BA1  83FA3F            cmp dx,byte +0x3f
00009BA4  F7770E            div word [bx+0xe]
00009BA7  01D0              add ax,dx
00009BA9  1B0A              sbb cx,[bp+si]
00009BAB  255EE2            and ax,0xe25e
00009BAE  D0C1              rol cl,1
00009BB0  E094              loopne 0x9b46
00009BB2  C07AC109          sar byte [bp+si-0x3f],byte 0x9
00009BB6  3AA9FF94          cmp ch,[bx+di-0x6b01]
00009BBA  40                inc ax
00009BBB  5D                pop bp
00009BBC  2E60              cs pusha
00009BBE  D04DC3            ror byte [di-0x3d],1
00009BC1  55                push bp
00009BC2  F8                clc
00009BC3  0E                push cs
00009BC4  E8EABF            call 0x5bb1
00009BC7  B30C              mov bl,0xc
00009BC9  68F710            push word 0x10f7
00009BCC  0BE8              or bp,ax
00009BCE  2EA7              cs cmpsw
00009BD0  0819              or [bx+di],bl
00009BD2  54                push sp
00009BD3  055E0A            add ax,0xa5e
00009BD6  CE                into
00009BD7  1CCD              sbb al,0xcd
00009BD9  702F              jo 0x9c0a
00009BDB  7A26              jpe 0x9c03
00009BDD  0BEB              or bp,bx
00009BDF  8EE1              mov fs,cx
00009BE1  C3                ret
00009BE2  70B0              jo 0x9b94
00009BE4  17                pop ss
00009BE5  1D351D            sbb ax,0x1d35
00009BE8  42                inc dx
00009BE9  DB                db 0xdb
00009BEA  FA                cli
00009BEB  68E815            push word 0x15e8
00009BEE  DA0E2541          fimul dword [0x4125]
00009BF2  201A              and [bp+si],bl
00009BF4  8921              mov [bx+di],sp
00009BF6  31BB73FA          xor [bp+di-0x58d],di
00009BFA  1204              adc al,[si]
00009BFC  7416              jz 0x9c14
00009BFE  FC                cld
00009BFF  1033              adc [bp+di],dh
00009C01  6253B9            bound dx,[bp+di-0x47]
00009C04  0E                push cs
00009C05  684872            push word 0x7248
00009C08  DA02              fiadd dword [bp+si]
00009C0A  2E                cs
00009C0B  C6                db 0xc6
00009C0C  6C                insb
00009C0D  3934              cmp [si],si
00009C0F  D8165129          fcom dword [0x2951]
00009C13  E89A84            call 0x20b0
00009C16  A5                movsw
00009C17  08DB              or bl,bl
00009C19  D9A20F84          fldenv [bp+si-0x7bf1]
00009C1D  7C5C              jl 0x9c7b
00009C1F  83B0D83CA9        xor word [bx+si+0x3cd8],byte -0x57
00009C24  7702              ja 0x9c28
00009C26  12B45C2D          adc dh,[si+0x2d5c]
00009C2A  6C                insb
00009C2B  1056DE            adc [bp-0x22],dl
00009C2E  7E8F              jng 0x9bbf
00009C30  95                xchg ax,bp
00009C31  0010              add [bx+si],dl
00009C33  E074              loopne 0x9ca9
00009C35  EC                in al,dx
00009C36  017540            add [di+0x40],si
00009C39  AF                scasw
00009C3A  58                pop ax
00009C3B  BBEA1E            mov bx,0x1eea
00009C3E  684226            push word 0x2642
00009C41  C9                leave
00009C42  FB                sti
00009C43  CB                retf
00009C44  4B                dec bx
00009C45  BB2E00            mov bx,0x2e
00009C48  359532            xor ax,0x3295
00009C4B  85D0              test ax,dx
00009C4D  BA7BDC            mov dx,0xdc7b
00009C50  99                cwd
00009C51  3011              xor [bx+di],dl
00009C53  27                daa
00009C54  E1BA              loope 0x9c10
00009C56  16                push ss
00009C57  BE89D4            mov si,0xd489
00009C5A  713B              jno 0x9c97
00009C5C  16                push ss
00009C5D  6F                outsw
00009C5E  4F                dec di
00009C5F  72EF              jc 0x9c50
00009C61  8B7005            mov si,[bx+si+0x5]
00009C64  8039A8            cmp byte [bx+di],0xa8
00009C67  2F                das
00009C68  91                xchg ax,cx
00009C69  0F80E3A6          jo near 0x4350
00009C6D  F017              lock pop ss
00009C6F  B41D              mov ah,0x1d
00009C71  46                inc si
00009C72  51                push cx
00009C73  A1E46B            mov ax,[0x6be4]
00009C76  7095              jo 0x9c0d
00009C78  4B                dec bx
00009C79  A21925            mov [0x2519],al
00009C7C  52                push dx
00009C7D  48                dec ax
00009C7E  0A34              or dh,[si]
00009C80  0E                push cs
00009C81  1DD18B            sbb ax,0x8bd1
00009C84  DA3E58CF          fidivr dword [0xcf58]
00009C88  0D2B00            or ax,0x2b
00009C8B  AD                lodsw
00009C8C  C107B5            rol word [bx],byte 0xb5
00009C8F  69B9C20D6BBD      imul di,[bx+di+0xdc2],word 0xbd6b
00009C95  FA                cli
00009C96  675B              a32 pop bx
00009C98  1B24              sbb sp,[si]
00009C9A  E5F0              in ax,0xf0
00009C9C  8B361103          mov si,[0x311]
00009CA0  D4D1              aam 0xd1
00009CA2  FC                cld
00009CA3  CB                retf
00009CA4  C28D63            ret 0x638d
00009CA7  BB797C            mov bx,0x7c79
00009CAA  80CB0F            or bl,0xf
00009CAD  2915              sub [di],dx
00009CAF  2314              and dx,[si]
00009CB1  05DD20            add ax,0x20dd
00009CB4  001A              add [bp+si],bl
00009CB6  B96E05            mov cx,0x56e
00009CB9  29CB              sub bx,cx
00009CBB  D6                salc
00009CBC  7426              jz 0x9ce4
00009CBE  EF                out dx,ax
00009CBF  7205              jc 0x9cc6
00009CC1  15800C            adc ax,0xc80
00009CC4  DAD4              fcmovbe st4
00009CC6  51                push cx
00009CC7  8B7CBD            mov di,[si-0x43]
00009CCA  53                push bx
00009CCB  E81D4B            call 0xe7eb
00009CCE  2B887F2F          sub cx,[bx+si+0x2f7f]
00009CD2  BB8A84            mov bx,0x848a
00009CD5  1230              adc dh,[bx+si]
00009CD7  56                push si
00009CD8  3485              xor al,0x85
00009CDA  2F                das
00009CDB  D1                db 0xd1
00009CDC  731C              jnc 0x9cfa
00009CDE  D13D              sar word [di],1
00009CE0  EA6878D096        jmp 0x96d0:0x7868
00009CE5  40                inc ax
00009CE6  C08E2260D1        ror byte [bp+0x6022],byte 0xd1
00009CEB  02D7              add dl,bh
00009CED  A3A976            mov [0x76a9],ax
00009CF0  7573              jnz 0x9d65
00009CF2  2E802D71          sub byte [cs:di],0x71
00009CF6  61                popa
00009CF7  2937              sub [bx],si
00009CF9  3E54              ds push sp
00009CFB  C0                db 0xc0
00009CFC  3002              xor [bp+si],al
00009CFE  F1                int1
00009CFF  8543A9            test [bp+di-0x57],ax
00009D02  06                push es
00009D03  93                xchg ax,bx
00009D04  BAE8C8            mov dx,0xc8e8
00009D07  4A                dec dx
00009D08  0A5471            or dl,[si+0x71]
00009D0B  11E2              adc dx,sp
00009D0D  AC                lodsb
00009D0E  259F1A            and ax,0x1a9f
00009D11  4F                dec di
00009D12  80BA6B04D8        cmp byte [bp+si+0x46b],0xd8
00009D17  11F7              adc di,si
00009D19  81BA542A6081      cmp word [bp+si+0x2a54],0x8160
00009D1F  205D0F            and [di+0xf],bl
00009D22  0115              add [di],dx
00009D24  2A14              sub dl,[si]
00009D26  3936F74B          cmp [0x4bf7],si
00009D2A  BC3D8D            mov sp,0x8d3d
00009D2D  57                push di
00009D2E  81D01DC1          adc ax,0xc11d
00009D32  5D                pop bp
00009D33  4A                dec dx
00009D34  D1CD              ror bp,1
00009D36  0026263D          add [0x3d26],ah
00009D3A  89DE              mov si,bx
00009D3C  B4EB              mov ah,0xeb
00009D3E  1381EBD5          adc ax,[bx+di-0x2a15]
00009D42  6E                outsb
00009D43  70E8              jo 0x9d2d
00009D45  58                pop ax
00009D46  A09E5C            mov al,[0x5c9e]
00009D49  B722              mov bh,0x22
00009D4B  0104              add [si],ax
00009D4D  EA07137E0B        jmp 0xb7e:0x1307
00009D52  3F                aas
00009D53  0FC2AFD948EE      cmpps xmm5,oword [bx+0x48d9],byte 0xee
00009D59  5C                pop sp
00009D5A  013C              add [si],di
00009D5C  5B                pop bx
00009D5D  4A                dec dx
00009D5E  F4                hlt
00009D5F  8518              test [bx+si],bx
00009D61  64E101            fs loope 0x9d65
00009D64  D911              fst dword [bx+di]
00009D66  F7620D            mul word [bp+si+0xd]
00009D69  005B23            add [bp+di+0x23],bl
00009D6C  BE2B72            mov si,0x722b
00009D6F  F600CB            test byte [bx+si],0xcb
00009D72  06                push es
00009D73  B96F17            mov cx,0x176f
00009D76  41                inc cx
00009D77  41                inc cx
00009D78  26BA031E          es mov dx,0x1e03
00009D7C  52                push dx
00009D7D  0320              add sp,[bx+si]
00009D7F  5B                pop bx
00009D80  F4                hlt
00009D81  35D24A            xor ax,0x4ad2
00009D84  260E              es push cs
00009D86  B50C              mov ch,0xc
00009D88  2B6740            sub sp,[bx+0x40]
00009D8B  708E              jo 0x9d1b
00009D8D  06                push es
00009D8E  4A                dec dx
00009D8F  81DD0A42          sbb bp,0x420a
00009D93  42                inc dx
00009D94  44                inc sp
00009D95  B683              mov dh,0x83
00009D97  A307D9            mov [0xd907],ax
00009D9A  C3                ret
00009D9B  4A                dec dx
00009D9C  DBB83040          fstp tword [bx+si+0x4030]
00009DA0  96                xchg ax,si
00009DA1  40                inc ax
00009DA2  06                push es
00009DA3  E110              loope 0x9db5
00009DA5  56                push si
00009DA6  6301              arpl [bx+di],ax
00009DA8  857FDA            test [bx-0x26],di
00009DAB  5A                pop dx
00009DAC  0413              add al,0x13
00009DAE  16                push ss
00009DAF  0CE1              or al,0xe1
00009DB1  19A36BD9          sbb [bp+di-0x2695],sp
00009DB5  0B456B            or ax,[di+0x6b]
00009DB8  F4                hlt
00009DB9  A85A              test al,0x5a
00009DBB  06                push es
00009DBC  D7                xlatb
00009DBD  DF1B              fistp word [bp+di]
00009DBF  2A31              sub dh,[bx+di]
00009DC1  878251A3          xchg [bp+si-0x5caf],ax
00009DC5  93                xchg ax,bx
00009DC6  D01B              rcr byte [bp+di],1
00009DC8  AC                lodsb
00009DC9  F6D6              not dh
00009DCB  7519              jnz 0x9de6
00009DCD  36DA0A            fimul dword [ss:bp+si]
00009DD0  41                inc cx
00009DD1  8A975210          mov dl,[bx+0x1052]
00009DD5  F7D0              not ax
00009DD7  DFF7              fcomip st7
00009DD9  56                push si
00009DDA  BFDBDF            mov di,0xdfdb
00009DDD  D4CB              aam 0xcb
00009DDF  6D                insw
00009DE0  E72D              out 0x2d,ax
00009DE2  2AF2              sub dh,dl
00009DE4  A9F068            test ax,0x68f0
00009DE7  F8                clc
00009DE8  02E4              add ah,ah
00009DEA  CD00              int 0x0
00009DEC  88792A            mov [bx+di+0x2a],bh
00009DEF  3F                aas
00009DF0  A4                movsb
00009DF1  8B5E14            mov bx,[bp+0x14]
00009DF4  17                pop ss
00009DF5  37                aaa
00009DF6  7FE8              jg 0x9de0
00009DF8  EF                out dx,ax
00009DF9  368A87CE0B        mov al,[ss:bx+0xbce]
00009DFE  5A                pop dx
00009DFF  EE                out dx,al
00009E00  C013F6            rcl byte [bp+di],byte 0xf6
00009E03  DB                db 0xdb
00009E04  3652              ss push dx
00009E06  304610            xor [bp+0x10],al
00009E09  36E177            ss loope 0x9e83
00009E0C  C8B9FC40          enter 0xfcb9,0x40
00009E10  BFC24E            mov di,0x4ec2
00009E13  39F7              cmp di,si
00009E15  730C              jnc 0x9e23
00009E17  57                push di
00009E18  3F                aas
00009E19  7A8A              jpe 0x9da5
00009E1B  2488              and al,0x88
00009E1D  258B41            and ax,0x418b
00009E20  54                push sp
00009E21  A893              test al,0x93
00009E23  8CD6              mov si,ss
00009E25  C45A47            les bx,[bp+si+0x47]
00009E28  06                push es
00009E29  4D                dec bp
00009E2A  7097              jo 0x9dc3
00009E2C  8B3F              mov di,[bx]
00009E2E  80160E82B6        adc byte [0x820e],0xb6
00009E33  D15D2A            rcr word [di+0x2a],1
00009E36  6E                outsb
00009E37  47                inc di
00009E38  8B5604            mov dx,[bp+0x4]
00009E3B  F6A7168A          mul byte [bx-0x75ea]
00009E3F  50                push ax
00009E40  A4                movsb
00009E41  2CA6              sub al,0xa6
00009E43  3015              xor [di],dl
00009E45  D5E8              aad 0xe8
00009E47  321665C2          xor dl,[0xc265]
00009E4B  78D4              js 0x9e21
00009E4D  FF706F            push word [bx+si+0x6f]
00009E50  6964635853        imul sp,[si+0x63],word 0x5358
00009E55  FF4625            inc word [bp+0x25]
00009E58  000C              add [si],cl
00009E5A  CB                retf
00009E5B  64CB              fs retf
00009E5D  12FF              adc bh,bh
00009E5F  CB                retf
00009E60  BFCAC0            mov di,0xc0ca
00009E63  CADDCA            retf 0xcadd
00009E66  70DD              jo 0x9e45
00009E68  CACE01            retf 0x1ce
00009E6B  D3FD              sar bp,cl
00009E6D  CA77CA            retf 0xca77
00009E70  B2CA              mov dl,0xca
00009E72  D8C0              fadd st0
00009E74  0F2BBF3912        movntps oword [bx+0x1239],xmm7
00009E79  156711            adc ax,0x1167
00009E7C  5E                pop si
00009E7D  FD                std
00009E7E  013C              add [si],di
00009E80  257407            and ax,0x774
00009E83  98                cbw
00009E84  16                push ss
00009E85  66A885            o32 test al,0x85
00009E88  3B11              cmp dx,[bx+di]
00009E8A  53                push bx
00009E8B  8A20              mov ah,[bx+si]
00009E8D  58                pop ax
00009E8E  1D2D57            sbb ax,0x572d
00009E91  1B09              sbb cx,[bx+di]
00009E93  4D                dec bp
00009E94  0030              add [bx+si],dh
00009E96  43                inc bx
00009E97  C10914            ror word [bx+di],byte 0x14
00009E9A  40                inc ax
00009E9B  AA                stosb
00009E9C  F5                cmc
00009E9D  872D              xchg [di],bp
00009E9F  6E                outsb
00009EA0  302C              xor [si],ch
00009EA2  30885508          xor [bx+si+0x855],cl
00009EA6  C1                db 0xc1
00009EA7  B7F2              mov bh,0xf2
00009EA9  7F09              jg 0x9eb4
00009EAB  770D              ja 0x9eba
00009EAD  6B4EFAB5          imul cx,[bp-0x6],byte -0x4b
00009EB1  0A4700            or al,[bx+0x0]
00009EB4  0F                db 0x0f
00009EB5  3EEBB7            ds jmp short 0x9e6f
00009EB8  E42A              in al,0x2a
00009EBA  6C                insb
00009EBB  759A              jnz 0x9e57
00009EBD  06                push es
00009EBE  048F              add al,0x8f
00009EC0  8B05              mov ax,[di]
00009EC2  1B620E            sbb sp,[bp+si+0xe]
00009EC5  F200BFC7C9        repne add [bx-0x3639],bh
00009ECA  1F                pop ds
00009ECB  D4C9              aam 0xc9
00009ECD  8D                db 0x8d
00009ECE  C17C0246          sar word [si+0x2],byte 0x46
00009ED2  65                gs
00009ED3  FE                db 0xfe
00009ED4  FE8B45FE          dec byte [bp+di-0x1bb]
00009ED8  EB94              jmp short 0x9e6e
00009EDA  E004              loopne 0x9ee0
00009EDC  AD                lodsw
00009EDD  EBC6              jmp short 0x9ea5
00009EDF  02C1              add al,cl
00009EE1  DB                db 0xdb
00009EE2  7513              jnz 0x9ef7
00009EE4  74F4              jz 0x9eda
00009EE6  FE                db 0xfe
00009EE7  68DF0B            push word 0xbdf
00009EEA  50                push ax
00009EEB  F8                clc
00009EEC  041E              add al,0x1e
00009EEE  FF01              inc word [bx+di]
00009EF0  3A44BE            cmp al,[si-0x42]
00009EF3  5C                pop sp
00009EF4  A98D7E            test ax,0x7e8d
00009EF7  EE                out dx,al
00009EF8  0A166389          or dl,[0x8963]
00009EFC  E620              out 0x20,al
00009EFE  DEA01E8B          fisub word [bx+si-0x74e2]
00009F02  FC                cld
00009F03  A0D0E9            mov al,[0xe9d0]
00009F06  41                inc cx
00009F07  37                aaa
00009F08  F9                stc
00009F09  6940EB535F        imul ax,[bx+si-0x15],word 0x5f53
00009F0E  5B                pop bx
00009F0F  1E                push ds
00009F10  218BCD7D          and [bp+di+0x7dcd],cx
00009F14  FE                db 0xfe
00009F15  EB10              jmp short 0x9f27
00009F17  68EB5E            push word 0x5eeb
00009F1A  46                inc si
00009F1B  8B7CFC            mov di,[si-0x4]
00009F1E  ED                in ax,dx
00009F1F  0B8E6CB8          or cx,[bp-0x4794]
00009F23  56                push si
00009F24  D1BF205E          sar word [bx+0x5e20],1
00009F28  1A0D              sbb cl,[di]
00009F2A  BF088E            mov di,0x8e08
00009F2D  30D0              xor al,dl
00009F2F  BF0AD4            mov di,0xd40a
00009F32  A3BFAA            mov [0xaabf],ax
00009F35  EE                out dx,al
00009F36  362B04            sub ax,[ss:si]
00009F39  8DB47C25          lea si,[si+0x257c]
00009F3D  44                inc sp
00009F3E  2D9F54            sub ax,0x549f
00009F41  BD220C            mov bp,0xc22
00009F44  46                inc si
00009F45  46                inc si
00009F46  BA09FE            mov dx,0xfe09
00009F49  99                cwd
00009F4A  56                push si
00009F4B  888CA5CB          mov [si-0x345b],cl
00009F4F  8A572D            mov dl,[bx+0x2d]
00009F52  F612              not byte [bp+si]
00009F54  FF                db 0xff
00009F55  D9FE              fsin
00009F57  71F8              jno 0x9f51
00009F59  EBAE              jmp short 0x9f09
00009F5B  B83FDD            mov ax,0xdd3f
00009F5E  20E5              and ch,ah
00009F60  FD                std
00009F61  5C                pop sp
00009F62  D1AEE7B4          shr word [bp-0x4b19],1
00009F66  29ED              sub bp,bp
00009F68  5C                pop sp
00009F69  C6                db 0xc6
00009F6A  08DD              or ch,bl
00009F6C  111A              adc [bp+si],bx
00009F6E  BF2F79            mov di,0x792f
00009F71  A802              test al,0x2
00009F73  7468              jz 0x9fdd
00009F75  4B                dec bx
00009F76  50                push ax
00009F77  6B51C37C          imul dx,[bx+di-0x3d],byte +0x7c
00009F7B  0E                push cs
00009F7C  44                inc sp
00009F7D  2F                das
00009F7E  DCC0              fadd to st0
00009F80  FD                std
00009F81  FF75F0            push word [di-0x10]
00009F84  F0D0976553        lock rcl byte [bx+0x5365],1
00009F89  48                dec ax
00009F8A  C2093B            ret 0x3b09
00009F8D  E0AD              loopne 0x9f3c
00009F8F  FD                std
00009F90  22EB              and ch,bl
00009F92  FF                db 0xff
00009F93  ED                in ax,dx
00009F94  221A              and bl,[bp+si]
00009F96  0B03              or ax,[bp+di]
00009F98  56                push si
00009F99  AC                lodsb
00009F9A  9C                pushf
00009F9B  2354B5            and dx,[si-0x4b]
00009F9E  F2E9A0EC          bnd jmp 0x8c42
00009FA2  094A05            or [bp+si+0x5],cx
00009FA5  6F                outsw
00009FA6  82                db 0x82
00009FA7  391F              cmp [bx],bx
00009FA9  15FFA2            adc ax,0xa2ff
00009FAC  3E1F              ds pop ds
00009FAE  6A13              push byte +0x13
00009FB0  68381F            push word 0x1f38
00009FB3  FF                db 0xff
00009FB4  E8BDD4            call 0x7474
00009FB7  F6064E1F01        test byte [0x1f4e],0x1
00009FBC  16                push ss
00009FBD  82                db 0x82
00009FBE  DB                db 0xdb
00009FBF  A0153C            mov al,[0x3c15]
00009FC2  8003DF            add byte [bp+di],0xdf
00009FC5  8502              test [bp+si],ax
00009FC7  7508              jnz 0x9fd1
00009FC9  B8E402            mov ax,0x2e4
00009FCC  00C3              add bl,al
00009FCE  3CD3              cmp al,0xd3
00009FD0  A815              test al,0x15
00009FD2  5C                pop sp
00009FD3  7B95              jpo 0x9f6a
00009FD5  6BFF38            imul di,di,byte +0x38
00009FD8  51                push cx
00009FD9  1F                pop ds
00009FDA  08A2563C          or [bp+si+0x3c56],ah
00009FDE  50                push ax
00009FDF  BD84D4            mov bp,0xd484
00009FE2  8A5BA2            mov bl,[bp+di-0x5e]
00009FE5  1F                pop ds
00009FE6  DB                db 0xdb
00009FE7  FECA              dec dl
00009FE9  3E662888341D      o32 sub [ds:bx+si+0x1d34],cl
00009FEF  4B                dec bx
00009FF0  DC10              fcom qword [bx+si]
00009FF2  101A              adc [bp+si],bl
00009FF4  CD80              int 0x80
00009FF6  54                push sp
00009FF7  59                pop cx
00009FF8  B688              mov dh,0x88
00009FFA  07                pop es
00009FFB  08D4              or ah,dl
00009FFD  0546EC            add ax,0xec46
0000A000  FE04              inc byte [si]
0000A002  53                push bx
0000A003  88D0              mov al,dl
0000A005  2407              and al,0x7
0000A007  2DC052            sub ax,0x52c0
0000A00A  EC                in al,dx
0000A00B  F01105            lock adc [di],ax
0000A00E  5E                pop si
0000A00F  BF646A            mov di,0x6a64
0000A012  11E8              adc ax,bp
0000A014  EC                in al,dx
0000A015  46                inc si
0000A016  0152B1            add [bp+si-0x4f],dx
0000A019  C9                leave
0000A01A  11CC              adc sp,cx
0000A01C  15DD29            adc ax,0x29dd
0000A01F  0375B3            add si,[di-0x4d]
0000A022  5D                pop bp
0000A023  07                pop es
0000A024  360904            or [ss:si],ax
0000A027  690990C8          imul cx,[bx+di],word 0xc890
0000A02B  49                dec cx
0000A02C  0AC6              or al,dh
0000A02E  12064340          adc al,[0x4043]
0000A032  36A857            ss test al,0x57
0000A035  0B0A              or cx,[bp+si]
0000A037  D495              aam 0x95
0000A039  BBA457            mov bx,0x57a4
0000A03C  090687CF          or [0xcf87],ax
0000A040  CC                int3
0000A041  CAA326            retf 0x26a3
0000A044  710C              jno 0xa052
0000A046  3428              xor al,0x28
0000A048  99                cwd
0000A049  C9                leave
0000A04A  F3760F            rep jna 0xa05c
0000A04D  FC                cld
0000A04E  3339              xor di,[bx+di]
0000A050  DE5533            ficom word [di+0x33]
0000A053  50                push ax
0000A054  C85503E6          enter 0x355,0xe6
0000A058  200E56DF          and [0xdf56],cl
0000A05C  8914              mov [si],dx
0000A05E  3F                aas
0000A05F  5F                pop di
0000A060  82                db 0x82
0000A061  0BD4              or dx,sp
0000A063  48                dec ax
0000A064  00784A            add [bx+si+0x4a],bh
0000A067  95                xchg ax,bp
0000A068  D58B              aad 0x8b
0000A06A  0914              or [si],dx
0000A06C  BCF777            mov sp,0x77f7
0000A06F  0B4244            or ax,[bp+si+0x44]
0000A072  683EC1            push word 0xc13e
0000A075  ED                in ax,dx
0000A076  72EC              jc 0xa064
0000A078  D6                salc
0000A079  CC                int3
0000A07A  37                aaa
0000A07B  8BE3              mov sp,bx
0000A07D  50                push ax
0000A07E  B401              mov ah,0x1
0000A080  EAB8F302FD        jmp 0xfd02:0xf3b8
0000A085  881C              mov [si],bl
0000A087  EC                in al,dx
0000A088  0461              add al,0x61
0000A08A  FA                cli
0000A08B  8D24              lea sp,[si]
0000A08D  AB                stosw
0000A08E  37                aaa
0000A08F  88A002A8          mov [bx+si-0x57fe],ah
0000A093  67A4              a32 movsb
0000A095  046D              add al,0x6d
0000A097  0301              add ax,[bx+di]
0000A099  12E2              adc ah,dl
0000A09B  D005              rol byte [di],1
0000A09D  DF                db 0xdf
0000A09E  E110              loope 0xa0b0
0000A0A0  B824C8            mov ax,0xc824
0000A0A3  15BE18            adc ax,0x18be
0000A0A6  FE                db 0xfe
0000A0A7  17                pop ss
0000A0A8  A90A3C            test ax,0x3c0a
0000A0AB  0C09              or al,0x9
0000A0AD  8A16B03D          mov dl,[0x3db0]
0000A0B1  2E384C19          cmp [cs:si+0x19],cl
0000A0B5  089D4202          or [di+0x242],bl
0000A0B9  AF                scasw
0000A0BA  AD                lodsw
0000A0BB  EE                out dx,al
0000A0BC  014AAE            add [bp+si-0x52],cx
0000A0BF  B8F36A            mov ax,0x6af3
0000A0C2  07                pop es
0000A0C3  AA                stosb
0000A0C4  77C8              ja 0xa08e
0000A0C6  A4                movsb
0000A0C7  6B4133BD          imul ax,[bx+di+0x33],byte -0x43
0000A0CB  6A20              push byte +0x20
0000A0CD  A9077B            test ax,0x7b07
0000A0D0  BB0620            mov bx,0x2006
0000A0D3  B2A5              mov dl,0xa5
0000A0D5  49                dec cx
0000A0D6  8D447A            lea ax,[si+0x7a]
0000A0D9  DB457B            fild dword [di+0x7b]
0000A0DC  76F6              jna 0xa0d4
0000A0DE  E90BE9            jmp 0x89ec
0000A0E1  7106              jno 0xa0e9
0000A0E3  6E                outsb
0000A0E4  0B44ED            or ax,[si-0x13]
0000A0E7  0C75              or al,0x75
0000A0E9  55                push bp
0000A0EA  57                push di
0000A0EB  055671            add ax,0x7156
0000A0EE  8D                db 0x8d
0000A0EF  C5                db 0xc5
0000A0F0  D4B0              aam 0xb0
0000A0F2  40                inc ax
0000A0F3  B64C              mov dh,0x4c
0000A0F5  2095EDB0          and [di-0x4f13],dl
0000A0F9  20069A10          and [0x109a],al
0000A0FD  105908            adc [bx+di+0x8],bl
0000A100  A00881            mov al,[0x8108]
0000A103  53                push bx
0000A104  7172              jno 0xa178
0000A106  085234            or [bp+si+0x34],dl
0000A109  85E9              test cx,bp
0000A10B  7A1C              jpe 0xa129
0000A10D  02B51E8C          add dh,[di-0x73e2]
0000A111  99                cwd
0000A112  00C1              add cl,al
0000A114  F67183            div byte [bx+di-0x7d]
0000A117  C2B6E1            ret 0xe1b6
0000A11A  56                push si
0000A11B  7DDA              jnl 0xa0f7
0000A11D  D1959407          rcl word [di+0x794],1
0000A121  11BCF1F4          adc [si-0xb0f],di
0000A125  F9                stc
0000A126  FFCA              dec dx
0000A128  2B01              sub ax,[bx+di]
0000A12A  77EB              ja 0xa117
0000A12C  2C99              sub al,0x99
0000A12E  2F                das
0000A12F  0D502F            or ax,0x2f50
0000A132  7D77              jnl 0xa1ab
0000A134  09758A            or [di-0x76],si
0000A137  11A5D4EA          adc [di-0x152c],sp
0000A13B  80F876            cmp al,0x76
0000A13E  95                xchg ax,bp
0000A13F  5E                pop si
0000A140  C806E6B1          enter 0xe606,0xb1
0000A144  14BF              adc al,0xbf
0000A146  2DEFFF            sub ax,0xffef
0000A149  CC                int3
0000A14A  0001              add [bx+di],al
0000A14C  000654C2          add [0xc254],al
0000A150  5C                pop sp
0000A151  0270E8            add dh,[bx+si-0x18]
0000A154  5E                pop si
0000A155  F6AE756E          imul byte [bp+0x6e75]
0000A159  3601C0            ss add ax,ax
0000A15C  A09E9F            mov al,[0x9f9e]
0000A15F  03D8              add bx,ax
0000A161  2B13              sub dx,[bp+di]
0000A163  57                push di
0000A164  92                xchg ax,dx
0000A165  B56B              mov ch,0x6b
0000A167  93                xchg ax,bx
0000A168  326F1B            xor ch,[bx+0x1b]
0000A16B  F017              lock pop ss
0000A16D  61                popa
0000A16E  114AAA            adc [bp+si-0x56],cx
0000A171  EE                out dx,al
0000A172  AB                stosw
0000A173  EC                in al,dx
0000A174  9B06              wait push es
0000A176  FE                db 0xfe
0000A177  F719              neg word [bx+di]
0000A179  D389DA37          ror word [bx+di+0x37da],cl
0000A17D  BA2072            mov dx,0x7220
0000A180  6AF2              push byte -0xe
0000A182  C6                db 0xc6
0000A183  90                nop
0000A184  FA                cli
0000A185  28B96FAE          sub [bx+di-0x5191],bh
0000A189  47                inc di
0000A18A  13F8              adc di,ax
0000A18C  48                dec ax
0000A18D  323B              xor bh,[bp+di]
0000A18F  56                push si
0000A190  F8                clc
0000A191  009DA9B8          add [di-0x4757],bl
0000A195  677606            jna 0xa19e
0000A198  A844              test al,0x44
0000A19A  6F                outsw
0000A19B  1018              adc [bx+si],bl
0000A19D  E5B7              in ax,0xb7
0000A19F  17                pop ss
0000A1A0  FC                cld
0000A1A1  72AA              jc 0xa14d
0000A1A3  1C9B              sbb al,0x9b
0000A1A5  11F2              adc dx,si
0000A1A7  7210              jc 0xa1b9
0000A1A9  07                pop es
0000A1AA  0F89D55B          jns near 0xfd83
0000A1AE  9C                pushf
0000A1AF  F251              repne push cx
0000A1B1  5A                pop dx
0000A1B2  D38B06AD          ror word [bp+di-0x52fa],cl
0000A1B6  0B14              or dx,[si]
0000A1B8  56                push si
0000A1B9  DD                db 0xdd
0000A1BA  FB                sti
0000A1BB  D06402            shl byte [si+0x2],1
0000A1BE  8A8547E7          mov al,[di-0x18b9]
0000A1C2  7F06              jg 0xa1ca
0000A1C4  3C80              cmp al,0x80
0000A1C6  0F8662FF          jna near 0xa12c
0000A1CA  0E                push cs
0000A1CB  6E                outsb
0000A1CC  1329              adc bp,[bx+di]
0000A1CE  B632              mov dh,0x32
0000A1D0  F4                hlt
0000A1D1  0B0A              or cx,[bp+si]
0000A1D3  A7                cmpsw
0000A1D4  38550A            cmp [di+0xa],dl
0000A1D7  CE                into
0000A1D8  D905              fld dword [di]
0000A1DA  F055              lock push bp
0000A1DC  42                inc dx
0000A1DD  42                inc dx
0000A1DE  E644              out 0x44,al
0000A1E0  1D7607            sbb ax,0x776
0000A1E3  2102              and [bp+si],ax
0000A1E5  4E                dec si
0000A1E6  2514B0            and ax,0xb014
0000A1E9  281E4764          sub [0x6447],bl
0000A1ED  FF0B              dec word [bp+di]
0000A1EF  4A                dec dx
0000A1F0  9D                popf
0000A1F1  C42C              les bp,[si]
0000A1F3  27                daa
0000A1F4  7308              jnc 0xa1fe
0000A1F6  830C69            or word [si],byte +0x69
0000A1F9  BE5244            mov si,0x4452
0000A1FC  C68583DE27        mov byte [di-0x217d],0x27
0000A201  E9F4FD            jmp 0x9ff8
0000A204  007D9E            add [di-0x62],bh
0000A207  B98854            mov cx,0x5488
0000A20A  37                aaa
0000A20B  C7                db 0xc7
0000A20C  B8110C            mov ax,0xc11
0000A20F  4B                dec bx
0000A210  89F9              mov cx,di
0000A212  1046AF            adc [bp-0x51],al
0000A215  3D1E56            cmp ax,0x561e
0000A218  68AA13            push word 0x13aa
0000A21B  5C                pop sp
0000A21C  CD44              int 0x44
0000A21E  80052C            add byte [di],0x2c
0000A221  0B745D            or si,[si+0x5d]
0000A224  B69F              mov dh,0x9f
0000A226  DB78FF            fstp tword [bx+si-0x1]
0000A229  0497              add al,0x97
0000A22B  42                inc dx
0000A22C  5E                pop si
0000A22D  82                db 0x82
0000A22E  23999ACD          and bx,[bx+di-0x3266]
0000A232  E81501            call 0xa34a
0000A235  00BFBDAB          add [bx-0x5443],bh
0000A239  304E62            xor [bp+0x62],cl
0000A23C  8B8AA78E          mov cx,[bp+si-0x7159]
0000A240  FC                cld
0000A241  83ED7A            sub bp,byte +0x7a
0000A244  8BB68412          mov si,[bp+0x1284]
0000A248  4F                dec di
0000A249  C4                db 0xc4
0000A24A  EC                in al,dx
0000A24B  51                push cx
0000A24C  DFB2361F          fbstp tword [bp+si+0x1f36]
0000A250  1A7C0E            sbb bh,[si+0xe]
0000A253  F66A1A            imul byte [bp+si+0x1a]
0000A256  681557            push word 0x5715
0000A259  E0A4              loopne 0xa1ff
0000A25B  FA                cli
0000A25C  EE                out dx,al
0000A25D  7DE9              jnl 0xa248
0000A25F  55                push bp
0000A260  011A              add [bp+si],bx
0000A262  70EC              jo 0xa250
0000A264  343D              xor al,0x3d
0000A266  7A5F              jpe 0xa2c7
0000A268  A1EDB6            mov ax,[0xb6ed]
0000A26B  F0A022B7          lock mov al,[0xb722]
0000A26F  05F18B            add ax,0x8bf1
0000A272  1403              adc al,0x3
0000A274  5C                pop sp
0000A275  28B67CA3          sub [bp-0x5c84],dh
0000A279  020E5C6D          add cl,[0x6d5c]
0000A27D  365C              ss pop sp
0000A27F  D6                salc
0000A280  6213              bound dx,[bp+di]
0000A282  FB                sti
0000A283  8D18              lea bx,[bx+si]
0000A285  88FF              mov bh,bh
0000A287  D929              fldcw [bx+di]
0000A289  0E                push cs
0000A28A  6D                insw
0000A28B  0CF6              or al,0xf6
0000A28D  41                inc cx
0000A28E  42                inc dx
0000A28F  BCD5FB            mov sp,0xfbd5
0000A292  1AA1D829          sbb ah,[bx+di+0x29d8]
0000A296  07                pop es
0000A297  2035              and [di],dh
0000A299  B00D              mov al,0xd
0000A29B  6A89              push byte -0x77
0000A29D  B587              mov ch,0x87
0000A29F  65B206            gs mov dl,0x6
0000A2A2  E6C2              out 0xc2,al
0000A2A4  86E9              xchg cl,ch
0000A2A6  E347              jcxz 0xa2ef
0000A2A8  37                aaa
0000A2A9  A154BB            mov ax,[0xbb54]
0000A2AC  7B41              jpo 0xa2ef
0000A2AE  F8                clc
0000A2AF  1C65              sbb al,0x65
0000A2B1  09B64605          or [bp+0x546],si
0000A2B5  0B5A44            or bx,[bp+si+0x44]
0000A2B8  DA750E            fidiv dword [di+0xe]
0000A2BB  0AED              or ch,ch
0000A2BD  ED                in ax,dx
0000A2BE  57                push di
0000A2BF  48                dec ax
0000A2C0  B60B              mov dh,0xb
0000A2C2  4A                dec dx
0000A2C3  20C3              and bl,al
0000A2C5  3F                aas
0000A2C6  2E6D              cs insw
0000A2C8  44                inc sp
0000A2C9  1213              adc dl,[bp+di]
0000A2CB  F21489            repne adc al,0x89
0000A2CE  47                inc di
0000A2CF  4C                dec sp
0000A2D0  F5                cmc
0000A2D1  4E                dec si
0000A2D2  837C5AB0          cmp word [si+0x5a],byte -0x50
0000A2D6  EB1F              jmp short 0xa2f7
0000A2D8  120E693F          adc cl,[0x3f69]
0000A2DC  99                cwd
0000A2DD  A7                cmpsw
0000A2DE  4C                dec sp
0000A2DF  0DF201            or ax,0x1f2
0000A2E2  B550              mov ch,0x50
0000A2E4  21BA244C          and [bp+si+0x4c24],di
0000A2E8  143B              adc al,0x3b
0000A2EA  58                pop ax
0000A2EB  F8                clc
0000A2EC  FC                cld
0000A2ED  7717              ja 0xa306
0000A2EF  7778              ja 0xa369
0000A2F1  56                push si
0000A2F2  C0                db 0xc0
0000A2F3  3412              xor al,0x12
0000A2F5  14DF              adc al,0xdf
0000A2F7  41                inc cx
0000A2F8  E8BAFB            call 0x9eb5
0000A2FB  80CCF6            or ah,0xf6
0000A2FE  0209              add cl,[bx+di]
0000A300  47                inc di
0000A301  3365C4            xor sp,[di-0x3c]
0000A304  3214              xor dl,[si]
0000A306  B05E              mov al,0x5e
0000A308  06                push es
0000A309  2B4072            sub ax,[bx+si+0x72]
0000A30C  40                inc ax
0000A30D  04DB              add al,0xdb
0000A30F  8C0C              mov [si],cs
0000A311  43                inc bx
0000A312  2AB6BDFE          sub dh,[bp-0x143]
0000A316  B8CBA1            mov ax,0xa1cb
0000A319  748B              jz 0xa2a6
0000A31B  7617              jna 0xa334
0000A31D  40                inc ax
0000A31E  15C04F            adc ax,0x4fc0
0000A321  D872E6            fdiv dword [bp+si-0x1a]
0000A324  16                push ss
0000A325  55                push bp
0000A326  7420              jz 0xa348
0000A328  2DABAB            sub ax,0xabab
0000A32B  BA6670            mov dx,0x7066
0000A32E  8B86A343          mov ax,[bp+0x43a3]
0000A332  CD6D              int 0x6d
0000A334  BEA250            mov si,0x50a2
0000A337  BB4FBA            mov bx,0xba4f
0000A33A  4B                dec bx
0000A33B  0E                push cs
0000A33C  9A0980BA87        call 0x87ba:0x8009
0000A341  EA22851280        jmp 0x8012:0x8522
0000A346  7F23              jg 0xa36b
0000A348  D4AD              aam 0xad
0000A34A  A1FD40            mov ax,[0x40fd]
0000A34D  2A525F            sub dl,[bp+si+0x5f]
0000A350  7D4F              jnl 0xa3a1
0000A352  0CE8              or al,0xe8
0000A354  8498F92A          test [bx+si+0x2af9],bl
0000A358  3696              ss xchg ax,si
0000A35A  7362              jnc 0xa3be
0000A35C  DD0B              fisttp qword [bp+di]
0000A35E  66FC              o32 cld
0000A360  F8                clc
0000A361  AC                lodsb
0000A362  5C                pop sp
0000A363  1482              adc al,0x82
0000A365  DC2ED1EB          fsubr qword [0xebd1]
0000A369  01360153          add [0x5301],si
0000A36D  50                push ax
0000A36E  E0F1              loopne 0xa361
0000A370  6D                insw
0000A371  F4                hlt
0000A372  E6F3              out 0xf3,al
0000A374  10EE              adc dh,ch
0000A376  DB5633            fist dword [bp+0x33]
0000A379  6A2C              push byte +0x2c
0000A37B  50                push ax
0000A37C  EAD66C44F5        jmp 0xf544:0x6cd6
0000A381  8D667A            lea sp,[bp+0x7a]
0000A384  12F3              adc dh,bl
0000A386  628E5988          bound cx,[bp-0x77a7]
0000A38A  36898BC1C1        mov [ss:bp+di-0x3e3f],cx
0000A38F  C747515B09        mov word [bx+0x51],0x95b
0000A394  0D4215            or ax,0x1542
0000A397  C142BB1E          rol word [bp+si-0x45],byte 0x1e
0000A39B  C880A462          enter 0xa480,0x62
0000A39F  A4                movsb
0000A3A0  0E                push cs
0000A3A1  69A6C218EAEA      imul sp,[bp+0x18c2],word 0xeaea
0000A3A7  AA                stosb
0000A3A8  55                push bp
0000A3A9  68A741            push word 0x41a7
0000A3AC  D0500C            rcl byte [bx+si+0xc],1
0000A3AF  F6B5DD18          div byte [di+0x18dd]
0000A3B3  BFE3A5            mov di,0xa5e3
0000A3B6  CF                iret
0000A3B7  7E7A              jng 0xa433
0000A3B9  EA55AA2E75        jmp 0x752e:0xaa55
0000A3BE  03BC5B01          add di,[si+0x15b]
0000A3C2  07                pop es
0000A3C3  99                cwd
0000A3C4  36EC              ss in al,dx
0000A3C6  0120              add [bx+si],sp
0000A3C8  99                cwd
0000A3C9  D3BC18E8          sar word [si-0x17e8],cl
0000A3CD  0021              add [bx+di],ah
0000A3CF  4A                dec dx
0000A3D0  2E8C11            mov [cs:bx+di],ss
0000A3D3  D0B8475A          sar byte [bx+si+0x5a47],1
0000A3D7  1135              adc [di],si
0000A3D9  A9B132            test ax,0x32b1
0000A3DC  CA4697            retf 0x9746
0000A3DF  FB                sti
0000A3E0  1E                push ds
0000A3E1  E83A42            call 0xe61e
0000A3E4  4D                dec bp
0000A3E5  7BCA              jpo 0xa3b1
0000A3E7  1E                push ds
0000A3E8  000E951B          add [0x1b95],cl
0000A3EC  848CDD56          test [si+0x56dd],cl
0000A3F0  F65648            not byte [bp+0x48]
0000A3F3  213B              and [bp+di],di
0000A3F5  4E                dec si
0000A3F6  CF                iret
0000A3F7  4D                dec bp
0000A3F8  F1                int1
0000A3F9  754D              jnz 0xa448
0000A3FB  B0E1              mov al,0xe1
0000A3FD  D4CD              aam 0xcd
0000A3FF  7105              jno 0xa406
0000A401  94                xchg ax,sp
0000A402  D874E0            fdiv dword [si-0x20]
0000A405  E0BA              loopne 0xa3c1
0000A407  DE74AA            fidiv word [si-0x56]
0000A40A  6BBADE03A6        imul di,[bp+si+0x3de],byte -0x5a
0000A40F  DA9AD6D2          ficomp dword [bp+si-0x2d2a]
0000A413  DE02              fiadd word [bp+si]
0000A415  C86889DC          enter 0x8968,0xdc
0000A419  D57A              aad 0x7a
0000A41B  F8                clc
0000A41C  B114              mov cl,0x14
0000A41E  50                push ax
0000A41F  344A              xor al,0x4a
0000A421  DA57B0            ficom dword [bx-0x50]
0000A424  DBDC              fcmovnu st4
0000A426  050510            add ax,0x1005
0000A429  4D                dec bp
0000A42A  2D046E            sub ax,0x6e04
0000A42D  48                dec ax
0000A42E  CC                int3
0000A42F  083A              or [bp+si],bh
0000A431  07                pop es
0000A432  4C                dec sp
0000A433  B569              mov ch,0x69
0000A435  D26508            shl byte [di+0x8],cl
0000A438  13E8              adc bp,ax
0000A43A  91                xchg ax,cx
0000A43B  CE                into
0000A43C  AE                scasb
0000A43D  6382150B          arpl [bp+si+0xb15],ax
0000A441  214000            and [bx+si+0x0],ax
0000A444  17                pop ss
0000A445  DCE1              fsubr to st1
0000A447  EC                in al,dx
0000A448  25F45B            and ax,0x5bf4
0000A44B  080B              or [bp+di],cl
0000A44D  32A3CA60          xor ah,[bp+di+0x60ca]
0000A451  C002D0            rol byte [bp+si],byte 0xd0
0000A454  54                push sp
0000A455  01BB8BC1          add [bp+di-0x3e75],di
0000A459  EA1C5040D1        jmp 0xd140:0x501c
0000A45E  CB                retf
0000A45F  07                pop es
0000A460  B300              mov bl,0x0
0000A462  0B26466E          or sp,[0x6e46]
0000A466  2368F2            and bp,[bx+si-0xe]
0000A469  D97207            fnstenv [bp+si+0x7]
0000A46C  B502              mov ch,0x2
0000A46E  F6                db 0xf6
0000A46F  CA2950            retf 0x5029
0000A472  6E                outsb
0000A473  B279              mov dl,0x79
0000A475  07                pop es
0000A476  D409              aam 0x9
0000A478  0F298CB62E        movaps oword [si+0x2eb6],xmm1
0000A47D  090B              or [bp+di],cx
0000A47F  ED                in ax,dx
0000A480  07                pop es
0000A481  842ECD88          test [0x88cd],ch
0000A485  34BC              xor al,0xbc
0000A487  057215            add ax,0x1572
0000A48A  A0B154            mov al,[0x54b1]
0000A48D  3D116A            cmp ax,0x6a11
0000A490  5D                pop bp
0000A491  83AC115A20        sub word [si+0x5a11],byte +0x20
0000A496  008666A0          add [bp-0x5f9a],al
0000A49A  47                inc di
0000A49B  25756B            and ax,0x6b75
0000A49E  64096704          or [fs:bx+0x4],sp
0000A4A2  95                xchg ax,bp
0000A4A3  C0CB6C            ror bl,byte 0x6c
0000A4A6  40                inc ax
0000A4A7  655F              gs pop di
0000A4A9  5B                pop bx
0000A4AA  211C              and [si],bx
0000A4AC  45                inc bp
0000A4AD  8BFA              mov di,dx
0000A4AF  2BF6              sub si,si
0000A4B1  80BFA1D255        cmp byte [bx-0x2d5f],0x55
0000A4B6  E4B7              in al,0xb7
0000A4B8  06                push es
0000A4B9  FF01              inc word [bx+di]
0000A4BB  8DAAD610          lea bp,[bp+si+0x10d6]
0000A4BF  4B                dec bx
0000A4C0  F65802            neg byte [bx+si+0x2]
0000A4C3  BAD040            mov dx,0x40d0
0000A4C6  2D6BBE            sub ax,0xbe6b
0000A4C9  1C7C              sbb al,0x7c
0000A4CB  AD                lodsw
0000A4CC  C3                ret
0000A4CD  C0BE0132A5        sar byte [bp+0x3201],byte 0xa5
0000A4D2  0AE6              or ah,dh
0000A4D4  2CEA              sub al,0xea
0000A4D6  A11495            mov ax,[0x9514]
0000A4D9  5A                pop dx
0000A4DA  748B              jz 0xa467
0000A4DC  58                pop ax
0000A4DD  5B                pop bx
0000A4DE  0805              or [di],al
0000A4E0  2C08              sub al,0x8
0000A4E2  56                push si
0000A4E3  AD                lodsw
0000A4E4  830B42            or word [bp+di],byte +0x42
0000A4E7  34C4              xor al,0xc4
0000A4E9  47                inc di
0000A4EA  A302D2            mov [0xd202],ax
0000A4ED  65896C0B          mov [gs:si+0xb],bp
0000A4F1  0CB2              or al,0xb2
0000A4F3  0E                push cs
0000A4F4  CB                retf
0000A4F5  1214              adc dl,[si]
0000A4F7  55                push bp
0000A4F8  28DD              sub ch,bl
0000A4FA  17                pop ss
0000A4FB  1E                push ds
0000A4FC  C6                db 0xc6
0000A4FD  16                push ss
0000A4FE  021A              add bl,[bp+si]
0000A500  F0047C            lock add al,0x7c
0000A503  C0175C            rcl byte [bx],byte 0x5c
0000A506  60                pusha
0000A507  72FC              jc 0xa505
0000A509  8847B9            mov [bx-0x47],al
0000A50C  8B04              mov ax,[si]
0000A50E  57                push di
0000A50F  3935              cmp [di],si
0000A511  29B8443B          sub [bx+si+0x3b44],di
0000A515  47                inc di
0000A516  39DE              cmp si,bx
0000A518  B207              mov dl,0x7
0000A51A  04D2              add al,0xd2
0000A51C  04C4              add al,0xc4
0000A51E  E8813F            call 0xe4a2
0000A521  0ADE              or bl,dh
0000A523  6F                outsw
0000A524  0F813CD5          jno near 0x7a64
0000A528  0500AD            add ax,0xad00
0000A52B  E888E0            call 0x85b6
0000A52E  E403              in al,0x3
0000A530  3BAA6007          cmp bp,[bp+si+0x760]
0000A534  07                pop es
0000A535  CB                retf
0000A536  B587              mov ch,0x87
0000A538  54                push sp
0000A539  8A724F            mov dh,[bp+si+0x4f]
0000A53C  82                db 0x82
0000A53D  27                daa
0000A53E  30410B            xor [bx+di+0xb],al
0000A541  8F                db 0x8f
0000A542  688D1F            push word 0x1f8d
0000A545  39D1              cmp cx,dx
0000A547  EF                out dx,ax
0000A548  F6C206            test dl,0x6
0000A54B  80DB5A            sbb bl,0x5a
0000A54E  4C                dec sp
0000A54F  0A74D2            or dh,[si-0x2e]
0000A552  F9                stc
0000A553  3603B865DF        add di,[ss:bx+si-0x209b]
0000A558  08C9              or cl,cl
0000A55A  F9                stc
0000A55B  68726C            push word 0x6c72
0000A55E  19D5              sbb bp,dx
0000A560  D502              aad 0x2
0000A562  52                push dx
0000A563  0E                push cs
0000A564  D0515B            rcl byte [bx+di+0x5b],1
0000A567  7F06              jg 0xa56f
0000A569  C1405DE0          rol word [bx+si+0x5d],byte 0xe0
0000A56D  4C                dec sp
0000A56E  A2D978            mov [0x78d9],al
0000A571  1E                push ds
0000A572  0C17              or al,0x17
0000A574  0E                push cs
0000A575  E2E9              loop 0xa560
0000A577  DABA1040          fidivr dword [bp+si+0x4010]
0000A57B  DA4A7B            fimul dword [bp+si+0x7b]
0000A57E  005807            add [bx+si+0x7],bl
0000A581  E28B              loop 0xa50e
0000A583  735F              jnc 0xa5e4
0000A585  4E                dec si
0000A586  56                push si
0000A587  6A47              push byte +0x47
0000A589  D88AF9A2          fmul dword [bp+si-0x5d07]
0000A58D  6D                insw
0000A58E  7F0B              jg 0xa59b
0000A590  F9                stc
0000A591  FC                cld
0000A592  0B03              or ax,[bp+di]
0000A594  57                push di
0000A595  1211              adc dl,[bx+di]
0000A597  2C7F              sub al,0x7f
0000A599  116ECA            adc [bp-0x36],bp
0000A59C  C2FF06            ret 0x6ff
0000A59F  C0041D            rol byte [si],byte 0x1d
0000A5A2  83F3F6            xor bx,byte -0xa
0000A5A5  F8                clc
0000A5A6  8D4F02            lea cx,[bx+0x2]
0000A5A9  75BE              jnz 0xa569
0000A5AB  222F              and ch,[bx]
0000A5AD  830DB0            or word [di],byte -0x50
0000A5B0  0E                push cs
0000A5B1  51                push cx
0000A5B2  45                inc bp
0000A5B3  7095              jo 0xa54a
0000A5B5  B934DD            mov cx,0xdd34
0000A5B8  44                inc sp
0000A5B9  E859FF            call 0xa515
0000A5BC  B31C              mov bl,0x1c
0000A5BE  08F3              or bl,dh
0000A5C0  F4                hlt
0000A5C1  E812D5            call 0x7ad6
0000A5C4  2542F1            and ax,0xf142
0000A5C7  FD                std
0000A5C8  0B4712            or ax,[bx+0x12]
0000A5CB  750F              jnz 0xa5dc
0000A5CD  FB                sti
0000A5CE  61                popa
0000A5CF  688299            push word 0x9982
0000A5D2  743B              jz 0xa60f
0000A5D4  F67DE6            idiv byte [di-0x1a]
0000A5D7  53                push bx
0000A5D8  8333F4            xor word [bp+di],byte -0xc
0000A5DB  3E25FF06          ds and ax,0x6ff
0000A5DF  F768F5            imul word [bx+si-0xb]
0000A5E2  3500B2            xor ax,0xb200
0000A5E5  06                push es
0000A5E6  F4                hlt
0000A5E7  814B700B01        or word [bp+di+0x70],0x10b
0000A5EC  EAEB037392        jmp 0x9273:0x3eb
0000A5F1  F4                hlt
0000A5F2  CA47C6            retf 0xc647
0000A5F5  39A95B01          cmp [bx+di+0x15b],bp
0000A5F9  9E                sahf
0000A5FA  C1427BED          rol word [bp+si+0x7b],byte 0xed
0000A5FE  B8E70B            mov ax,0xbe7
0000A601  B5E3              mov ch,0xe3
0000A603  83442DBF          add word [si+0x2d],byte -0x41
0000A607  EF                out dx,ax
0000A608  B9EEDA            mov cx,0xdaee
0000A60B  F8                clc
0000A60C  F3E6F5            rep out 0xf5,al
0000A60F  8967B0            mov [bx-0x50],sp
0000A612  C3                ret
0000A613  16                push ss
0000A614  73E3              jnc 0xa5f9
0000A616  3A7A8D            cmp bh,[bp+si-0x73]
0000A619  F20008            repne add [bx+si],cl
0000A61C  BE23EC            mov si,0xec23
0000A61F  0BB84423          or di,[bx+si+0x2344]
0000A623  E646              out 0x46,al
0000A625  E10E              loope 0xa635
0000A627  75DF              jnz 0xa608
0000A629  FE8145B0          inc byte [bx+di-0x4fbb]
0000A62D  C3                ret
0000A62E  D8506C            fcom dword [bx+si+0x6c]
0000A631  46                inc si
0000A632  D408              aam 0x8
0000A634  D1C5              rol bp,1
0000A636  0535BA            add ax,0xba35
0000A639  C9                leave
0000A63A  1DA903            sbb ax,0x3a9
0000A63D  0CB0              or al,0xb0
0000A63F  A2BB7B            mov [0x7bbb],al
0000A642  0C13              or al,0x13
0000A644  DF7F10            fistp qword [bx+0x10]
0000A647  2401              and al,0x1
0000A649  40                inc ax
0000A64A  0235              add dh,[di]
0000A64C  857BEB            test [bp+di-0x15],di
0000A64F  103C              adc [si],bh
0000A651  06                push es
0000A652  DF04              fild word [si]
0000A654  09D6              or si,dx
0000A656  DB9F2910          fistp dword [bx+0x1029]
0000A65A  10DB              adc bl,bl
0000A65C  0E                push cs
0000A65D  CAFE8E            retf 0x8efe
0000A660  54                push sp
0000A661  BC88E9            mov sp,0xe988
0000A664  CB                retf
0000A665  FE09              dec byte [bx+di]
0000A667  10C9              adc cl,cl
0000A669  5E                pop si
0000A66A  F357              rep push di
0000A66C  8A47CD            mov al,[bx-0x33]
0000A66F  50                push ax
0000A670  4C                dec sp
0000A671  354897            xor ax,0x9748
0000A674  BAF62E            mov dx,0x2ef6
0000A677  46                inc si
0000A678  F5                cmc
0000A679  4B                dec bx
0000A67A  90                nop
0000A67B  28E4              sub ah,ah
0000A67D  1F                pop ds
0000A67E  672B6274          sub sp,[edx+0x74]
0000A682  0AA6ED00          or ah,[bp+0xed]
0000A686  4D                dec bp
0000A687  150B74            adc ax,0x740b
0000A68A  080C              or [si],cl
0000A68C  53                push bx
0000A68D  4B                dec bx
0000A68E  232A              and bp,[bp+si]
0000A690  50                push ax
0000A691  0A30              or dh,[bx+si]
0000A693  C3                ret
0000A694  C195095CDD        rcl word [di+0x5c09],byte 0xdd
0000A699  DC02              fadd qword [bp+si]
0000A69B  105322            adc [bp+di+0x22],dl
0000A69E  A02B9D            mov al,[0x9d2b]
0000A6A1  6228              bound bp,[bx+si]
0000A6A3  E076              loopne 0xa71b
0000A6A5  07                pop es
0000A6A6  D800              fadd dword [bx+si]
0000A6A8  A319F1            mov [0xf119],ax
0000A6AB  8500              test [bx+si],ax
0000A6AD  AD                lodsw
0000A6AE  8521              test [bx+di],sp
0000A6B0  AF                scasw
0000A6B1  C9                leave
0000A6B2  6591              gs xchg ax,cx
0000A6B4  08A82090          or [bx+si-0x6fe0],ch
0000A6B8  77F4              ja 0xa6ae
0000A6BA  EB0E              jmp short 0xa6ca
0000A6BC  4D                dec bp
0000A6BD  2823              sub [bp+di],ah
0000A6BF  8802              mov [bp+si],al
0000A6C1  094561            or [di+0x61],ax
0000A6C4  051974            add ax,0x7419
0000A6C7  C10036            rol word [bx+si],byte 0x36
0000A6CA  C10C80            ror word [si],byte 0x80
0000A6CD  08D7              or bh,dl
0000A6CF  07                pop es
0000A6D0  48                dec ax
0000A6D1  2221              and ah,[bx+di]
0000A6D3  FB                sti
0000A6D4  8415              test [di],dl
0000A6D6  D8B720F7          fdiv dword [bx-0x8e0]
0000A6DA  AA                stosb
0000A6DB  D6                salc
0000A6DC  36F1              ss int1
0000A6DE  D947D1            fld dword [bx-0x2f]
0000A6E1  C9                leave
0000A6E2  0E                push cs
0000A6E3  83F0A3            xor ax,byte -0x5d
0000A6E6  F8                clc
0000A6E7  91                xchg ax,cx
0000A6E8  A03225            mov al,[0x2532]
0000A6EB  C2FD04            ret 0x4fd
0000A6EE  018C1EB9          add [si-0x46e2],cx
0000A6F2  04DD              add al,0xdd
0000A6F4  60                pusha
0000A6F5  A3B704            mov [0x4b7],ax
0000A6F8  77B8              ja 0xa6b2
0000A6FA  BF04A3            mov di,0xa304
0000A6FD  BBC10D            mov bx,0xdc1
0000A700  0AA3BBBB          or ah,[bp+di-0x4445]
0000A704  050CA3            add ax,0xa30c
0000A707  C6                db 0xc6
0000A708  BD044E            mov bp,0x4e04
0000A70B  EBE0              jmp short 0xa6ed
0000A70D  006ABD            add [bp+si-0x43],ch
0000A710  E8B304            call 0xabc6
0000A713  8C01              mov [bx+di],es
0000A715  2C47              sub al,0x47
0000A717  4E                dec si
0000A718  020D              add cl,[di]
0000A71A  DD3D              fnstsw [di]
0000A71C  3913              cmp [bp+di],dx
0000A71E  AA                stosb
0000A71F  50                push ax
0000A720  BB5668            mov bx,0x6856
0000A723  77B6              ja 0xa6db
0000A725  0E                push cs
0000A726  FFF4              push sp
0000A728  8EC2              mov es,dx
0000A72A  15D720            adc ax,0x20d7
0000A72D  4D                dec bp
0000A72E  294501            sub [di+0x1],ax
0000A731  C1EE6F            shr si,byte 0x6f
0000A734  AE                scasb
0000A735  E225              loop 0xa75c
0000A737  1463              adc al,0x63
0000A739  BC087C            mov sp,0x7c08
0000A73C  09C0              or ax,ax
0000A73E  70F0              jo 0xa730
0000A740  A0BD8B            mov al,[0x8bbd]
0000A743  040D              add al,0xd
0000A745  19C2              sbb dx,ax
0000A747  6D                insw
0000A748  B8E4B6            mov ax,0xb6e4
0000A74B  A6                cmpsb
0000A74C  FA                cli
0000A74D  A4                movsb
0000A74E  DB                db 0xdb
0000A74F  E74F              out 0x4f,ax
0000A751  F05F              lock pop di
0000A753  44                inc sp
0000A754  E004              loopne 0xa75a
0000A756  1B15              sbb dx,[di]
0000A758  CA5BF8            retf 0xf85b
0000A75B  F63631FF          div byte [0xff31]
0000A75F  C407              les ax,[bx]
0000A761  150E7D            adc ax,0x7d0e
0000A764  20B77CA8          and [bx-0x5784],dh
0000A768  FA                cli
0000A769  1F                pop ds
0000A76A  D97040            fnstenv [bx+si+0x40]
0000A76D  7CD8              jl 0xa747
0000A76F  D304              rol word [si],cl
0000A771  E2BB              loop 0xa72e
0000A773  AD                lodsw
0000A774  0E                push cs
0000A775  0452              add al,0x52
0000A777  F2CD94            repne int 0x94
0000A77A  0DED53            or ax,0x53ed
0000A77D  68AF7D            push word 0x7daf
0000A780  C1C8F3            ror ax,byte 0xf3
0000A783  F5                cmc
0000A784  DBED              fucomi st5
0000A786  7315              jnc 0xa79d
0000A788  7544              jnz 0xa7ce
0000A78A  1388AA8F          adc cx,[bx+si-0x7056]
0000A78E  860B              xchg [bp+di],cl
0000A790  1868C2            sbb [bx+si-0x3e],ch
0000A793  361D522D          ss sbb ax,0x2d52
0000A797  13AEDAA6          adc bp,[bp-0x5926]
0000A79B  682623            push word 0x2326
0000A79E  90                nop
0000A79F  AC                lodsb
0000A7A0  1311              adc dx,[bx+di]
0000A7A2  DB                db 0xdb
0000A7A3  37                aaa
0000A7A4  DA2C              fisubr dword [si]
0000A7A6  90                nop
0000A7A7  45                inc bp
0000A7A8  F1                int1
0000A7A9  B3B5              mov bl,0xb5
0000A7AB  2B7A27            sub di,[bp+si+0x27]
0000A7AE  5B                pop bx
0000A7AF  1F                pop ds
0000A7B0  90                nop
0000A7B1  4B                dec bx
0000A7B2  53                push bx
0000A7B3  FB                sti
0000A7B4  7451              jz 0xa807
0000A7B6  1237              adc dh,[bx]
0000A7B8  45                inc bp
0000A7B9  037CC5            add di,[si-0x3b]
0000A7BC  61                popa
0000A7BD  25C50F            and ax,0xfc5
0000A7C0  B8C2D8            mov ax,0xd8c2
0000A7C3  8554F5            test [si-0xb],dx
0000A7C6  AB                stosw
0000A7C7  E535              in ax,0x35
0000A7C9  54                push sp
0000A7CA  C9                leave
0000A7CB  4F                dec di
0000A7CC  B98416            mov cx,0x1684
0000A7CF  A03017            mov al,[0x1730]
0000A7D2  52                push dx
0000A7D3  1F                pop ds
0000A7D4  D95123            fst dword [bx+di+0x23]
0000A7D7  8D                db 0x8d
0000A7D8  E3A3              jcxz 0xa77d
0000A7DA  90                nop
0000A7DB  0A5F5E            or bl,[bx+0x5e]
0000A7DE  7D4B              jnl 0xa82b
0000A7E0  76C1              jna 0xa7a3
0000A7E2  154799            adc ax,0x9947
0000A7E5  56                push si
0000A7E6  664F              dec edi
0000A7E8  A00E35            mov al,[0x350e]
0000A7EB  82                db 0x82
0000A7EC  40                inc ax
0000A7ED  2D8BFF            sub ax,0xff8b
0000A7F0  7D5A              jnl 0xa84c
0000A7F2  6BF016            imul si,ax,byte +0x16
0000A7F5  807A91B5          cmp byte [bp+si-0x6f],0xb5
0000A7F9  0536DD            add ax,0xdd36
0000A7FC  050F75            add ax,0x750f
0000A7FF  EBC1              jmp short 0xa7c2
0000A801  0E                push cs
0000A802  0BBB0342          or di,[bp+di+0x4203]
0000A806  9E                sahf
0000A807  A885              test al,0x85
0000A809  DD12              fst qword [bp+si]
0000A80B  1342A0            adc ax,[bp+si-0x60]
0000A80E  CE                into
0000A80F  AE                scasb
0000A810  08B40B14          or [si+0x140b],dh
0000A814  051A56            add ax,0x561a
0000A817  F1                int1
0000A818  16                push ss
0000A819  2B4413            sub ax,[si+0x13]
0000A81C  EF                out dx,ax
0000A81D  FA                cli
0000A81E  2E017827          add [cs:bx+si+0x27],di
0000A822  39444C            cmp [si+0x4c],ax
0000A825  62                db 0x62
0000A826  E574              in ax,0x74
0000A828  2F                das
0000A829  FE8E2CFF          dec byte [bp-0xd4]
0000A82D  E96840            jmp 0xe898
0000A830  0F1163F2          movups oword [bp+di-0xe],xmm4
0000A834  50                push ax
0000A835  94                xchg ax,sp
0000A836  53                push bx
0000A837  2E001C            add [cs:si],bl
0000A83A  D842F4            fadd dword [bp+si-0xc]
0000A83D  60                pusha
0000A83E  6493              fs xchg ax,bx
0000A840  285210            sub [bp+si+0x10],dl
0000A843  8D735A            lea si,[bp+di+0x5a]
0000A846  C9                leave
0000A847  8D                db 0x8d
0000A848  C11AC4            rcr word [bp+si],byte 0xc4
0000A84B  D92C              fldcw [si]
0000A84D  AD                lodsw
0000A84E  1DC0C9            sbb ax,0xc9c0
0000A851  1CE4              sbb al,0xe4
0000A853  D120              shl word [bx+si],1
0000A855  180C              sbb [si],cl
0000A857  8F                db 0x8f
0000A858  1BBAEE32          sbb di,[bp+si+0x32ee]
0000A85C  00C1              add cl,al
0000A85E  2EE02B            cs loopne 0xa88c
0000A861  C9                leave
0000A862  C9                leave
0000A863  036731            add sp,[bx+0x31]
0000A866  2C72              sub al,0x72
0000A868  07                pop es
0000A869  5F                pop di
0000A86A  1A885BF6          sbb cl,[bx+si-0x9a5]
0000A86E  88804FDA          mov [bx+si-0x25b1],al
0000A872  1A37              sbb dh,[bx]
0000A874  02EC              add ch,ah
0000A876  82                db 0x82
0000A877  6D                insw
0000A878  F4                hlt
0000A879  6D                insw
0000A87A  A3325B            mov [0x5b32],ax
0000A87D  8C741B            mov [si+0x1b],segr6
0000A880  B250              mov dl,0x50
0000A882  3E2800            sub [ds:bx+si],al
0000A885  26                es
0000A886  FE                db 0xfe
0000A887  7D17              jnl 0xa8a0
0000A889  280C              sub [si],cl
0000A88B  49                dec cx
0000A88C  228674DA          and al,[bp-0x258c]
0000A890  57                push di
0000A891  3335              xor si,[di]
0000A893  2E0A7800          or bh,[cs:bx+si+0x0]
0000A897  90                nop
0000A898  B1C4              mov cl,0xc4
0000A89A  80A0E66B3B        and byte [bx+si+0x6be6],0x3b
0000A89F  FC                cld
0000A8A0  1CF7              sbb al,0xf7
0000A8A2  5D                pop bp
0000A8A3  E90FF5            jmp 0x9db5
0000A8A6  7CB3              jl 0xa85b
0000A8A8  9E                sahf
0000A8A9  BB6870            mov bx,0x7068
0000A8AC  027E19            add bh,[bp+0x19]
0000A8AF  01BB7800          add [bp+di+0x78],di
0000A8B3  217F81            and [bx-0x7f],di
0000A8B6  52                push dx
0000A8B7  78C0              js 0xa879
0000A8B9  37                aaa
0000A8BA  5B                pop bx
0000A8BB  96                xchg ax,si
0000A8BC  51                push cx
0000A8BD  82                db 0x82
0000A8BE  3B30              cmp si,[bx+si]
0000A8C0  B8631C            mov ax,0x1c63
0000A8C3  3B511B            cmp dx,[bx+di+0x1b]
0000A8C6  D6                salc
0000A8C7  1DF701            sbb ax,0x1f7
0000A8CA  097306            or [bp+di+0x6],si
0000A8CD  0D3B07            or ax,0x73b
0000A8D0  BA1945            mov dx,0x4519
0000A8D3  3A85DED8          cmp al,[di-0x2722]
0000A8D7  E876AC            call 0x5550
0000A8DA  80E166            and cl,0x66
0000A8DD  112A              adc [bp+si],bp
0000A8DF  8618              xchg [bx+si],bl
0000A8E1  8A1B              mov bl,[bp+di]
0000A8E3  D6                salc
0000A8E4  FF52DD            call [bp+si-0x23]
0000A8E7  C068BE21          shr byte [bx+si-0x42],byte 0x21
0000A8EB  E86FC8            call 0x715d
0000A8EE  A0DB05            mov al,[0x5db]
0000A8F1  A8EB              test al,0xeb
0000A8F3  AA                stosb
0000A8F4  A8EA              test al,0xea
0000A8F6  8E6A00            mov gs,[bp+si+0x0]
0000A8F9  1E                push ds
0000A8FA  40                inc ax
0000A8FB  CAAD0E            retf 0xead
0000A8FE  DA6A10            fisubr dword [bp+si+0x10]
0000A901  28864E63          sub [bp+0x634e],al
0000A905  2924              sub [si],sp
0000A907  C4                db 0xc4
0000A908  FFC7              inc di
0000A90A  C2A036            ret 0x36a0
0000A90D  E9D520            jmp 0xc9e5
0000A910  D04D16            ror byte [di+0x16],1
0000A913  AF                scasw
0000A914  A9196D            test ax,0x6d19
0000A917  BB0454            mov bx,0x5404
0000A91A  6F                outsw
0000A91B  AB                stosw
0000A91C  DE7D0C            fidivr word [di+0xc]
0000A91F  4D                dec bp
0000A920  62                db 0x62
0000A921  EE                out dx,al
0000A922  E8FEC6            call 0x7023
0000A925  42                inc dx
0000A926  D1784A            sar word [bx+si+0x4a],1
0000A929  93                xchg ax,bx
0000A92A  96                xchg ax,si
0000A92B  18A06B50          sbb [bx+si+0x506b],ah
0000A92F  1818              sbb [bx+si],bl
0000A931  20685C            and [bx+si+0x5c],ch
0000A934  F20D61D5          repne or ax,0xd561
0000A938  86FD              xchg ch,bh
0000A93A  1BC0              sbb ax,ax
0000A93C  841C              test [si],bl
0000A93E  64F4              fs hlt
0000A940  0F53555E          rcpps xmm2,oword [di+0x5e]
0000A944  7510              jnz 0xa956
0000A946  DB2C              fld tword [si]
0000A948  DC25              fsub qword [di]
0000A94A  16                push ss
0000A94B  156E58            adc ax,0x586e
0000A94E  DB5FFD            fistp dword [bx-0x3]
0000A951  12EF              adc ch,bh
0000A953  3A5C7B            cmp bl,[si+0x7b]
0000A956  64F9              fs stc
0000A958  2E1A4AF8          sbb cl,[cs:bp+si-0x8]
0000A95C  E91603            jmp 0xac75
0000A95F  6648              dec eax
0000A961  D4EB              aam 0xeb
0000A963  BE1E2C            mov si,0x2c1e
0000A966  81E26C0C          and dx,0xc6c
0000A96A  336822            xor bp,[bx+si+0x22]
0000A96D  2B1B              sub bx,[bp+di]
0000A96F  5D                pop bp
0000A970  75D9              jnz 0xa94b
0000A972  8F                db 0x8f
0000A973  F7                db 0xf7
0000A974  88E9              mov cl,ch
0000A976  3A4EEA            cmp cl,[bp-0x16]
0000A979  89586A            mov [bx+si+0x6a],bx
0000A97C  331B              xor bx,[bp+di]
0000A97E  855E6C            test [bp+0x6c],bx
0000A981  48                dec ax
0000A982  DA9F1BF9          ficomp dword [bx-0x6e5]
0000A986  8A637A            mov ah,[bp+di+0x7a]
0000A989  1D3888            sbb ax,0x8838
0000A98C  9AD1FCC88A        call 0x8ac8:0xfcd1
0000A991  6F                outsw
0000A992  EA106181EC        jmp 0xec81:0x6110
0000A997  DD                db 0xdd
0000A998  FC                cld
0000A999  76BC              jna 0xa957
0000A99B  D1FC              sar sp,1
0000A99D  BCBD68            mov sp,0x68bd
0000A9A0  8C2EF9B3          mov [0xb3f9],gs
0000A9A4  F044              lock inc sp
0000A9A6  105BEA            adc [bp+di-0x16],bl
0000A9A9  E81AD1            call 0x7ac6
0000A9AC  2EE8A6C3          cs call 0x6d56
0000A9B0  8956F2            mov [bp-0xe],dx
0000A9B3  FF83E20F          inc word [bp+di+0xfe2]
0000A9B7  6BD20A            imul dx,dx,byte +0xa
0000A9BA  256AEB            and ax,0xeb6a
0000A9BD  54                push sp
0000A9BE  8718              xchg [bx+si],bx
0000A9C0  94                xchg ax,sp
0000A9C1  A31DAA            mov [0xaa1d],ax
0000A9C4  C4A3946E          les sp,[bp+di+0x6e94]
0000A9C8  C70797DC          mov word [bx],0xdc97
0000A9CC  1F                pop ds
0000A9CD  C7                db 0xc7
0000A9CE  1D182B            sbb ax,0x2b18
0000A9D1  102D              adc [di],ch
0000A9D3  B3E1              mov bl,0xe1
0000A9D5  BF0BCE            mov di,0xce0b
0000A9D8  FF6BD8            jmp far [bp+di-0x28]
0000A9DB  64760A            fs jna 0xa9e8
0000A9DE  E004              loopne 0xa9e4
0000A9E0  205069            and [bx+si+0x69],dl
0000A9E3  50                push ax
0000A9E4  DF05              fild word [di]
0000A9E6  EC                in al,dx
0000A9E7  81FB6C07          cmp bx,0x76c
0000A9EB  DA720A            fidiv dword [bp+si+0xa]
0000A9EE  0528AD            add ax,0xad28
0000A9F1  7968              jns 0xaa5b
0000A9F3  48                dec ax
0000A9F4  95                xchg ax,bp
0000A9F5  D7                xlatb
0000A9F6  F8                clc
0000A9F7  1CE3              sbb al,0xe3
0000A9F9  04AD              add al,0xad
0000A9FB  0841AE            or [bx+di-0x52],al
0000A9FE  AD                lodsw
0000A9FF  0AC4              or al,ah
0000AA01  E204              loop 0xaa07
0000AA03  C232F9            ret 0xf932
0000AA06  1321              adc sp,[bx+di]
0000AA08  1DD4C6            sbb ax,0xc6d4
0000AA0B  D7                xlatb
0000AA0C  4A                dec dx
0000AA0D  2D174B            sub ax,0x4b17
0000AA10  C88335EC          enter 0x3583,0xec
0000AA14  D20A              ror byte [bp+si],cl
0000AA16  C9                leave
0000AA17  CD78              int 0x78
0000AA19  ED                in ax,dx
0000AA1A  7438              jz 0xaa54
0000AA1C  CB                retf
0000AA1D  B36D              mov bl,0x6d
0000AA1F  8EB7B000          mov segr6,[bx+0xb0]
0000AA23  3174A2            xor [si-0x5e],si
0000AA26  C6                db 0xc6
0000AA27  1F                pop ds
0000AA28  CD9C              int 0x9c
0000AA2A  FF31              push word [bx+di]
0000AA2C  DB539D            fist dword [bp+di-0x63]
0000AA2F  9C                pushf
0000AA30  58                pop ax
0000AA31  2500DB            and ax,0xdb00
0000AA34  F03D0275          lock cmp ax,0x7502
0000AA38  11DF              adc di,bx
0000AA3A  AF                scasw
0000AA3B  B140              mov cl,0x40
0000AA3D  D3E8              shr ax,cl
0000AA3F  0955B5            or [di-0x4b],dx
0000AA42  95                xchg ax,bp
0000AA43  BBDB60            mov bx,0x60db
0000AA46  12BBF06D          adc bh,[bp+di+0x6df0]
0000AA4A  B817BA            mov ax,0xba17
0000AA4D  50                push ax
0000AA4E  21A95713          and [bx+di+0x1357],bp
0000AA52  34F3              xor al,0xf3
0000AA54  6D                insw
0000AA55  629D4D03          bound bx,[di+0x34d]
0000AA59  006000            add [bx+si+0x0],ah
0000AA5C  7D28              jnl 0xaa86
0000AA5E  43                inc bx
0000AA5F  29400B            sub [bx+si+0xb],ax
0000AA62  9E                sahf
0000AA63  70D5              jo 0xaa3a
0000AA65  7972              jns 0xaad9
0000AA67  1B93740B          sbb dx,[bp+di+0xb74]
0000AA6B  CF                iret
0000AA6C  39F4              cmp sp,si
0000AA6E  3935              cmp [di],si
0000AA70  2D3255            sub ax,0x5532
0000AA73  2F                das
0000AA74  6D                insw
0000AA75  205061            and [bx+si+0x61],dl
0000AA78  F5                cmc
0000AA79  7371              jnc 0xaaec
0000AA7B  7561              jnz 0xaade
0000AA7D  46                inc si
0000AA7E  4D                dec bp
0000AA7F  FF4A2E            dec word [bp+si+0x2e]
0000AA82  205669            and [bp+0x69],dl
0000AA85  6C                insb
0000AA86  6C                insb
0000AA87  50                push ax
0000AA88  1283D420          adc al,[bp+di+0x20d4]
0000AA8C  00DA              add dl,bl
0000AA8E  96                xchg ax,si
0000AA8F  54                push sp
0000AA90  68A395            push word 0x95a3
0000AA93  27                daa
0000AA94  50                push ax
0000AA95  72FF              jc 0xaa96
0000AA97  6F                outsw
0000AA98  6A65              push byte +0x65
0000AA9A  63742E            arpl [si+0x2e],si
0000AA9D  0A416E            or al,[bx+di+0x6e]
0000AAA0  1F                pop ds
0000AAA1  2052FB            and [bp+si-0x5],dl
0000AAA4  40                inc ax
0000AAA5  7306              jnc 0xaaad
0000AAA7  6A65              push byte +0x65
0000AAA9  025EA3            add bl,[bp-0x5d]
0000AAAC  7665              jna 0xab13
0000AAAE  64DA35            fidiv dword [fs:di]
0000AAB1  54                push sp
0000AAB2  A3B09D            mov [0x9db0],ax
0000AAB5  026677            add ah,[bp+0x77]
0000AAB8  2D2073            sub ax,0x7320
0000AABB  6F                outsw
0000AABC  F66674            mul byte [bp+0x74]
0000AABF  7761              ja 0xab22
0000AAC1  09BD4351          or [di+0x5143],di
0000AAC5  CDAB              int 0xab
0000AAC7  25FF20            and ax,0x20ff
0000AACA  7769              ja 0xab35
0000AACC  7468              jz 0xab36
0000AACE  204142            and [bx+di+0x42],al
0000AAD1  FF534F            call [bp+di+0x4f]
0000AAD4  4C                dec sp
0000AAD5  55                push bp
0000AAD6  54                push sp
0000AAD7  45                inc bp
0000AAD8  4C                dec sp
0000AAD9  59                pop cx
0000AADA  FF20              jmp [bx+si]
0000AADC  4E                dec si
0000AADD  4F                dec di
0000AADE  0A5741            or dl,[bx+0x41]
0000AAE1  52                push dx
0000AAE2  52                push dx
0000AAE3  FF414E            inc word [bx+di+0x4e]
0000AAE6  54                push sp
0000AAE7  59                pop cx
0000AAE8  3B20              cmp sp,[bx+si]
0000AAEA  796F              jns 0xab5b
0000AAEC  B575              mov ch,0x75
0000AAEE  26AA              es stosb
0000AAF0  2B8DB0B6          sub cx,[di-0x4950]
0000AAF4  6442              fs inc dx
0000AAF6  74DD              jz 0xaad5
0000AAF8  9C                pushf
0000AAF9  627541            bound si,[di+0x41]
0000AAFC  1D1F74            sbb ax,0x741f
0000AAFF  7D3E              jnl 0xab3f
0000AB01  2F                das
0000AB02  40                inc ax
0000AB03  1D586F            sbb ax,0x6f58
0000AB06  6E                outsb
0000AB07  16                push ss
0000AB08  6679F9            o32 jns 0xab04
0000AB0B  107554            adc [di+0x54],dh
0000AB0E  019B4320          add [bp+di+0x2043],bx
0000AB12  7672              jna 0xab86
0000AB14  6D                insw
0000AB15  55                push bp
0000AB16  B567              mov ch,0x67
0000AB18  FF0C              dec word [si]
0000AB1A  0A474E            or al,[bx+0x4e]
0000AB1D  55                push bp
0000AB1E  20ED              and ch,ch
0000AB20  47                inc di
0000AB21  656E              gs outsb
0000AB23  126BC2            adc ch,[bp+di-0x3e]
0000AB26  A6                cmpsb
0000AB27  7F75              jg 0xab9e
0000AB29  626C69            bound bp,[si+0x69]
0000AB2C  6320              arpl [bx+si],sp
0000AB2E  B54C              mov ch,0x4c
0000AB30  03B71073          add si,[bx+0x7310]
0000AB34  812A9546          sub word [bp+si],0x4695
0000AB38  FA                cli
0000AB39  117368            adc [bp+di+0x68],si
0000AB3C  A97737            test ax,0x3777
0000AB3F  D1BEA353          sar word [bp+0x53a3],1
0000AB43  43                inc bx
0000AB44  DD466F            fld qword [bp+0x6f]
0000AB47  55                push bp
0000AB48  61                popa
0000AB49  50                push ax
0000AB4A  07                pop es
0000AB4B  FD                std
0000AB4C  773B              ja 0xab89
0000AB4E  0A65A5            or ah,[di-0x5b]
0000AB51  3960BB            cmp [bx+si-0x45],sp
0000AB54  D1                db 0xd1
0000AB55  7273              jc 0xabca
0000AB57  0FBA2032          bt word [bx+si],byte 0x32
0000AB5B  2CA9              sub al,0xa9
0000AB5D  C0AD281C7B        shr byte [di+0x1c28],byte 0x7b
0000AB62  A10842            mov ax,[0x4208]
0000AB65  38BE2529          cmp [bp+0x2925],bh
0000AB69  AA                stosb
0000AB6A  7B62              jpo 0xabce
0000AB6C  6C                insb
0000AB6D  1459              adc al,0x59
0000AB6F  286113            sub [bx+di+0x13],ah
0000AB72  51                push cx
0000AB73  54                push sp
0000AB74  FF0A              dec word [bp+si]
0000AB76  41                inc cx
0000AB77  3A2D              cmp ch,[di]
0000AB79  40                inc ax
0000AB7A  4A                dec dx
0000AB7B  FF554E            call [di+0x4e]
0000AB7E  4B                dec bx
0000AB7F  40                inc ax
0000AB80  2D2E54            sub ax,0x542e
0000AB83  4D                dec bp
0000AB84  B750              mov bh,0x50
0000AB86  11BA12F6          adc [bp+si-0x9ee],di
0000AB8A  01851203          add [di+0x312],ax
0000AB8E  02FF              add bh,bh
0000AB90  06                push es
0000AB91  C21219            ret 0x1912
0000AB94  CA1220            retf 0x2012
0000AB97  FD                std
0000AB98  92                xchg ax,dx
0000AB99  1221              adc ah,[bx+di]
0000AB9B  9A1222BF0E        call 0xebf:0x2212
0000ABA0  246C              and al,0x6c
0000ABA2  1325              adc sp,[di]
0000ABA4  A2FF12            mov [0x12ff],al
0000ABA7  26AA              es stosb
0000ABA9  1227              adc ah,[bx]
0000ABAB  B212              mov dl,0x12
0000ABAD  282D              sub [di],ch
0000ABAF  2ABD022F          sub bh,[di+0x2f02]
0000ABB3  8A12              mov dl,[bp+si]
0000ABB5  6A60              push byte +0x60
0000ABB7  816F7B1410        sub word [bx+0x7b],0x1014
0000ABBC  0001              add [bx+di],al
0000ABBE  7D24              jnl 0xabe4
0000ABC0  06                push es
0000ABC1  30065BDB          xor [0xdb5b],al
0000ABC5  085442            or [si+0x42],dl
0000ABC8  55                push bp
0000ABC9  2A35              sub dh,[di]
0000ABCB  364B              ss dec bx
0000ABCD  3C87              cmp al,0x87
0000ABCF  DB                db 0xdb
0000ABD0  B446              mov ah,0x46
0000ABD2  04A7              add al,0xa7
0000ABD4  CF                iret
0000ABD5  BF4A4C            mov di,0x4c4a
0000ABD8  2F                das
0000ABD9  CC                int3
0000ABDA  C2562F            ret 0x2f56
0000ABDD  2EC2622F          cs ret 0x2f62
0000ABE1  A8BF              test al,0xbf
0000ABE3  67CB              a32 retf
0000ABE5  06                push es
0000ABE6  026C2F            add ch,[si+0x2f]
0000ABE9  29C0              sub ax,ax
0000ABEB  72F9              jc 0xabe6
0000ABED  06                push es
0000ABEE  0105              add [di],ax
0000ABF0  BA7879            mov dx,0x7978
0000ABF3  85B28079          test [bp+si+0x7980],si
0000ABF7  9BB28C            wait mov dl,0x8c
0000ABFA  79DC              jns 0xabd8
0000ABFC  B99479            mov cx,0x7994
0000ABFF  F1                int1
0000AC00  B89C79            mov ax,0x799c
0000AC03  CDB3              int 0xb3
0000AC05  A07954            mov al,[0x5479]
0000AC08  B4A8              mov ah,0xa8
0000AC0A  7952              jns 0xac5e
0000AC0C  B5AD              mov ch,0xad
0000AC0E  7994              jns 0xaba4
0000AC10  B5B4              mov ch,0xb4
0000AC12  795C              jns 0xac70
0000AC14  B3BA              mov bl,0xba
0000AC16  7B81              jpo 0xab99
0000AC18  B3C4              mov bl,0xc4
0000AC1A  36798A            ss jns 0xaba7
0000AC1D  B3CE              mov bl,0xce
0000AC1F  79C4              jns 0xabe5
0000AC21  B3DC              mov bl,0xdc
0000AC23  7923              jns 0xac48
0000AC25  BAE4ED            mov dx,0xede4
0000AC28  EA04E5D3B9        jmp 0xb9d3:0xe504
0000AC2D  F4                hlt
0000AC2E  E568              in ax,0x68
0000AC30  B9FBFF            mov cx,0xfffb
0000AC33  CAB906            retf 0x6b9
0000AC36  07                pop es
0000AC37  0175B4            add [di-0x4c],si
0000AC3A  0F2FA8B216        comiss xmm5,dword [bx+si+0x16b2]
0000AC3F  2F                das
0000AC40  ED                in ax,dx
0000AC41  B21E              mov dl,0x1e
0000AC43  2F                das
0000AC44  80BF252F8C        cmp byte [bx+0x2f25],0x8c
0000AC49  BF2EF9            mov di,0xf92e
0000AC4C  07                pop es
0000AC4D  0291BA35          add dl,[bx+di+0x35ba]
0000AC51  7950              jns 0xaca3
0000AC53  BA4079            mov dx,0x7940
0000AC56  E5C3              in ax,0xc3
0000AC58  48                dec ax
0000AC59  79E9              jns 0xac44
0000AC5B  C3                ret
0000AC5C  54                push sp
0000AC5D  790B              jns 0xac6a
0000AC5F  C45A78            les bx,[bp+si+0x78]
0000AC62  5E                pop si
0000AC63  C55E17            lds bx,[bp+0x17]
0000AC66  346F              xor al,0x6f
0000AC68  BB5002            mov bx,0x250
0000AC6B  CA4A80            retf 0x804a
0000AC6E  11A36DD0          adc [bp+di-0x2f93],sp
0000AC72  209C00FF          and [si-0x100],bl
0000AC76  B043              mov al,0x43
0000AC78  BFFA49            mov di,0x49fa
0000AC7B  4E                dec si
0000AC7C  46                inc si
0000AC7D  4F                dec di
0000AC7E  056F13            add ax,0x136f
0000AC81  55                push bp
0000AC82  43                inc bx
0000AC83  41                inc cx
0000AC84  CA5345            retf 0x4553
0000AC87  EBEE              jmp short 0xac77
0000AC89  4C                dec sp
0000AC8A  0937              or [bx],si
0000AC8C  1D5946            sbb ax,0x4659
0000AC8F  14DB              adc al,0xdb
0000AC91  0131              add [bx+di],si
0000AC93  46                inc si
0000AC94  F243              repne inc bx
0000AC96  48                dec ax
0000AC97  41                inc cx
0000AC98  52                push dx
0000AC99  E502              in ax,0x2
0000AC9B  001B              add [bp+di],bl
0000AC9D  3D4C8D            cmp ax,0x8d4c
0000ACA0  41                inc cx
0000ACA1  3EB703            ds mov bh,0x3
0000ACA4  45                inc bp
0000ACA5  44                inc sp
0000ACA6  42                inc dx
0000ACA7  CC                int3
0000ACA8  43                inc bx
0000ACA9  53                push bx
0000ACAA  0D4A80            or ax,0x804a
0000ACAD  4D                dec bp
0000ACAE  0C2D              or al,0x2d
0000ACB0  F65343            not byte [bp+di+0x43]
0000ACB3  07                pop es
0000ACB4  6A02              push byte +0x2
0000ACB6  47                inc di
0000ACB7  A22C2E            mov [0x2e2c],al
0000ACBA  F72F              imul word [bx]
0000ACBC  3A00              cmp al,[bx+si]
0000ACBE  0201              add al,[bx+di]
0000ACC0  B10C              mov cl,0xc
0000ACC2  9B2D0103          wait sub ax,0x301
0000ACC6  60                pusha
0000ACC7  197607            sbb [bp+0x7],si
0000ACCA  28FB              sub bl,bh
0000ACCC  52                push dx
0000ACCD  55                push bp
0000ACCE  42                inc dx
0000ACCF  200D              and [di],cl
0000ACD1  763A              jna 0xad0d
0000ACD3  0319              add bx,[bx+di]
0000ACD5  DB1F              fistp dword [bx]
0000ACD7  0C45              or al,0x45
0000ACD9  F65552            not byte [di+0x52]
0000ACDC  2E2C26            cs sub al,0x26
0000ACDF  36200C            and [ss:si],cl
0000ACE2  07                pop es
0000ACE3  216019            and [bx+si+0x19],sp
0000ACE6  7222              jc 0xad0a
0000ACE8  7227              jc 0xad11
0000ACEA  3224              xor ah,[si]
0000ACEC  F22448            repne and al,0x48
0000ACEF  55                push bp
0000ACF0  0D26D2            or ax,0xd226
0000ACF3  0C59              or al,0x59
0000ACF5  1D2781            sbb ax,0x8127
0000ACF8  33DB              xor bx,bx
0000ACFA  292653CB          sub [0xcb53],sp
0000ACFE  46                inc si
0000ACFF  002E3F2A          add [0x2a3f],ch
0000AD03  0002              add [bp+si],al
0000AD05  3B0C              cmp cx,[si]
0000AD07  3B2C              cmp bp,[si]
0000AD09  19739C            sbb [bp+di-0x64],si
0000AD0C  005F2F            add [bx+0x2f],bl
0000AD0F  332D              xor bp,[di]
0000AD11  2F                das
0000AD12  44                inc sp
0000AD13  4B                dec bx
0000AD14  4B                dec bx
0000AD15  20DB              and bl,bl
0000AD17  2EB553            cs mov ch,0x53
0000AD1A  C8454B36          enter 0x4b45,0x36
0000AD1E  2F                das
0000AD1F  19A52A74          sbb [di+0x742a],sp
0000AD23  0C2E              or al,0x2e
0000AD25  FF30              push word [bx+si]
0000AD27  0002              add [bp+si],al
0000AD29  50                push ax
0000AD2A  4C                dec sp
0000AD2B  90                nop
0000AD2C  4E                dec si
0000AD2D  6C                insb
0000AD2E  3167DD            xor [bx-0x23],sp
0000AD31  4D                dec bp
0000AD32  016C81            add [si-0x7f],bp
0000AD35  36C3              ss ret
0000AD37  CC                int3
0000AD38  5E                pop si
0000AD39  4D                dec bp
0000AD3A  DC0C              fmul qword [si]
0000AD3C  0037              add [bx],dh
0000AD3E  96                xchg ax,si
0000AD3F  D9F6              fdecstp
0000AD41  3DD867            cmp ax,0x67d8
0000AD44  7651              jna 0xad97
0000AD46  03E1              add sp,cx
0000AD48  818F030F5F01      or word [bx+0xf03],0x15f
0000AD4E  60                pusha
0000AD4F  A836              test al,0x36
0000AD51  660C21            o32 or al,0x21
0000AD54  100667DE          adc [0xde67],al
0000AD58  0C42              or al,0x42
0000AD5A  47                inc di
0000AD5B  4C                dec sp
0000AD5C  41                inc cx
0000AD5D  97                xchg ax,di
0000AD5E  7C55              jl 0xadb5
0000AD60  41                inc cx
0000AD61  90                nop
0000AD62  48                dec ax
0000AD63  7000              jo 0xad65
0000AD65  CF                iret
0000AD66  BF7456            mov di,0x5674
0000AD69  44                inc sp
0000AD6A  49                dec cx
0000AD6B  53                push bx
0000AD6C  4B                dec bx
0000AD6D  0C7C              or al,0x7c
0000AD6F  DA35              fidiv dword [di]
0000AD71  46                inc si
0000AD72  FE                db 0xfe
0000AD73  17                pop ss
0000AD74  208000D6          and [bx+si-0x2a00],al
0000AD78  0A00              or al,[bx+si]
0000AD7A  7702              ja 0xad7e
0000AD7C  2028              and [bx+si],ch
0000AD7E  2BE2              sub sp,dx
0000AD80  7BD0              jpo 0xad52
0000AD82  02FD              add bh,ch
0000AD84  5D                pop bp
0000AD85  6E                outsb
0000AD86  096173            or [bx+di+0x73],sp
0000AD89  57                push di
0000AD8A  10BFE000          adc [bx+0xe0],bh
0000AD8E  60                pusha
0000AD8F  09F9              or cx,di
0000AD91  07                pop es
0000AD92  C8000FB3          enter 0xf00,0xb3
0000AD96  21F2              and dx,si
0000AD98  A005F9            mov al,[0xf905]
0000AD9B  0313              add dx,[bp+di]
0000AD9D  40                inc ax
0000AD9E  F9                stc
0000AD9F  0BF0              or si,ax
0000ADA1  0900              or [bx+si],ax
0000ADA3  1226F08D          adc ah,[0x8df0]
0000ADA7  C6                db 0xc6
0000ADA8  BA1610            mov dx,0x1016
0000ADAB  2465              and al,0x65
0000ADAD  106519            adc [di+0x19],ah
0000ADB0  2000              and [bx+si],al
0000ADB2  90                nop
0000ADB3  0C86              or al,0x86
0000ADB5  04EE              add al,0xee
0000ADB7  16                push ss
0000ADB8  1401              adc al,0x1
0000ADBA  0148C0            add [bx+si-0x40],cx
0000ADBD  0122              add [bp+si],sp
0000ADBF  61                popa
0000ADC0  9A9C5CDE0F        call 0xfde:0x5c9c
0000ADC5  41                inc cx
0000ADC6  55                push bp
0000ADC7  58                pop ax
0000ADC8  701A              jo 0xade4
0000ADCA  ED                in ax,dx
0000ADCB  DD03              fld qword [bp+di]
0000ADCD  0D25AA            or ax,0xaa25
0000ADD0  C502              lds ax,[bp+si]
0000ADD2  7052              jo 0xae26
0000ADD4  0486              add al,0x86
0000ADD6  4D                dec bp
0000ADD7  B5F8              mov ch,0xf8
0000ADD9  2AFE              sub bh,dh
0000ADDB  5A                pop dx
0000ADDC  D925              fldenv [di]
0000ADDE  D6                salc
0000ADDF  CD02              int 0x2
0000ADE1  F5                cmc
0000ADE2  202D              and [di],ch
0000ADE4  20B69E54          and [bp+0x549e],dh
0000ADE8  2AEE              sub ch,dh
0000ADEA  4D                dec bp
0000ADEB  43                inc bx
0000ADEC  0900              or [bx+si],ax
0000ADEE  48                dec ax
0000ADEF  D4F0              aam 0xf0
0000ADF1  43                inc bx
0000ADF2  50                push ax
0000ADF3  55                push bp
0000ADF4  0492              add al,0x92
0000ADF6  C1D91E            rcr cx,byte 0x1e
0000ADF9  46                inc si
0000ADFA  7533              jnz 0xae2f
0000ADFC  32BDE975          xor bh,[di+0x75e9]
0000AE00  7070              jo 0xae72
0000AE02  6E                outsb
0000AE03  22740A            and dh,[si+0xa]
0000AE06  0D3AB5            or ax,0xb53a
0000AE09  7354              jnc 0xae5f
0000AE0B  B81148            mov ax,0x4811
0000AE0E  3D5EBC            cmp ax,0xbc5e
0000AE11  202F              and [bx],ch
0000AE13  59                pop cx
0000AE14  EE                out dx,al
0000AE15  034400            add ax,[si+0x0]
0000AE18  0ADA              or bl,dl
0000AE1A  014982            add [bx+di-0x7e],cx
0000AE1D  90                nop
0000AE1E  636C6B            arpl [si+0x6b],bp
0000AE21  68C017            push word 0x17c0
0000AE24  27                daa
0000AE25  B93BAA            mov cx,0xaa3b
0000AE28  2C0A              sub al,0xa
0000AE2A  C2715B            ret 0x5b71
0000AE2D  2A46DB            sub al,[bp-0x25]
0000AE30  6C                insb
0000AE31  6F                outsw
0000AE32  48                dec ax
0000AE33  79A5              jns 0xadda
0000AE35  2F                das
0000AE36  226009            and ah,[bx+si+0x9]
0000AE39  B53B              mov ch,0x3b
0000AE3B  B300              mov bl,0x0
0000AE3D  20DA              and dl,bl
0000AE3F  48                dec ax
0000AE40  92                xchg ax,dx
0000AE41  0090D2C0          add [bx+si-0x3f2e],dl
0000AE45  E043              loopne 0xae8a
0000AE47  09FE              or si,di
0000AE49  5C                pop sp
0000AE4A  9D                popf
0000AE4B  B5D8              mov ch,0xd8
0000AE4D  AB                stosw
0000AE4E  B3B4              mov bl,0xb4
0000AE50  6A73              push byte +0x73
0000AE52  20400E            and [bx+si+0xe],al
0000AE55  C013EB            rcl byte [bp+di],byte 0xeb
0000AE58  017E9A            add [bp-0x66],di
0000AE5B  CB                retf
0000AE5C  F65E3B            neg byte [bp+0x3b]
0000AE5F  4F                dec di
0000AE60  27                daa
0000AE61  48                dec ax
0000AE62  27                daa
0000AE63  5E                pop si
0000AE64  C3                ret
0000AE65  EC                in al,dx
0000AE66  0E                push cs
0000AE67  7761              ja 0xaeca
0000AE69  CC                int3
0000AE6A  3B2D              cmp bp,[di]
0000AE6C  97                xchg ax,di
0000AE6D  32481B            xor cl,[bx+si+0x1b]
0000AE70  2F                das
0000AE71  6451              fs push cx
0000AE73  13992EC8          adc bx,[bx+di-0x37d2]
0000AE77  50                push ax
0000AE78  52                push dx
0000AE79  92                xchg ax,dx
0000AE7A  772E              ja 0xaeaa
0000AE7C  07                pop es
0000AE7D  3AC7              cmp al,bh
0000AE7F  50                push ax
0000AE80  DE02              fiadd word [bp+si]
0000AE82  45                inc bp
0000AE83  3A32              cmp dh,[bp+si]
0000AE85  96                xchg ax,si
0000AE86  C10DDE            ror word [di],byte 0xde
0000AE89  195357            sbb [bp+di+0x57],dx
0000AE8C  49                dec cx
0000AE8D  17                pop ss
0000AE8E  114845            adc [bx+si+0x45],cx
0000AE91  FE                db 0xfe
0000AE92  53                push bx
0000AE93  005245            add [bp+si+0x45],dl
0000AE96  4D                dec bp
0000AE97  003B              add [bp+di],bh
0000AE99  96                xchg ax,si
0000AE9A  7945              jns 0xaee1
0000AE9C  05754D            add ax,0x4d75
0000AE9F  90                nop
0000AEA0  4F                dec di
0000AEA1  B152              mov cl,0x52
0000AEA3  094CDB            or [si-0x25],cx
0000AEA6  17                pop ss
0000AEA7  5C                pop sp
0000AEA8  4C                dec sp
0000AEA9  54                push sp
0000AEAA  630B              arpl [bp+di],cx
0000AEAC  00B64526          add [bp+0x2645],dh
0000AEB0  4F                dec di
0000AEB1  D6                salc
0000AEB2  0405              add al,0x5
0000AEB4  3F                aas
0000AEB5  42                inc dx
0000AEB6  52                push dx
0000AEB7  45                inc bp
0000AEB8  41                inc cx
0000AEB9  4B                dec bx
0000AEBA  2F                das
0000AEBB  55                push bp
0000AEBC  46                inc si
0000AEBD  46                inc si
0000AEBE  EC                in al,dx
0000AEBF  45                inc bp
0000AEC0  52                push dx
0000AEC1  53                push bx
0000AEC2  07                pop es
0000AEC3  384858            cmp [bx+si+0x58],cl
0000AEC6  8F                db 0x8f
0000AEC7  48                dec ax
0000AEC8  6C                insb
0000AEC9  874D4D            xchg [di+0x4d],cx
0000AECC  0BFE              or di,si
0000AECE  44                inc sp
0000AECF  7007              jo 0xaed8
0000AED1  17                pop ss
0000AED2  325452            xor dl,[si+0x52]
0000AED5  0A33              or dh,[bp+di]
0000AED7  394BF0            cmp [bp+di-0x10],cx
0000AEDA  0344B0            add ax,[si-0x50]
0000AEDD  45                inc bp
0000AEDE  41                inc cx
0000AEDF  BB0443            mov bx,0x4304
0000AEE2  42                inc dx
0000AEE3  0C7B              or al,0x7b
0000AEE5  4B                dec bx
0000AEE6  45                inc bp
0000AEE7  59                pop cx
0000AEE8  2F                das
0000AEE9  9B0B49B9          wait or cx,[bx+di-0x47]
0000AEED  4C                dec sp
0000AEEE  73EC              jnc 0xaedc
0000AEF0  0537D6            add ax,0xd637
0000AEF3  01FF              add di,di
0000AEF5  53                push bx
0000AEF6  54                push sp
0000AEF7  44                inc sp
0000AEF8  52                push dx
0000AEF9  49                dec cx
0000AEFA  56                push si
0000AEFB  45                inc bp
0000AEFC  6509B1176D        or [gs:bx+di+0x6d17],si
0000AF01  774D              ja 0xaf50
0000AF03  55                push bp
0000AF04  1C47              sbb al,0x47
0000AF06  D6                salc
0000AF07  A6                cmpsb
0000AF08  A2AD25            mov [0x25ad],al
0000AF0B  6605C517B623      add eax,0x23b617c5
0000AF11  41                inc cx
0000AF12  15D953            adc ax,0x53d9
0000AF15  06                push es
0000AF16  B341              mov bl,0x41
0000AF18  7AC8              jpe 0xaee2
0000AF1A  F5                cmc
0000AF1B  53                push bx
0000AF1C  CD34              int 0x34
0000AF1E  9D                popf
0000AF1F  6E                outsb
0000AF20  AF                scasw
0000AF21  0056E8            add [bp-0x18],dl
0000AF24  92                xchg ax,dx
0000AF25  49                dec cx
0000AF26  E615              out 0x15,al
0000AF28  8D                db 0x8d
0000AF29  DF5984            fistp word [bx+di-0x7c]
0000AF2C  49                dec cx
0000AF2D  B544              mov ch,0x44
0000AF2F  6AAE              push byte -0x52
0000AF31  1DCB6F            sbb ax,0x6fcb
0000AF34  D35649            rcl word [bp+0x49],cl
0000AF37  43                inc bx
0000AF38  B345              mov bl,0x45
0000AF3A  06                push es
0000AF3B  6663B5AFCE        o32 arpl [di-0x3151],si
0000AF40  46                inc si
0000AF41  5D                pop bp
0000AF42  6607              o32 pop es
0000AF44  CD5F              int 0x5f
0000AF46  CD49              int 0x49
0000AF48  0E                push cs
0000AF49  6D                insw
0000AF4A  4A                dec dx
0000AF4B  45                inc bp
0000AF4C  B12F              mov cl,0x2f
0000AF4E  00CA              add dl,cl
0000AF50  0420              add al,0x20
0000AF52  51                push cx
0000AF53  DEB8DE66          fidivr word [bx+si+0x66de]
0000AF57  64686266          fs push word 0x6662
0000AF5B  97                xchg ax,di
0000AF5C  222E73B5          and ch,[0xb573]
0000AF60  7911              jns 0xaf73
0000AF62  800A84            or byte [bp+si],0x84
0000AF65  FF35              push word [di]
0000AF67  0570ED            add ax,0xed70
0000AF6A  50                push ax
0000AF6B  95                xchg ax,bp
0000AF6C  743C              jz 0xafaa
0000AF6E  662DEC77980D      sub eax,0xd9877ec
0000AF74  6A98              push byte -0x68
0000AF76  0A8833EB          or cl,[bx+si-0x14cd]
0000AF7A  C3                ret
0000AF7B  46                inc si
0000AF7C  389B8906          cmp [bp+di+0x689],bl
0000AF80  7761              ja 0xafe3
0000AF82  6324              arpl [si],sp
0000AF84  5B                pop bx
0000AF85  720E              jc 0xaf95
0000AF87  35385E            xor ax,0x5e38
0000AF8A  9A69702033        call 0x3320:0x7069
0000AF8F  CAFF2E            retf 0x2eff
0000AF92  53                push bx
0000AF93  59                pop cx
0000AF94  53                push bx
0000AF95  2F                das
0000AF96  41                inc cx
0000AF97  55                push bp
0000AF98  54                push sp
0000AF99  FF4F45            dec word [bx+0x45]
0000AF9C  58                pop ax
0000AF9D  45                inc bp
0000AF9E  43                inc bx
0000AF9F  2E42              cs inc dx
0000AFA1  41                inc cx
0000AFA2  9B54              wait push sp
0000AFA4  37                aaa
0000AFA5  39DA              cmp dx,bx
0000AFA7  730D              jnc 0xafb6
0000AFA9  83EB23            sub bx,byte +0x23
0000AFAC  704C              jo 0xaffa
0000AFAE  6C                insb
0000AFAF  6727              a32 daa
0000AFB1  236D60            and bp,[di+0x60]
0000AFB4  20DF              and bh,bl
0000AFB6  A25B59            mov [0x595b],al
0000AFB9  2C4E              sub al,0x4e
0000AFBB  5D                pop bp
0000AFBC  853F              test [bx],di
0000AFBE  2E6D              cs insw
0000AFC0  0D59BA            or ax,0xba59
0000AFC3  024E6F            add cl,[bp+0x6f]
0000AFC6  8838              mov [bx+si],bh
0000AFC8  9A20968E60        call 0x608e:0x9620
0000AFCD  13DA              adc bx,dx
0000AFCF  54                push sp
0000AFD0  6250F0            bound dx,[bx+si-0x10]
0000AFD3  9A48AF9B7C        call 0x7c9b:0xaf48
0000AFD8  789F              js 0xaf79
0000AFDA  97                xchg ax,di
0000AFDB  A4                movsb
0000AFDC  4D                dec bp
0000AFDD  2C51              sub al,0x51
0000AFDF  0381B816          add ax,[bx+di+0x16b8]
0000AFE3  2D6342            sub ax,0x4263
0000AFE6  B534              mov ch,0x34
0000AFE8  43                inc bx
0000AFE9  1033              adc [bp+di],dh
0000AFEB  9D                popf
0000AFEC  67DAAE3DFC300E    fisubr dword [esi+0xe30fc3d]
0000AFF3  90                nop
0000AFF4  30DC              xor ah,bl
0000AFF6  A891              test al,0x91
0000AFF8  3E6B2328          imul sp,[ds:bp+di],byte +0x28
0000AFFC  A1001E            mov ax,[0x1e00]
0000AFFF  1C4D              sbb al,0x4d
0000B001  756A              jnz 0xb06d
0000B003  E8821A            call 0xca88
0000B006  2C72              sub al,0x72
0000B008  39C7              cmp di,ax
0000B00A  BB0230            mov bx,0x3002
0000B00D  78D5              js 0xafe4
0000B00F  56                push si
0000B010  BEB605            mov si,0x5b6
0000B013  3125              xor [di],sp
0000B015  C7                db 0xc7
0000B016  6653              push ebx
0000B018  ED                in ax,dx
0000B019  0A30              or dh,[bx+si]
0000B01B  308E1130          xor [bp+0x3011],cl
0000B01F  34D8              xor al,0xd8
0000B021  355CC1            xor ax,0xc15c
0000B024  0C7B              or al,0x7b
0000B026  BAAA98            mov dx,0x98aa
0000B029  21C4              and sp,ax
0000B02B  66F5              o32 cmc
0000B02D  9F                lahf
0000B02E  0A11              or dl,[bx+di]
0000B030  662ADD            o32 sub bl,ch
0000B033  7161              jno 0xb096
0000B035  64ED              fs in ax,dx
0000B037  791B              jns 0xb054
0000B039  6C                insb
0000B03A  2CFF              sub al,0xff
0000B03C  82                db 0x82
0000B03D  F628              imul byte [bx+si]
0000B03F  91                xchg ax,cx
0000B040  8B7D94            mov di,[di-0x6c]
0000B043  109B4D30          adc [bp+di+0x304d],bl
0000B047  45                inc bp
0000B048  AD                lodsw
0000B049  1A6A86            sbb ch,[bp+si-0x7a]
0000B04C  0A78EC            or bh,[bx+si-0x14]
0000B04F  756C              jnz 0xb0bd
0000B051  6442              fs inc dx
0000B053  E269              loop 0xb0be
0000B055  F787470554B9      test word [bx+0x547],0xb954
0000B05B  7926              jns 0xb083
0000B05D  AF                scasw
0000B05E  2023              and [bp+di],ah
0000B060  641085EF6C        adc [fs:di+0x6cef],al
0000B065  4E                dec si
0000B066  75A3              jnz 0xb00b
0000B068  E1A1              loope 0xb00b
0000B06A  4F                dec di
0000B06B  06                push es
0000B06C  43                inc bx
0000B06D  11A5A76C          adc [di+0x6ca7],sp
0000B071  3475              xor al,0x75
0000B073  5A                pop dx
0000B074  DF2C              fild qword [si]
0000B076  CB                retf
0000B077  E96DA5            jmp 0x55e7
0000B07A  6C                insb
0000B07B  6F                outsw
0000B07C  355FFB            xor ax,0xfb5f
0000B07F  7386              jnc 0xb007
0000B081  3A11              cmp dl,[bx+di]
0000B083  668119198BE577    sbb dword [bx+di],0x77e58b19
0000B08A  5B                pop bx
0000B08B  45                inc bp
0000B08C  61                popa
0000B08D  687858            push word 0x5878
0000B090  39610A            cmp [bx+di+0xa],sp
0000B093  58                pop ax
0000B094  8D21              lea sp,[bx+di]
0000B096  67624704          bound ax,[edi+0x4]
0000B09A  7FB4              jg 0xb050
0000B09C  9BF23DC2E5        wait repne cmp ax,0xe5c2
0000B0A1  6E                outsb
0000B0A2  C8B53E00          enter 0x3eb5,0x0
0000B0A6  27                daa
0000B0A7  A000D2            mov al,[0xd200]
0000B0AA  5E                pop si
0000B0AB  0A10              or dl,[bx+si]
0000B0AD  1D3DAF            sbb ax,0xaf3d
0000B0B0  80A8594E87        sub byte [bx+si+0x4e59],0x87
0000B0B5  51                push cx
0000B0B6  A12C0B            mov ax,[0xb2c]
0000B0B9  F77563            div word [di+0x63]
0000B0BC  688653            push word 0x5386
0000B0BF  42                inc dx
0000B0C0  A7                cmpsw
0000B0C1  B529              mov ch,0x29
0000B0C3  66AB              stosd
0000B0C5  D6                salc
0000B0C6  7FE2              jg 0xb0aa
0000B0C8  B579              mov ch,0x79
0000B0CA  0A2B              or ch,[bp+di]
0000B0CC  E122              loope 0xb0f0
0000B0CE  F4                hlt
0000B0CF  3244C8            xor al,[si-0x38]
0000B0D2  B25C              mov dl,0x5c
0000B0D4  2C66              sub al,0x66
0000B0D6  66367E20          ss o32 jng 0xb0fa
0000B0DA  3DE0C5            cmp ax,0xc5e0
0000B0DD  B6C9              mov dh,0xc9
0000B0DF  7919              jns 0xb0fa
0000B0E1  C273BF            ret 0xbf73
0000B0E4  0B33              or si,[bp+di]
0000B0E6  43                inc bx
0000B0E7  25DA53            and ax,0x53da
0000B0EA  3486              xor al,0x86
0000B0EC  B549              mov ch,0x49
0000B0EE  E5DA              in ax,0xda
0000B0F0  4D                dec bp
0000B0F1  D8DB              fcomp st3
0000B0F3  225B16            and bl,[bp+di+0x16]
0000B0F6  7863              js 0xb15b
0000B0F8  005DB1            add [di-0x4f],bl
0000B0FB  D9                db 0xd9
0000B0FC  8C706F            mov [bx+si+0x6f],segr6
0000B0FF  695B026D54        imul bx,[bp+di+0x2],word 0x546d
0000B104  83B65DB928        xor word [bp-0x46a3],byte +0x28
0000B109  CC                int3
0000B10A  2B33              sub si,[bp+di]
0000B10C  C88F7664          enter 0x768f,0x64
0000B110  299FDF2D          sub [bx+0x2ddf],bx
0000B114  6208              bound cx,[bx+si]
0000B116  6B1700            imul dx,[bx],byte +0x0
0000B119  A7                cmpsw
0000B11A  080C              or [si],cl
0000B11C  22E6              and ah,dh
0000B11E  B70F              mov bh,0xf
0000B120  83AD5ADFEB        sub word [di-0x20a6],byte -0x15
0000B125  06                push es
0000B126  53                push bx
0000B127  9D                popf
0000B128  9A2FB8C667        call 0x67c6:0xb82f
0000B12D  7428              jz 0xb157
0000B12F  1AB7D833          sbb dh,[bx+0x33d8]
0000B133  696021C38E        imul sp,[bx+si+0x21],word 0x8ec3
0000B138  8B4204            mov ax,[bp+si+0x4]
0000B13B  1D3DD8            sbb ax,0xd83d
0000B13E  6C                insb
0000B13F  637556            arpl [di+0x56],si
0000B142  0479              add al,0x79
0000B144  B2DD              mov dl,0xdd
0000B146  C28B1D            ret 0x1d8b
0000B149  69C8AA7B          imul cx,ax,word 0x7baa
0000B14D  8100B8BB          add word [bx+si],0xbbb8
0000B151  00546F            add [si+0x6f],dl
0000B154  E757              out 0x57,ax
0000B156  7706              ja 0xb15e
0000B158  8E8E6E2D          mov cs,[bp+0x2d6e]
0000B15C  51                push cx
0000B15D  16                push ss
0000B15E  1A4B22            sbb cl,[bp+di+0x22]
0000B161  46                inc si
0000B162  6ADA              push byte -0x26
0000B164  763D              jna 0xb1a3
0000B166  D7                xlatb
0000B167  5E                pop si
0000B168  8B37              mov si,[bx]
0000B16A  0F7829            vmread dword [bx+di],ebp
0000B16D  6C                insb
0000B16E  58                pop ax
0000B16F  3D6853            cmp ax,0x5368
0000B172  54                push sp
0000B173  ED                in ax,dx
0000B174  3F                aas
0000B175  7D65              jnl 0xb1dc
0000B177  6E                outsb
0000B178  76CB              jna 0xb145
0000B17A  69726D7A5B        imul si,[bp+si+0x6d],word 0x5b7a
0000B17F  3E7A75            ds jpe 0xb1f7
0000B182  EA352D3E48        jmp 0x483e:0x2d35
0000B187  27                daa
0000B188  3A6B64            cmp ch,[bp+di+0x64]
0000B18B  DF2E2225          fild qword [0x2522]
0000B18F  7322              jnc 0xb1b3
0000B191  2C49              sub al,0x49
0000B193  60                pusha
0000B194  16                push ss
0000B195  A6                cmpsb
0000B196  A16153            mov ax,[0x5361]
0000B199  D83A              fdivr dword [bp+si]
0000B19B  1A31              sbb dh,[bx+di]
0000B19D  00EC              add ah,ch
0000B19F  E52F              in ax,0x2f
0000B1A1  C7                db 0xc7
0000B1A2  F5                cmc
0000B1A3  3446              xor al,0x46
0000B1A5  38C2              cmp dl,al
0000B1A7  66A11501          mov eax,[0x115]
0000B1AB  8136042D8D69      xor word [0x2d04],0x698d
0000B1B1  AE                scasb
0000B1B2  6E                outsb
0000B1B3  DB                db 0xdb
0000B1B4  621D              bound bx,[di]
0000B1B6  CC                int3
0000B1B7  1A3B              sbb bh,[bp+di]
0000B1B9  6AC6              push byte -0x3a
0000B1BB  ED                in ax,dx
0000B1BC  61                popa
0000B1BD  A25117            mov [0x1751],al
0000B1C0  DCED              fsub to st5
0000B1C2  61                popa
0000B1C3  6D                insw
0000B1C4  DC6D8C            fsubr qword [di-0x74]
0000B1C7  41                inc cx
0000B1C8  4B                dec bx
0000B1C9  57                push di
0000B1CA  29A32CE5          sub [bp+di-0x1ad4],sp
0000B1CE  9A73D80E76        call 0x760e:0xd873
0000B1D3  4D                dec bp
0000B1D4  C6                db 0xc6
0000B1D5  EC                in al,dx
0000B1D6  283A              sub [bp+si],bh
0000B1D8  3A7293            cmp dh,[bp+si-0x6d]
0000B1DB  38653B            cmp [di+0x3b],ah
0000B1DE  ED                in ax,dx
0000B1DF  3F                aas
0000B1E0  3F                aas
0000B1E1  1A4D7D            sbb cl,[di+0x7d]
0000B1E4  65B567            gs mov ch,0x67
0000B1E7  AB                stosw
0000B1E8  C11CE2            rcr word [si],byte 0xe2
0000B1EB  14F1              adc al,0xf1
0000B1ED  50                push ax
0000B1EE  658CA12363        mov [gs:bx+di+0x6323],fs
0000B1F3  3800              cmp [bx+si],al
0000B1F5  51                push cx
0000B1F6  46                inc si
0000B1F7  AE                scasb
0000B1F8  384479            cmp [si+0x79],al
0000B1FB  3A02              cmp al,[bp+si]
0000B1FD  6C                insb
0000B1FE  39B04509          cmp [bx+si+0x945],si
0000B202  034D25            add cx,[di+0x25]
0000B205  2E43              cs inc bx
0000B207  783A              js 0xb243
0000B209  F5                cmc
0000B20A  04FF              add al,0xff
0000B20C  8A25              mov ah,[di]
0000B20E  3475              xor al,0x75
0000B210  2D257A            sub ax,0x7a25
0000B213  028A39BD          add cl,[bp+si-0x42c7]
0000B217  A32970            mov [0x7029],ax
0000B21A  DD08              fisttp qword [bx+si]
0000B21C  3321              xor sp,[bx+di]
0000B21E  E731              out 0x31,ax
0000B220  360B25            or sp,[ss:di]
0000B223  748E              jz 0xb1b3
0000B225  00DF              add bh,bl
0000B227  6D                insw
0000B228  885035            mov [bx+si+0x35],dl
0000B22B  A069ED            mov al,[0xed69]
0000B22E  72BA              jc 0xb1ea
0000B230  6C                insb
0000B231  49                dec cx
0000B232  7473              jz 0xb2a7
0000B234  05F29C            add ax,0x9cf2
0000B237  CE                into
0000B238  D06AA3            shr byte [bp+si-0x5d],1
0000B23B  B122              mov cl,0x22
0000B23D  6E                outsb
0000B23E  69E6872C          imul sp,si,word 0x2c87
0000B242  7D1F              jnl 0xb263
0000B244  64645F            fs pop di
0000B247  A7                cmpsw
0000B248  694B8F78AE        imul cx,[bp+di-0x71],word 0xae78
0000B24D  7477              jz 0xb2c6
0000B24F  DB                db 0xdb
0000B250  633A              arpl [bp+si],di
0000B252  C2448E            ret 0x8e44
0000B255  25AE5D            and ax,0x5dae
0000B258  57                push di
0000B259  25C632            and ax,0x32c6
0000B25C  6444              fs inc sp
0000B25E  B409              mov ah,0x9
0000B260  0B0F              or cx,[bx]
0000B262  53                push bx
0000B263  6B2507            imul sp,[di],byte +0x7
0000B266  92                xchg ax,dx
0000B267  F321FE            rep and si,di
0000B26A  6D                insw
0000B26B  36AA              ss stosb
0000B26D  1B7742            sbb si,[bx+0x42]
0000B270  A82C              test al,0x2c
0000B272  A938D8            test ax,0xd838
0000B275  0D6D41            or ax,0x416d
0000B278  C3                ret
0000B279  44                inc sp
0000B27A  72D4              jc 0xb250
0000B27C  07                pop es
0000B27D  B486              mov ah,0x86
0000B27F  74F6              jz 0xb277
0000B281  B76C              mov bh,0x6c
0000B283  286765            sub [bx+0x65],ah
0000B286  0E                push cs
0000B287  20BA5764          and [bp+si+0x6457],bh
0000B28B  F069A13F31DB8B    lock imul sp,[bx+di+0x313f],word 0x8bdb
0000B292  6C                insb
0000B293  6D                insw
0000B294  FA                cli
0000B295  31703D            xor [bx+si+0x3d],si
0000B298  16                push ss
0000B299  0F47DC            cmova bx,sp
0000B29C  3220              xor ah,[bx+si]
0000B29E  648BDD            fs mov bx,bp
0000B2A1  6D                insw
0000B2A2  3285AE68          xor al,[di+0x68ae]
0000B2A6  058773            add ax,0x7387
0000B2A9  040E              add al,0xe
0000B2AB  95                xchg ax,bp
0000B2AC  DB                db 0xdb
0000B2AD  37                aaa
0000B2AE  720B              jc 0xb2bb
0000B2B0  3B2C              cmp bp,[si]
0000B2B2  42                inc dx
0000B2B3  8739              xchg [bx+di],di
0000B2B5  56                push si
0000B2B6  3D4BB6            cmp ax,0xb64b
0000B2B9  0D78DD            or ax,0xdd78
0000B2BC  F730              div word [bx+si]
0000B2BE  38A90560          cmp [bx+di+0x6005],ch
0000B2C2  80B5D85397        xor byte [di+0x53d8],0x97
0000B2C7  A7                cmpsw
0000B2C8  306130            xor [bx+di+0x30],ah
0000B2CB  C02FFA            shr byte [bx],byte 0xfa
0000B2CE  5E                pop si
0000B2CF  6B2CB8            imul bp,[si],byte -0x48
0000B2D2  1E                push ds
0000B2D3  6D                insw
0000B2D4  94                xchg ax,sp
0000B2D5  6D                insw
0000B2D6  FA                cli
0000B2D7  6C                insb
0000B2D8  363365BB          xor sp,[ss:di-0x45]
0000B2DC  7091              jo 0xb26f
0000B2DE  5E                pop si
0000B2DF  61                popa
0000B2E0  4E                dec si
0000B2E1  47                inc di
0000B2E2  3AC1              cmp al,cl
0000B2E4  8080731546        add byte [bx+si+0x1573],0x46
0000B2E9  3C3B              cmp al,0x3b
0000B2EB  7021              jo 0xb30e
0000B2ED  1B8FDAD8          sbb cx,[bx-0x2726]
0000B2F1  46                inc si
0000B2F2  53                push bx
0000B2F3  83A133559D        and word [bx+di+0x5533],byte -0x63
0000B2F8  D2632F            shl byte [bp+di+0x2f],cl
0000B2FB  8F                db 0x8f
0000B2FC  63756C            arpl [di+0x6c],si
0000B2FF  22A2A7D3          and ah,[bp+si-0x2c59]
0000B303  A6                cmpsb
0000B304  7318              jnc 0xb31e
0000B306  8E69C1            mov gs,[bx+di-0x3f]
0000B309  72A1              jc 0xb2ac
0000B30B  BD9D30            mov bp,0x309d
0000B30E  07                pop es
0000B30F  60                pusha
0000B310  28B09364          sub [bx+si+0x6493],dh
0000B314  EF                out dx,ax
0000B315  33065E5E          xor ax,[0x5e5e]
0000B319  CD5D              int 0x5d
0000B31B  8455BD            test [di-0x43],dl
0000B31E  4B                dec bx
0000B31F  96                xchg ax,si
0000B320  9D                popf
0000B321  36256370          ss and ax,0x7063
0000B325  45                inc bp
0000B326  EA142AD6CA        jmp 0xcad6:0x2a14
0000B32B  2A02              sub al,[bp+si]
0000B32D  F1                int1
0000B32E  27                daa
0000B32F  B75E              mov bh,0x5e
0000B331  7415              jz 0xb348
0000B333  A4                movsb
0000B334  4E                dec si
0000B335  31CF              xor di,cx
0000B337  F21F              repne pop ds
0000B339  60                pusha
0000B33A  9B3000            wait xor [bx+si],al
0000B33D  98                cbw
0000B33E  7B78              jpo 0xb3b8
0000B340  8465E6            test [di-0x1a],ah
0000B343  B2D6              mov dl,0xd6
0000B345  58                pop ax
0000B346  49                dec cx
0000B347  E45F              in al,0x5f
0000B349  F364B96FAC        fs rep mov cx,0xac6f
0000B34E  677467            jz 0xb3b8
0000B351  A6                cmpsb
0000B352  67                a32
0000B353  C6                db 0xc6
0000B354  7B53              jpo 0xb3a9
0000B356  4B                dec bx
0000B357  2B56DA            sub dx,[bp-0x26]
0000B35A  C150167B          rcl word [bx+si+0x16],byte 0x7b
0000B35E  3472              xor al,0x72
0000B360  AD                lodsw
0000B361  B113              mov cl,0x13
0000B363  43                inc bx
0000B364  F9                stc
0000B365  8B7434            mov si,[si+0x34]
0000B368  C1D119            rcl cx,byte 0x19
0000B36B  8117A6D9          adc word [bx],0xd9a6
0000B36F  2DD0BD            sub ax,0xbdd0
0000B372  3F                aas
0000B373  E11B              loope 0xb390
0000B375  57                push di
0000B376  41                inc cx
0000B377  17                pop ss
0000B378  B432              mov ah,0x32
0000B37A  B3DA              mov bl,0xda
0000B37C  41                inc cx
0000B37D  A804              test al,0x4
0000B37F  8E09              mov cs,[bx+di]
0000B381  4C                dec sp
0000B382  A1B17E            mov ax,[0x7eb1]
0000B385  873D              xchg [di],di
0000B387  BCAA2C            mov sp,0x2caa
0000B38A  019D2572          add [di+0x7225],bx
0000B38E  0CA0              or al,0xa0
0000B390  10A04205          adc [bx+si+0x542],ah
0000B394  6D                insw
0000B395  9C                pushf
0000B396  8474FC            test [si-0x4],dh
0000B399  DE5395            ficom word [bp+di-0x6b]
0000B39C  5D                pop bp
0000B39D  AB                stosw
0000B39E  0DEDC0            or ax,0xc0ed
0000B3A1  E3C0              jcxz 0xb363
0000B3A3  112C              adc [si],bp
0000B3A5  191E184B          sbb [0x4b18],bx
0000B3A9  30A774A2          xor [bx-0x5d8c],ah
0000B3AD  6529E1            gs sub cx,sp
0000B3B0  58                pop ax
0000B3B1  686305            push word 0x563
0000B3B4  E97470            jmp 0x242b
0000B3B7  25912E            and ax,0x2e91
0000B3BA  C6                db 0xc6
0000B3BB  2D6C06            sub ax,0x66c
0000B3BE  CB                retf
0000B3BF  2F                das
0000B3C0  686531            push word 0x3165
0000B3C3  8BA72030          mov sp,[bx+0x3020]
0000B3C7  49                dec cx
0000B3C8  1CED              sbb al,0xed
0000B3CA  3330              xor si,[bx+si]
0000B3CC  CE                into
0000B3CD  B578              mov ch,0x78
0000B3CF  8F                db 0x8f
0000B3D0  D6                salc
0000B3D1  B764              mov bh,0x64
0000B3D3  44                inc sp
0000B3D4  5D                pop bp
0000B3D5  73AE              jnc 0xb385
0000B3D7  CC                int3
0000B3D8  A21C55            mov [0x551c],al
0000B3DB  3D15B1            cmp ax,0xb115
0000B3DE  336EF6            xor bp,[bp-0xa]
0000B3E1  D7                xlatb
0000B3E2  721F              jc 0xb403
0000B3E4  A15ED2            mov ax,[0xd25e]
0000B3E7  5C                pop sp
0000B3E8  58                pop ax
0000B3E9  3A28              cmp ch,[bx+si]
0000B3EB  2DB9EA            sub ax,0xeab9
0000B3EE  A03078            mov al,[0x7830]
0000B3F1  C20000            ret 0x0
0000B3F4  0000              add [bx+si],al
0000B3F6  0000              add [bx+si],al
0000B3F8  24FF              and al,0xff
0000B3FA  A4                movsb
0000B3FB  00FF              add bh,bh
0000B3FD  7503              jnz 0xb402
0000B3FF  E87500            call 0xb477
0000B402  72F6              jc 0xb3fa
0000B404  41                inc cx
0000B405  8CC0              mov ax,es
0000B407  01FF              add di,di
0000B409  7305              jnc 0xb410
0000B40B  80C408            add ah,0x8
0000B40E  8EC0              mov es,ax
0000B410  D1EF              shr di,1
0000B412  E85500            call 0xb46a
0000B415  E366              jcxz 0xb47d
0000B417  73F9              jnc 0xb412
0000B419  49                dec cx
0000B41A  49                dec cx
0000B41B  7411              jz 0xb42e
0000B41D  01C9              add cx,cx
0000B41F  01C9              add cx,cx
0000B421  01C9              add cx,cx
0000B423  01C9              add cx,cx
0000B425  89CD              mov bp,cx
0000B427  8A1C              mov bl,[si]
0000B429  46                inc si
0000B42A  F6D3              not bl
0000B42C  31C9              xor cx,cx
0000B42E  E83900            call 0xb46a
0000B431  11C9              adc cx,cx
0000B433  7508              jnz 0xb43d
0000B435  41                inc cx
0000B436  E83100            call 0xb46a
0000B439  73FB              jnc 0xb436
0000B43B  41                inc cx
0000B43C  41                inc cx
0000B43D  81FDD100          cmp bp,0xd1
0000B441  83D9FE            sbb cx,byte -0x2
0000B444  29E8              sub ax,bp
0000B446  720E              jc 0xb456
0000B448  8ED8              mov ds,ax
0000B44A  8D01              lea ax,[bx+di]
0000B44C  28FC              sub ah,bh
0000B44E  96                xchg ax,si
0000B44F  F3A4              rep movsb
0000B451  96                xchg ax,si
0000B452  8EDA              mov ds,dx
0000B454  EBA5              jmp short 0xb3fb
0000B456  D1E0              shl ax,1
0000B458  D1E0              shl ax,1
0000B45A  D1E0              shl ax,1
0000B45C  D1E0              shl ax,1
0000B45E  50                push ax
0000B45F  31C0              xor ax,ax
0000B461  8ED8              mov ds,ax
0000B463  58                pop ax
0000B464  01D8              add ax,bx
0000B466  01F8              add ax,di
0000B468  EBE2              jmp short 0xb44c
0000B46A  00FF              add bh,bh
0000B46C  7503              jnz 0xb471
0000B46E  E80600            call 0xb477
0000B471  11C9              adc cx,cx
0000B473  00FF              add bh,bh
0000B475  7505              jnz 0xb47c
0000B477  8A3C              mov bh,[si]
0000B479  46                inc si
0000B47A  10FF              adc bh,bh
0000B47C  C3                ret
0000B47D  5D                pop bp
0000B47E  07                pop es
0000B47F  06                push es
0000B480  1F                pop ds
0000B481  BC0010            mov sp,0x1000
0000B484  EA00006000        jmp 0x60:0x0
0000B489  0010              add [bx+si],dl
0000B48B  40                inc ax
0000B48C  021B              add bl,[bp+di]
0000B48E  B98EB4            mov cx,0xb48e
0000B491  0E                push cs
0000B492  1F                pop ds
0000B493  8CC8              mov ax,cs
0000B495  48                dec ax
0000B496  48                dec ax
0000B497  8EC0              mov es,ax
0000B499  93                xchg ax,bx
0000B49A  31FF              xor di,di
0000B49C  FC                cld
0000B49D  AA                stosb
0000B49E  8BF7              mov si,di
0000B4A0  F3A4              rep movsb
0000B4A2  1E                push ds
0000B4A3  58                pop ax
0000B4A4  05E011            add ax,0x11e0
0000B4A7  8ED0              mov ss,ax
0000B4A9  BC0002            mov sp,0x200
0000B4AC  31C0              xor ax,ax
0000B4AE  FFE0              jmp ax
