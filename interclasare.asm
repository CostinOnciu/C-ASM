bits 32 
global _inter

segment code use32 class=code
_inter:        
        push ebp
        mov ebp, esp
        
        mov edi,[ebp + 16]
        mov esi,[ebp + 8]
        cld
        .loop:
            lodsb
            stosb
            inc edi
            mov bl,0
            cmp al,bl
            jne .loop
        
        mov esi,[ebp + 12]
        mov edi,[ebp + 16]
        .loop2:
            lodsb
            inc edi
            stosb
            mov bl,0
            cmp al,bl
            jne .loop2

       mov esp, ebp
       pop ebp
    ret 