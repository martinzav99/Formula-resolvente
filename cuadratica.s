extern printf
SECTION .data
cuatro dq 4.0
cero dq 0.0
dos dq 2.0
discriminante dq 0.0
resultado dq 0.0
fmt db "Raiz encontrada : %f",10,0
msg db "No hay raiz en los reales",10,0

SECTION .text
    global cuadratica

cuadratica:
push ebp
mov ebp ,esp
fld qword[cuatro]
fchs
fld dword[ebp+8]
fmul
fld dword[ebp+16]
fmul
fld dword[ebp+12]
fmul st0,st0
fadd
fcom qword [cero]
fstsw ax
fwait
sahf
jpe huboError
jb discriminanteNegativo
jz discriminanteCero
ja discriminantePositivo 

discriminanteNegativo:
    push msg
    call printf
    add esp,12
    jmp fin
    
discriminanteCero:
    fld dword [ebp+12]
    fchs
    fld qword [dos]
    fld dword [ebp+8]
    fmul
    fdiv
    fst qword[resultado]

    push dword[resultado+4]
    push dword[resultado]
    push fmt
    call printf
    add esp,12
    jmp fin

discriminantePositivo:
    fsqrt
    fst qword [discriminante]
    fld dword [ebp+12]
    fchs
    fadd
    fld qword [dos]
    fld dword [ebp+8]
    fmul
    fdiv

    fst qword[resultado]
    push dword[resultado+4]
    push dword[resultado]
    push fmt
    call printf
    add esp,12

    fld dword [ebp+12]
    fchs
    fld qword[discriminante]
    fsub
    fld qword [dos]
    fld dword [ebp+8]
    fmul
    fdiv  

    fst qword[resultado]
    push dword[resultado+4]
    push dword[resultado]
    push fmt
    call printf
    add esp,12
    jmp fin
huboError:
fin:
mov esp ,ebp
pop ebp

RET
