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
#include <vector>

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

vector <string> nombres(5);
nombres[0]="Pat";
nombres[1]="Set";
nombres[2]="Kal";
nombres[3]="LOL";
nombres[4]="SIS";

vector <int> numeros(5);
numeros[0]=123;
numeros[1]=321;
numeros[2]=456;
numeros[3]=645;
numeros[4]=789;

vector <int> numArts(5);
numArts[0]=1;
numArts[1]=2;
numArts[2]=3;
numArts[3]=4;
numArts[4]=5;

vector <string> estadoCs(3);
estadoCs[0]="Moroso";
estadoCs[1]="Atrasado";
estadoCs[2]="Pagado";

vector <int> precios(5);
precios[0]=123;
precios[1]=223;
precios[2]=323;
precios[3]=423;
precios[4]=523;

vector <string> estadoAs(2);
estadoAs[0]="Nuevo";
estadoAs[1]="Usado";

for(int i = 0;i<5;i++){
    rnumero = rand()%nombres.size();
    rnumArt = rand()%numArts.size();
    restadoC = rand()%estadoCs.size();
    rprecio = rand()%precios.size();
    restadoA = rand()%estadoAs.size();
    rnombre = rand()%nombres.size();

    struct factura fac1;
    fac1.estadoA = estadoAs[restadoA];
    fac1.estadoC = estadoCs[restadoC];
    fac1.nombre = nombres[rnombre];
    fac1.numArt = numArts[rnumArt];
    fac1.numero = numeros[rnumero];
    fac1.precio = precios[rprecio];

    cout<<"Factura: "<<endl;
    cout<<"Estado articulo: "<<fac1.estadoA<<endl;
    cout<<"Estado Cliente: "<<fac1.estadoC<<endl;
    cout<<"Nombre Cliente: "<<fac1.nombre<<endl;
    cout<<"Numero articulo: "<<fac1.numArt<<endl;
    cout<<"Numero cliente: "<<fac1.numero<<endl;
    cout<<"Precio: "<<fac1.precio<<endl<<endl;

}

}

/*
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
*/