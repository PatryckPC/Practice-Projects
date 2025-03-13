// Directivas

#include <string>
#include <iostream>
#include <stdio.h>
using namespace std;

// Variables

// Algoritmo

struct desmadreshark
{
    char titulo[80];
    char artista[80];
    int num_canciones;
    float precio;
    float duracion;
    char fecha_compra[80];
};

struct num_complejo
{
    int parteReal,parteImaginaria;
}x1,x2;

struct venta
{
    float precio, ganancia;
    int unidades_vendidas,inventario;
    char producto[40],caducidad[40],proveedor[40],cliente[40];
}ventas_matutinas,ventas_vespertinas;

main(){

    /*
    string hola;
    printf("La estructura de datos pesa: ");
    printf("%d \n",sizeof(desmadreshark));
    printf("Introduce tu nombre");
    scanf("%s \n",hola);
    */

struct desmadreshark cd1;
printf("nombre de la cancion: \n");
cin >> cd1.titulo;
cout<<cd1.titulo<<endl;
printf("Precio de la cancion : \n");
scanf("%f",cd1.precio);

}

// Clase
/*
Vectores 

vectores limitacion : Solo pueden guardar un tipo de dato
para cambiar eso usamos una estructura de datos

Variables -- Declaracion -- Definicion

tamaño espacio estructura de datos 252 bytes




*/