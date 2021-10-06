extern void cuadratica(float a,float b ,float c);
#include <stdio.h>

int main(){
    float A,B,C;
    printf("Formula resolvente :\n");
    printf("ingrese valor de A\n");
    scanf("%f",&A);
    printf("ingrese valor de B\n");
    scanf("%f",&B);
    printf("ingrese valor de C\n");
    scanf("%f",&C);
    cuadratica(A,B,C);
    return 0;
}