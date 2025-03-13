// Directivas

#include <string>
#include <iostream>
#include <stdio.h>
using namespace std;

// Variables

int a,b,c,suma;

// Algoritmo

int sumar(int,int,int);
int persona();

void pedir_datos(){
cout<<"Introduce el primer numero"<<endl;
    cin>>a;
    cout<<"Introduce el segundo numero"<<endl;
    cin>>b;
    cout<<"Introduce el tercer numero"<<endl;
    cin>>c;
}
main(){
    /*
    struct persona persona1;
    persona1.*/
    pedir_datos();
    suma = sumar(a,b,c);//Para almacenar la informacion antes de ser destruida
    cout<<"La suma es: "<<suma<<endl;
}

struct persona{
    int edad;
};

int sumar(int variablelocal1,int variablelocal2,int variablelocal3){
    int resultado=variablelocal1+variablelocal2+variablelocal3;
    return resultado;// permite extraer informacion, sacarlo del global y mandarlo al local
}