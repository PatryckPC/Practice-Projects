//directivas
#include <string>
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

//variables

int i,j,contador;
string texto;
string mayus = ("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ");
string guardadas;

//Algoritmo
main(){

    cout<< "Ingresa el texto"<< endl;
    getline(cin, texto);

    for ( i = 0; i < texto.size(); i++)
    {
        for ( j = 0; j < mayus.size(); j++)
        {
            if(texto[i]==mayus[j]){
                contador = contador + 1;
                guardadas.push_back(texto[i]);
            }
        }
        
    }

    cout<<"Esta es la cantidad de mayusculas en tu texto: "<< contador<< endl;
    cout<<"Estas son las mayusculas encontradas: "<< guardadas<<endl;
    system("pause");
}