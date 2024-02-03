.model small
.stack 100h
.data

ab db '         AI SHAKER           $'
a db '  Enter 1st number: $'
b db '  Enter 2nd number: $'
c db '  ADD: $'
d db '  SUB: $'
e db '          THANK YOU           $'

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    lea dx,ab
    mov ah,9
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
    
    mov ah,9  ;String Output
    lea dx,a
    int 21h
    
    mov ah,1  ;First input number
    int 21h
    mov bl,al
     
    mov ah,2  ;New line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9  ;String Output
    lea dx,b
    int 21h
    
    mov ah,1 ;Second input number
    int 21h
    mov bh,al
    
    mov ah,2  ;New line
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bh,bl
    jg ad
    bc:
    mov ah,9  ;String Output
    lea dx,c
    int 21h
    
    add bl,bh
    
    mov ah,2
    mov dl,bl
    sub dl,48
    int 21h
    jmp exit
    
    ad:
    mov ah,9  ;String Output
    lea dx,d
    int 21h
    
    sub bh,bl
    
    mov ah,2
    mov dl,bh
    add dl,48
    int 21h
    
    exit:
    
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
    
    lea dx,e
    mov ah,9
    int 21h 
    
    
    main endp
end main
