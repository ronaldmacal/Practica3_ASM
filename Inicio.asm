.model small
.stack 
DATA segment 
    encab1 DB "UNIVERSIDAD DE SAN CARLOS DE GUATEMALA","$" ;Define byte=8bits
    encab2 DB "ESCUELA DE CIENCIAS Y SISTEMAS","$"
    encab3 DB "ARQUITECTURA DE COMPUTADORES Y ENSAMBLADORES 1 A","$"
    encab4 DB "SECCION B","$"
    encab5 DB "Ronald Oswaldo Macal de Leon","$"
    encab6 DB "201612151","$"
    encab7 DB "Practica Assembler","$"
    menu1 DB "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%","$"
    menu2 DB "Menu Principal","$"
    menu3 DB "1. Cargar archivo","$"
    menu4 DB "2. Modo calculadora","$"
    menu5 DB "3. Factorial","$"
    menu6 DB "4. Crear reporte","$"
    menu7 DB "5. Salir","$"
    menu8 DB "Seleccione una opcion:","$"
    menu9 DB "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%","$"
DATA ends

code segment

;Menu inicial
menu proc far
    assume cs:code,ds:data
    push ds
    xor ax,ax
    push ax
    mov ax,data
    mov ds,ax
    xor dx,dx

    ;Mostrar el encabezado principal
    mov ah,09h 
    lea dx, offset encab1
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx, offset encab2
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset encab3
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset encab4
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset encab5
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset encab6
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset encab7
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    ;Mostrar el menu principal
    mov ah,09h 
    lea dx,offset menu1
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu2
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu3
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu4
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu5
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu6
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu7
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu8
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    mov ah,09h 
    lea dx,offset menu9
    int 21h

    mov ah,02h ;Inter
    mov dl,10
    int 21h
    mov ah,02h
    mov dl,13
    int 21h

    ;Ahora el manejo del menu
    ;Lee el teclado
    mov ah,01h
    int 21h

    xor ah,ah
    sub al,30h
    mov cx,2

    ;Verificar opciones
    cmp al,1 ;Opcion: Cargar archivo
    jz cargararchivo

    cmp al,2 ;Opcion: Modo calculadora
    jz calculadora

    cmp al,3 ;Opcion: Factorial
    jz factorial

    cmp al,4 ;Opcion: Crear reporte
    jz reporte

    cmp al,5 ;Opcion: Salir
    jz fin

;Inicia la carga de archivo
cargararchivo:     ret
;Fin de carga de archivo

;Inicia modo calculadora
calculadora:     ret
;Fin modo calculadora

;Inicia factorial
factorial:     ret
;Fin factorial

;Inicia reporte
reporte:     ret
;Fin reporte

;Inicia Salir
fin:     ret
;Fin Salir

menu endp
code ends
end menu