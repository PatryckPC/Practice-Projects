//hacer un programa que solicite mediante strings la fecha actual, luego pida la fecha de nacimiento
//del usuario y mediante funciones felicite si es el dia del cumpleañero

// Directivas

#include <string>
#include <iostream>
#include <stdio.h>
using namespace std;

// Variables

string actdia,actmes,actanio, nacdia,nacmes,nacanio, si, sumaact,sumanac;

string felicitacion(string,string);

// Algoritmo

void pedir_fecha_actual(){
    cout<<"Dame el dia actual"<<endl;
    cin>>actdia;
    cout<<"Dame el mes actual"<<endl;
    cin>>actmes;
    cout<<"Dame el anio actual"<<endl;
    cin>>actanio;
    sumaact=actdia+actmes;
}

void pedir_fecha_nacimiento(){
    cout<<"Dame tu dia de nacimiento"<<endl;
    cin>>nacdia;
    cout<<"Dame tu mes de nacimiento"<<endl;
    cin>>nacmes;
    cout<<"Dame tu anio de nacimiento"<<endl;
    cin>>nacanio;
    sumanac=nacdia+nacmes;
}

main(){

    pedir_fecha_actual();
    pedir_fecha_nacimiento();

    si = felicitacion(sumaact,sumanac);
    cout<<si<<endl;
}


string felicitacion(string f1, string f2){

    string resultado;
    if (f1 == f2){
        resultado = "Felicidades, es tu cumpleaños";
    }else{
        resultado = "No es tu cumpleaños";
    }
    return resultado;
}