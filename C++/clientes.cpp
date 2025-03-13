/*

Se necesita un programa de facturación de clientes. Los clientes tienen un numero, 
numero de artículos solicitados, el precio de cada unidad, y el estado en el que se encientra(nuevo o usado) 
además de eso, el estado del cliente: moroso, atrasado o pagado. El programa debe de general a los diversos
clientes e imprimirlos (para facilidad genere e imprima 5 clientes)

*/

#include <string>
#include <iostream>
using namespace std;
#include <random>


string nombres[] = {"Pepe","Pepito","Pepon","Pepardo","Pepote","Pepudo","Pepin"};
string estadosC[] = {"Moroso","Atrasado","Pagado"};
int numeros[] = {100, 200, 220, 278, 450, 340};
int numerosArt[] = {1, 2, 3, 4, 5, 6};
int precio[] = {123, 456, 789, 101, 121, 198};
string estadoA[] = {"Usado","Nuevo"};

int rnumero,rnumArt,restadoC,rprecio,restadoA,rnombre;

struct factura
{

string nombre;
int numero;
int numArt;
string estadoC;
int precio;
string estadoA;
}; 


main(){

for(int i = 0;i<5;i++){

    int num_nombres = sizeof(nombres)/sizeof(nombres[0]);

    rnumero = rand()%6;
    rnumArt = rand()%6;
    restadoC = rand()%3;
    rprecio = rand()%6;
    restadoA = rand()%2;
    rnombre = rand()%7;

    struct factura fac1;
    fac1.estadoA = estadoA[restadoA];
    fac1.estadoC = estadosC[restadoC];
    fac1.nombre = nombres[rnombre];
    fac1.numArt = numerosArt[rnumArt];
    fac1.numero = numeros[rnumero];
    fac1.precio = precio[rprecio];

    cout<<"Factura: "<<endl;
    cout<<"Estado articulo: "<<fac1.estadoA<<endl;
    cout<<"Estado Cliente: "<<fac1.estadoC<<endl;
    cout<<"Nombre Cliente: "<<fac1.nombre<<endl;
    cout<<"Numero articulo: "<<fac1.numArt<<endl;
    cout<<"Numero cliente: "<<fac1.numero<<endl;
    cout<<"Precio: "<<fac1.precio<<endl<<endl;

}

}