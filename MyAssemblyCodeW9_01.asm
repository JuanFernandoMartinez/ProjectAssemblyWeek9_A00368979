.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data 
StrNum_X byte "092485.28"  ; char
StrNum_Y byte "077318.64"  ; char
StrNum_Z byte "000000.02"  ; char

.code
main proc
     
    xor eax,eax
    xor ebx,ebx
    lea esi, StrNum_X
    lea edi, StrNum_Y
    lea ecx, StrNum_Z

L1: 
    
    mov al, byte ptr [ StrNum_X+8] ;
    mov bl, byte ptr [ StrNum_Y+8] ;
    add al,bl
    aaa 
    or al,30h
    ;and al,0fh  ; 38h --> 08h
    ;and bl,0fh  ; 34h -->04h
    ;add al, bl  ; 0C
     
    mov [StrNum_Z + 8], al
   

    
    INVOKE ExitProcess,0
main endp
end main


;| Overflow  | OV |
;| Direction | UP |
;| Interrupt | EI |
;| Sign      | PL |
;| Zero      | ZR |
;| Auxiliary | AC |
;| Parity    | PE |
;| Carry     | CY |

1