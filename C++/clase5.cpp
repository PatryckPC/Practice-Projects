//directivas
#include <string>
#include <iostream>
#include <random>
#include <vector>
#include <algorithm>
using namespace std;

//variables
const int tamaniomaximo = 10; //variable que especifica el tamaño de la lista
int i, valor_aleatorio, valor_maximo;

//algoritmo 
//vector necesitamos acceder a cada uno de manera manual 
//y la lista si podemos acceder al que querramos sin ir 1 por 1

void aleatorizar_vector(vector<int> & numero){

    for (i = 0; i < tamaniomaximo; i++)
    {
        valor_aleatorio = rand()%10;
        numero[i]=valor_aleatorio;
        cout<<numero[i]<<endl;
    }

}

main(){


    //definamos la  - Esto NO es primitivo
    //int arreglo1[3]={1,2,3}; //Esto es primitivo o de segunda
    vector <int> numero(tamaniomaximo);
    aleatorizar_vector(numero);
    
    //quiero el valor maximo
    valor_maximo = *max_element(numero.begin(),numero.end());
    cout<<"Este es el valor Maximo: "<<valor_maximo<<endl;

    //Objeto de primer grado (usa librerias)
    //Esto es primitivo: 
    //Perro = "Juan"
    //Perro = "Toby" - Se borra
    //int edades_grupo_36 [15]
    //[0]=aguilar vargas
    //[1]=camacho - Esto es primitivo porque no podemos acceder a las propiedades
    //edades_grupo_36. - Aqui saldrian las propiedades como en java
    //los objetos primitivos son objetos a los cuales no podemos acceder a sus propiedades
    //objeto es una coleccion de datos del mismo tipo
}