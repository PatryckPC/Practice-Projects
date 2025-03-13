//Desarrolle un programa que pida 5 datos ( numeros o chars ) y devuelva los datos en orden inverso

#include <iostream>
#include <vector>
using namespace std;

main(){

    vector<char> vector1(5);

    int lenvector1 = vector1.size();

    cout << "Ingrese 5 datos del tipo char (numero o letra)" << endl;

    char valor;
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

    cout << endl<<"Estos son los valores ingresados en orden inverso: " << endl;

    for(i=lenvector1-1;i>=0;i--)
        {
        cout << vector1[i]<< " ";
        }

}