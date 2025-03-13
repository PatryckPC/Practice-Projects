// Directivas

#include <string>
#include <iostream>
#include <stdio.h>
#include <vector>
using namespace std;

// Variables

int cantidadlibros, i, respI, busqI;
string nombre, respuesta, respS, busqS;

/*Instrucciones 
Diseñe un algoritmo que obtenga año de publicacion, titulo, autor, editorias, tipo de pasta,
una vez almacenada la informacion diseñe un metodo de busqueda pase buscar un libro por
cualquiera de esa informacion y diga si existe o no */

// Algoritmo

struct libro
{
    int anio;
    string titulo;
    string autor;
    string editorias;
    string tipodepasta;
    
}libro[5];

main(){
    
    for (i = 0; i< 5 ;i++){
        cout<<"Ingresa el anio del libro "<< i <<endl;
        cin >> libro[i].anio;
        cout<<"Ingresa el titulo del libro "<< i <<endl;
        cin >> libro[i].titulo;
        cout<<"Ingresa el autor del libro "<< i <<endl;
        cin >> libro[i].autor;
        cout<<"Ingresa el editorias del libro "<< i <<endl;
        cin >> libro[i].editorias;
        cout<<"Ingresa el tipo de pasta del libro "<< i <<endl;
        cin >> libro[i].tipodepasta;
    }

    cout<<"Que informacion de libro desea buscar?"<<endl;
    cin >> respuesta;

    if (respuesta == "anio"){
        cout<<"Dime el año"<<endl;
        cin>>respI;
        for (i = 0;i<5;i++){
            busqI = libro[i].anio;
            if (busqI == respI){
                cout<<"El autor existe y pertenece al libro con el titulo: "<< libro[i].titulo<<endl;
                break;
            }
            if (i == 4){
                cout<<"El libro con ese dato no existe"<<endl;
                break;
            }
        }
    }
    if (respuesta == "titulo"){
        cout<<"Dime el titulo"<<endl;
        cin>>respS;
        for (i = 0;i<5;i++){
            busqS = libro[i].titulo;
            if (busqS == respS){
                cout<<"El titulo existe y pertenece al libro con el titulo: "<< libro[i].titulo<<endl;
                break;
            }
            if (i == 4){
                cout<<"El libro con ese dato no existe"<<endl;
                break;
            }
        }
        
    }
    if (respuesta == "autor"){
        cout<<"Dime el autor"<<endl;
        cin>>respS;
        for (i = 0;i<5;i++){
            busqS = libro[i].autor;
            if (busqS == respS){
                cout<<"El autor existe y pertenece al libro con el titulo: "<< libro[i].titulo<<endl;
                break;
            }
            if (i == 4){
                cout<<"El libro con ese dato no existe"<<endl;
                break;
            }
        }
        
    }
    if (respuesta == "editorias"){
        cout<<"Dime el editoria"<<endl;
        cin>>respS;
        for (i = 0;i<5;i++){
            busqS = libro[i].editorias;
            if (busqS == respS){
                cout<<"El editoria existe y pertenece al libro con el titulo: "<< libro[i].titulo<<endl;
                break;
            }
            if (i == 4){
                cout<<"El libro con ese dato no existe"<<endl;
                break;
            }
        }
        
    }
    if (respuesta == "tipodepasta"){
        cout<<"Dime el tipo de pasta"<<endl;
        cin>>respS;
        for (i = 0;i<5;i++){
            busqS = libro[i].tipodepasta;
            if (busqS == respS){
                cout<<"El tipo de pasta existe y pertenece al libro con el titulo: "<< libro[i].titulo<<endl;
                break;
            }
            if (i == 4){
                cout<<"El libro con ese dato no existe"<<endl;
                break;
            }
        }
        
    }

}