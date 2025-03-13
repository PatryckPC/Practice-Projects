//Desarrolle un programa que pida 10 numeros (almacenados en un vector), permita sumar 10 numeros y calcule la media aritmética del mismo

#include <iostream>
#include <vector>
using namespace std;

main(){

    vector<double> vector1(10);

    double lenvector1 = vector1.size();

    cout << "Ingresa los 10 numeros a trabajar" << endl;

    double valor;
    int i;

    for(i=0;i<lenvector1;i++)
        {
        cout << "Introduzca el " << i+1 << " valor: " <<endl;
        cin >> valor;
        vector1[i]=valor;
        }

    cout << "Estos son los valores ingresados: " << endl;

    for(i=0;i<lenvector1;i++)
        {
        cout << vector1[i]<< " ";
        }

    double sumvalores = 0;

    for(i=0;i<lenvector1;i++)
        {
        sumvalores = sumvalores + vector1[i];
        }

    double media = sumvalores/lenvector1;

    cout << endl <<"Esta es la media aritmetica de los valores dados: " << media;

}