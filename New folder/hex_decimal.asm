.model small
.stack 100h
.data

a db 'Enter the Hexadecimal input: $'
b db 'The Decimal number is: $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,a
    mov ah,9
    int 21h
    
    mov ah,1 
    int 21h
    sub al,17d
    mov bl,al 
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    lea dx,b
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,49d
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main