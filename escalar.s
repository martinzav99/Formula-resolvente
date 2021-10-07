SECTION .text 
    global escalar

escalar:

push ebp
mov ebp,esp

mov ecx ,[ebp+12] ;tamano de vector
mov edx ,0        ;sirve para recorrer el vector  

ciclo:

mov eax,[ebp+8]       ; direccion de memoria del primer valor
fld dword [eax+ edx ] ; guardo el valor de alguna posicion del vector en la pila FPU
fld dword [ebp+16]    ; guardo el escalar en la pila FPU
fmul                  ; st0 = st0 * st1 
fst dword [eax+edx]   ; guardo el valor de st0 en la posicion de memoria adecuada 

add edx ,4            ; 4bytes es el tamano de un float 
dec ecx               ; para saber cuando dejo de tener posiciones que recorrer
jnz ciclo

fin:
mov esp,ebp
pop ebp

ret 
