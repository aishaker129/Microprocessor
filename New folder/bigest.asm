.model small
.stack 100h
.data
msg db "Enter the 1st number: $"
msg1 db "Enter the 2nd number: $"
msg2 db "Enter the 3rd number: $"
msg3 db "Bigest number is: $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h 
    
    mov ah,1
    mov bl,al
    int 21h 
    
    mov ah,2      
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    mov cl,al
    int 21h
    
    mov ah,2      
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    mov bh,al
    int 21h 
    
    cmp bl,cl
    ja big
    jb low
    
    big:
        cmp bl,bh
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,2
        mov dl,bl
        sub dl,48h
        int 21h
        
        
    
    low:
    
        cmp cl,bh
        
        mov ah,9
        lea dx,msg3
        int 21h 
        
        mov ah,2
        mov dl,cl
        sub dl,48h
        int 21h
    
    
    mov ah,9
    lea dx,msg3
    int 21h 
        
    mov ah,2
    mov dl,bh
    sub dl,48h
    int 21h
    
    main endp
end main
        