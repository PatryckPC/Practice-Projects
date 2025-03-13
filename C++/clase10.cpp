// Directivas

#include <string>
#include <iostream>
#include <stdio.h>
#include <vector>
using namespace std;

#include <cstdlib> //Para el puntero=NULL

// Variables

// Necesitamos crear la estructura correspondiente a todos los nodos de la lista
struct elemento{
    int dato;
    struct elemento * siguiente;
};


// Necesitamos crear el nodo que va a dar pie a la cabeza de la lista

typedef struct elemento nodo; // typedef palabra reservada para poder crear
//objetos fuera del main

//es necesario crear una funcion que replique los elementos de la lista
// sin necesidad de estar creando uno por unno, es importante mencionar
// que los nodos a pesar de llamarse igual, están alocados en diferentes
// lugares de la memoria

nodo *crearnodo(int x, nodo *enlace)
{
    // Primero creamos el nodo
    nodo *p;

    p = (nodo*) malloc(sizeof(nodo));// Estamos asignando memoria
    p->dato=x;
    p->siguiente=enlace;
    return p;
}

// Algoritmo

main(){

// Necesitamos mandar llamar la funcion

nodo *salida=NULL;

salida = crearnodo(3, salida);

cout<<salida->dato<<endl;

salida = crearnodo(5, NULL);

cout<<salida->dato<<endl;


/*
// Necesitamos crear el primer elemento de la lista

nodo * primero=NULL; //Puntero debe ir a null o el puntero se comporta de forma impredecible

cout<<"Programa terminado"<<endl;

// Necesitamos establecer una cantidad de memoria para la lista

primero = (nodo*) malloc(sizeof(nodo)); //Asigna el espacio que ocupa para nodo

// Ahora que el puntero ya existe y tiene una cantidad de memoria definida
//ya podemos almacenar valores

primero->dato=11;

// obj1.dato   Estatico
// obj1->dato  Dinamico

// Necesitamos especificar el fin de la lista

//primero->siguiente=NULL;


// SUpongamos que tenemos un segundo elemento en la lista
///////////////////////////////////////////////////////////

// Necesitamos crear el segundo elemento de la lista

nodo * segundo=primero; //Puntero debe ir a null o el puntero se comporta de forma impredecible

// Necesitamos establecer una cantidad de memoria para la lista

segundo = (nodo*) malloc(sizeof(nodo)); //Asigna el espacio que ocupa para nodo

// Ahora que el puntero ya existe y tiene una cantidad de memoria definida
//ya podemos almacenar valores

segundo->dato=5;

// obj1.dato   Estatico
// obj1->dato  Dinamico

// Necesitamos especificar el fin de la lista

//segundo->siguiente=NULL;

///////////////////////////////////////////////////////////

// Necesitamos crear el segundo elemento de la lista

nodo * tercero=segundo; //Puntero debe ir a null o el puntero se comporta de forma impredecible

// Necesitamos establecer una cantidad de memoria para la lista

tercero = (nodo*) malloc(sizeof(nodo)); //Asigna el espacio que ocupa para nodo

// Ahora que el puntero ya existe y tiene una cantidad de memoria definida
//ya podemos almacenar valores

tercero->dato=9;

// obj1.dato   Estatico
// obj1->dato  Dinamico

// Necesitamos especificar el fin de la lista

tercero->siguiente=NULL; //Esto solo se ocupa si es el final de la lista

cout<<primero->dato<<endl;
cout<<segundo->dato<<endl;
cout<<tercero->dato<<endl;

*/

}