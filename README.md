# TP1 Orga II


## Descripción
En el presente trabajo se mostrarán dos ejercicios, el primero es un programa que calcula la formula resolvente y el segundo uno que calcula el producto escalar entre un número y un vector.<p>
El objetivo del trabajo es usar el conocimiento sobre pasaje de parámetros, manejo de pila y manejo del set de instrucciones de la FPU para poder resolver los ejercicios. Por este motivo, los programas se verán realizados tanto en el lenguaje de programación C en conjunto con Assembler.

## Pre-Requisitos 
Los siguientes comandos se ejecutan en la terminal de Linux: 

_Clonar el repositorio_
```
sudo apt update
sudo apt-get install git
git clone https://gitlab.com/martinzavallagamarra/tp1-orga-ii.git 
```
_Uso de gcc_
```
sudo apt-get update
sudo apt-get install gcc 
```
_Uso de Nasm_
```
sudo apt-get update
sudo apt-get install nasm 
```

Nota: No es necesario hacer el update en cada paso, con hacerlo una vez al principio es suficiente.

## Ejercicio: Formula resolvente 

### Pautas:
- Un programa en c , que pida al usuario 3 valores e invocar una funcion que calcule la formual resolvente
- Un programa para la arquitectura IA32 que calcule una función cuadrática, donde los coeficientes de la función deben ser recibidas por parámetro.
- Compilar y linkear los archivos objeto de manera separada
- Obtener un ejecutable que muestre las raices obtenidas

### Resolución
Lo mas importante a remarcar del codigo C es que para permitir el pasaje de parametros se usa el "extern", esta es una palabra reservada que le permite al compilador (gcc) saber que la funcion declarada se encuentra en otro codigo objeto. Por lo tanto, al momento de llamar a la funcion cuadratica, sus atributos seran cargados en la pila  y usados luego por la funcion que se encontrara en otro programa.

```
extern void cuadratica(float a,float b ,float c);
#include <stdio.h>

int main(){
    float A,B,C;
    ...
    ...
    cuadratica(A,B,C);
    ...
```



## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Autor
Martin Zavalla Gamarra.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.

