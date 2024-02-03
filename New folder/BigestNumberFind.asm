.model small
.stack 100h
.data

aa db '           AI SHAKER           $'                        
a db '  Enter 1st number: $'
b db '  Enter 2nd number: $'
c db '  Enter 3rd number: $'
d db '  Biggest number is = $'
e db '            THANK YOU           $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9  ;String aa Output
    lea dx,aa
    int 21h
    
    mov ah,2  ;New line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    mov ah,2  ;New line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9  ;String a Output
    lea dx,a
    int 21h
    
    mov ah,1  ;First input number
    int 21h
    mov bl,al
    ;sub bl,30h
     
    mov ah,2  ;New line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9  ;String b Output
    lea dx,b
    int 21h
    
    mov ah,1 ;Second input number
    int 21h
    mov bh,al
    ;sub bh,30h
    
    mov ah,2  ;New line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9  ;String c Output
    lea dx,c
    int 21h
    
    mov ah,1 ;3rd input number
    int 21h
    mov cl,al
    ;sub bh,30h
    
    mov ah,2  ;New line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9  ;String d Output
    lea dx,d
    int 21h
    
    cmp bl,bh
    jge ab
    
    bc:
    cmp bh,cl
    jge cd
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    cd:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    ab:
    cmp bl,cl
    jge ef
    
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    ef:
    mov ah,2
    mov dl,bl
    int 21h
    exit:
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        lea dx,e
        mov ah,9
        int 21h
        main endp
end main
