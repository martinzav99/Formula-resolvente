SECTION .text 
    global escalar

escalar:

push ebp
mov ebp,esp

mov ecx ,[ebp+12] ;tamano de vector
mov edx ,0        ;sirve para recorrer el vector  

ciclo:
push edx
push ecx

mov eax,[ebp+8]     ;direccion de memoria del primer valor
fld dword [eax+ edx ] ; guardo el valor de alguna posicion del vector en st0
fld dword [ebp+16]  ; guardo el escalar 
fmul
fst dword [eax+edx]   

pop ecx
pop edx

add edx ,4
dec ecx 
jnz ciclo

fin:
mov esp,ebp
pop ebp

ret 