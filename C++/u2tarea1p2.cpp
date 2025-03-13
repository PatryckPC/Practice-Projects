//directivas

#include <iostream>
using namespace std;

//variables

int filas=5,columnas=4; //arreglo bidimensional
int i,j,temporal;
int matriz[5][4];
int transpuesta[4][5];

//algoritmo
void llenar_matriz(){

    cout<<"Este algoritmo te permite almacenar un arreglo bidimensional (5x4) y te devolvera su transpuesta (4x5)"<<endl;

    for ( i = 0; i < filas; i++)
    {
        for ( j = 0; j < columnas; j++)
        {
            cout<<"Ingrese el valor"<<endl;
            cin >> matriz[i][j];
            cout<<"Su valor esta en la fila "<<i<<" y la columna "<<j<<endl;
        }
        
    }

    for ( i = 0; i < filas; i++)
    {
        for ( j = 0; j < columnas; j++)
        {
            cout<<matriz[i][j]<<" ";
        }
        cout<<endl;
    }

    //Convertir a transpuesta

    cout<<endl<<"Esta es la transpuesta"<<endl;

    temporal = filas;
    filas=columnas;
    columnas = temporal;

    for ( i = 0; i < filas; i++)
    {
        for ( j = 0; j < columnas; j++)
        {
            transpuesta[i][j] = matriz[j][i];
        }
        
    }

    for ( i = 0; i < filas; i++)
    {
        for ( j = 0; j < columnas; j++)
        {
            cout<<transpuesta[i][j]<<" ";
        }
        cout<<endl;
    }
    system("pause");
}

main(){
    llenar_matriz();
}