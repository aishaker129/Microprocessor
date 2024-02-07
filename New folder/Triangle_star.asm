.code
main proc
    mov cx,10
    leval:
    mov bx,cx
    
    level1:
    mov ah,2
    mov dl,'*'
    int 21h
    loop level1    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,bx
    
    loop leval
    
    main endp
end main