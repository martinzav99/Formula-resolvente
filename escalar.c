extern void escalar(float *p,int size,float r);
#include<stdio.h>
int main(){
    
    float array[]={1.2,1.5,2.5};
    int t = sizeof(array)/sizeof(float);
    float numero = 2;
    for (int i = 0; i < 3; i++)
    {
        printf("%f ",array[i]);
    }
    escalar(&array[0],t ,numero);
    printf("\n");
    for (int i = 0; i < 3; i++)
    {
        printf("%f ",array[i]);
    }
    printf("\n");
    return 0;
}