extern void escalar(float *p,int size,float r);
#include<stdio.h>
int main(){
    
    float array[] = {-2.345,3.21,-1258};
    float multiplicando = 7.212;
    int tamano = sizeof(array)/sizeof(float);

    printf("El multiplicando es:%f\n",multiplicando);

    printf("El vector elegido es:\n");
    for (int i = 0; i < tamano; i++)
    {
        printf("%f ",array[i]);
    }
    printf("\n");

    escalar(&array[0],tamano,multiplicando);
 
    printf("El vector resultante es:\n");
    for (int i = 0; i < tamano; i++)
    {
        printf("%f ",array[i]);
    }
    printf("\n");
    return 0;
}
