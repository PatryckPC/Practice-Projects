//directivas
#include <string>
#include <iostream>
#include <random>
#include <vector>
#include <algorithm>
using namespace std;

//variables
//char nombre[20];
int filas =3,columnas=3; //arreglo bidimensional
int i,j,valor;
int matriz[5][5];

//algoritmo
void llenar_matriz(){

    /*
    int matriz[filas][columnas] = {{1,2,3},
                                  {4,5,6}}; */

    for ( i = 0; i < filas; i++)
    {
        for ( j = 0; j < columnas; j++)
        {
            cout<<"Ingrese el valor"<<endl;
            cin>>valor;
            matriz[i][j]=valor;
            cout<<"Su valor esta en la fila "<<i<<" y la columna "<<j<<endl;
        }
        
    }

    for ( i = 0; i < filas; i++)
    {
        for ( j = 0; j < columnas; j++)
        {
            cout<<matriz[i][j]<<endl;
        }
        
    }
    
}

main(){
    llenar_matriz();
}
//clase
// unidimensional --> [1,2,3,4,5,6,] <vector>
// bidimensional <vector de vectores>
// Vectores
// Arreglo                 Vectores
// int nombre[20]          vector<int> nombre[]
// objetos de segunda      1a
// estructura de datos     funciones miembro
// duplas [0,1],[2,3],[4,5]
// debilidad de arreglo - si quiero llegar al 3 tengo que pasar por el 0,1,2 (uno por uno)
// para un vector bidimiensional o matrices:
// for(filas)
//    for(columnas)
// longitud es la cantidad de espacio ocupado de un vector
// capacidad es el espacio de memora apartado para ese vector
// push_back no aparta memoria para un futuro
//