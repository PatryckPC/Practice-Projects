/*
Ejercicio 1:
Se quiere informatizar-guardar-almacenar-digitalizar la temporada de equipos de futbol americano
y futbol soccer, la informacion para ambos equipos es: Nombre del equipo, Numero de victorias,
Derrotas.
Para los equipos de futbol soccer la informacion recopilada es: Numero de perdidas de balon,
numero de goles, mejor penalista y numero de penales.
Para el equipo de futbol americano la informacion es: Numero de goles de campo, numero de anotaciones,
nombre del mejor anotador.

Escriba un programa que recopile la informacion solicitada.

Ejercicio 2:
Modifique el programa anterior escribiendo la informacion de 3 equipos de soccer y de americano y 
muestre en pantalla un listado de los mejores anotadores de cada equipo, los peores y el equipo que tenga
mas victorias en su categoria (mejor equipo de soccer y mejor de americano)
*/

#include <string>
#include <iostream>
using namespace std;

// Variables

struct soccer
{

string nombreequiposoc;
int victoriassoc;
int derrotassoc;

int perdidasbalon;
int goles;
string mejorpenalista;
int penales;

}soccer[3];

struct americano
{

string nombreequipoame;
int victoriasame;
int derrotasame;

int golesdecampo;
int anotaciones;
string mejoranotador;

}americano[3];

main(){

    //Primera parte
    /*
    cout<<"Informacion equipo soccer"<<endl;
    cout<<"Ingrese el nombre del equipo"<<endl;
    cin>>soccer[0].nombreequiposoc;
    cout<<"Ingrese las victorias del equipo"<<endl;
    cin>>soccer[0].victoriassoc;
    cout<<"Ingrese las derrotas del equipo"<<endl;
    cin>>soccer[0].derrotassoc;
    cout<<"Ingrese las perdidas de balon del equipo"<<endl;
    cin>>soccer[0].perdidasbalon;
    cout<<"Ingrese los goles del equipo"<<endl;
    cin>>soccer[0].goles;
    cout<<"Ingrese el mejor penalista del equipo"<<endl;
    cin>>soccer[0].mejorpenalista;
    cout<<"Ingrese penales del equipo"<<endl;
    cin>>soccer[0].penales;

    cout<<"Informacion equipo futbol americano"<<endl;
    cout<<"Ingrese el nombre del equipo"<<endl;
    cin>>americano[0].nombreequipoame;
    cout<<"Ingrese las victorias del equipo"<<endl;
    cin>>americano[0].victoriasame;
    cout<<"Ingrese las derrotas del equipo"<<endl;
    cin>>americano[0].derrotasame;
    cout<<"Ingrese los goles de campo del equipo"<<endl;
    cin>>americano[0].golesdecampo;
    cout<<"Ingrese las anotaciones del equipo"<<endl;
    cin>>americano[0].anotaciones;
    cout<<"Ingrese el mejor anotador del equipo"<<endl;
    cin>>americano[0].mejoranotador;
    */

   //Segunda parte

    //Equipo soccer 1
   soccer[0].nombreequiposoc = "Teletubbies";
   soccer[0].victoriassoc = 2;
   soccer[0].derrotassoc = 4;
   soccer[0].perdidasbalon = 13;
   soccer[0].goles = 6;
   soccer[0].mejorpenalista = "TinkyWinky";
   soccer[0].penales = 2;

   //Equipo soccer 2
   soccer[1].nombreequiposoc = "Power Rangers";
   soccer[1].victoriassoc = 5;
   soccer[1].derrotassoc = 1;
   soccer[1].perdidasbalon = 19;
   soccer[1].goles = 2;
   soccer[1].mejorpenalista = "Blanco";
   soccer[1].penales = 7;

   //Equipo soccer 3
   soccer[2].nombreequiposoc = "Halo";
   soccer[2].victoriassoc = 4;
   soccer[2].derrotassoc = 12;
   soccer[2].perdidasbalon = 2;
   soccer[2].goles = 1;
   soccer[2].mejorpenalista = "El halo verde";
   soccer[2].penales = 9;

    //Equipo americano 1    
   americano[0].nombreequipoame = "Patapon";
   americano[0].victoriasame = 1;
   americano[0].derrotasame = 2;
   americano[0].golesdecampo = 3;
   americano[0].anotaciones = 4;
   americano[0].mejoranotador = "Lady Meden";

   //Equipo americano 2    
   americano[1].nombreequipoame = "Nintenderos";
   americano[1].victoriasame = 4;
   americano[1].derrotasame = 3;
   americano[1].golesdecampo = 2;
   americano[1].anotaciones = 1;
   americano[1].mejoranotador = "Mario";

   //Equipo americano 3
   americano[2].nombreequipoame = "Ligoleyens";
   americano[2].victoriasame = 7;
   americano[2].derrotasame = 6;
   americano[2].golesdecampo = 5;
   americano[2].anotaciones = 9;
   americano[2].mejoranotador = "Azir";
   
   /*
   Modifique el programa anterior escribiendo la informacion de 3 equipos de soccer y de americano y 
    muestre en pantalla un listado de los mejores anotadores de cada equipo, los peores y el equipo que tenga
    mas victorias en su categoria (mejor equipo de soccer y mejor de americano)
    */


   cout<<"Tops de Soccer"<<endl<<endl;
    cout<<"Mejor equipo en anotaciones"<<endl<<endl;

     string mejorequipo;
     string mejoranotador;
    int goleador = 0;

   for (int i = 0; i < 3;i++)
   {

    int goles = soccer[i].goles;

    if (goles>goleador){
        goleador = goles;
        mejorequipo = soccer[i].nombreequiposoc;
        mejoranotador = soccer[i].mejorpenalista;
    }

   }
   
    cout<<"El mejor anotador de soccer es: "<<mejoranotador<<endl;
    cout<<"Perteneciente al equipo: "<<mejorequipo<<endl;
    cout<<"Con una cantidad de : "<<goleador<<" goles"<<endl<<endl;

    cout<<"Peor equipo en anotaciones"<<endl<<endl;

     string peorequipo;
     string peoranotador;
    goleador = 0;

   for (int i = 0; i < 3;i++)
   {

    int goles = soccer[i].goles;

    if (goles<goleador){
        goleador = goles;
        peorequipo = soccer[i].nombreequiposoc;
        peoranotador = soccer[i].mejorpenalista;
    }else {
        goleador = goles;
    }

   }
   
    cout<<"El peor anotador de soccer es: "<<peoranotador<<endl;
    cout<<"Perteneciente al equipo: "<<peorequipo<<endl;



    cout<<"Mejor equipo en victorias"<<endl<<endl;

     string mejorequipovic;
    int victorias = 0;
    int ganador;

   for (int i = 0; i < 3;i++)
   {

    int ganador = soccer[i].victoriassoc;

    if (ganador>victorias){
        victorias = ganador;
        mejorequipovic = soccer[i].nombreequiposoc;
   }
   }
   
    cout<<"El equipo con mas victorias en soccer es: "<<mejorequipovic<<endl<<endl;





    /// Los mejores en americano
    

    cout<<"Tops de Americano"<<endl<<endl;

    cout<<"Mejor equipo en anotaciones"<<endl<<endl;

     string mejorequipoame;
     string mejoranotadorame;
    int goleadorame = 0;

   for (int i = 0; i < 3;i++)
   {

    int golesame = americano[i].anotaciones;

    if (golesame>goleadorame){
        goleadorame = golesame;
        mejorequipoame = americano[i].nombreequipoame;
        mejoranotadorame = americano[i].mejoranotador;
    }

   }
   
    cout<<"El mejor anotador de americano es: "<<mejoranotadorame<<endl;
    cout<<"Perteneciente al equipo: "<<mejorequipoame<<endl;
    cout<<"Con una cantidad de : "<<goleadorame<<" anotaciones"<<endl<<endl;

    cout<<"Peor equipo en anotaciones"<<endl<<endl;

     string peorequipoame;
     string peoranotadorame;
    goleadorame = 0;

   for (int i = 0; i < 3;i++)
   {

    int golesame = americano[i].anotaciones;

    if (golesame<goleadorame){
        goleadorame = golesame;
        peorequipoame = americano[i].nombreequipoame;
        peoranotadorame = americano[i].mejoranotador;
    }else {
        goleadorame = golesame;
    }

   }
   
    cout<<"El peor anotador de americano es: "<<peoranotadorame<<endl;
    cout<<"Perteneciente al equipo: "<<peorequipoame<<endl;


    cout<<"Mejor equipo en victorias"<<endl<<endl;

     string mejorequipovicame;
    int victoriasame = 0;
    int ganadorame;

   for (int i = 0; i < 3;i++)
   {

    int ganadorame = americano[i].victoriasame;

    if (ganadorame>victoriasame){
        victoriasame = ganadorame;
        mejorequipovicame = americano[i].nombreequipoame;
   }
   }
   
    cout<<"El equipo con mas victorias en americano es: "<<mejorequipovicame<<endl;

}