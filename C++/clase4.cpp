//directivas
#include <string>
#include <iostream>
using namespace std;

//variables

int *apuntador, valor_de_acumulador;

//string letra;
//int i,j,columnas,filas;

//algoritmo
main(){

    int x=5;
    int y=7;

    apuntador = &x;
    valor_de_acumulador = *apuntador;

    *apuntador=10;

    cout<<*apuntador<<endl;
    //columnas= 5;
    //filas=5;

    //for(i=0;i<columnas;i++){
        //for(j=0;j<filas;j++){
            //cout<<i<<" , "<<j<<endl;
        //}
    //}

    cout<<"programa terminado"<<endl;
}