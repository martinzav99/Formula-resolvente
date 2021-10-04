extern void escalar(float *p,int size,float r);
#include<stdio.h>
int main(){
    int tamano;
    float multiplicando,valor;
    float array[tamano];
    printf("ingrese valor del multiplicando:\n");
    scanf("%f",&multiplicando);
    printf("ingrese tamano del vector:\n");
    scanf("%d",&tamano);
    for (int i = 0; i < tamano; i++)
    {
        printf("ingrese el valor de la posicion %d del vector :\n",i);
        scanf("%f",&valor);
        array[i]=valor;
    }
          
    escalar(&array[0],tamano,multiplicando);
    
    printf("El vector resultante es:\n");
    for (int i = 0; i < tamano; i++)
    {
        printf("%f ",array[i]);
    }
    printf("\n");
    return 0;
}