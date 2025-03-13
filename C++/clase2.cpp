#include <iostream> //input output stream // cout cin
#include <vector>
//#include <stdlib> //fprint fscan
//se suelte utilizar void cuando main no debe de regresar ningun valor
//se suele utilizar int cuando buscamos que la funcion main devuelva algun valor
//segunda nota, si colocamons int main(), entonces al final del main debemos escribir
//return 0
using namespace std;

main(){
    //se veia como definir un arreglo
    //int arreglo1[3]={1,2,3}; //indicamos la cantidad de espacios que va a guardar
    //como definir un vector
    //int tamanio_vector = sizeof arreglo1 / sizeof arreglo1[0];
    //cout << tamanio_vector << endl;

    //que existian objetos de segunda clase y objetos de primera clase
    //objetos de segunda clase son aquellos que deben de ser manipulados de cierta manera
    //porque no se tiene acceso al objeto como tal de una manera convencional

    //Los objetos de primera clase son aquellos que se pueden acceder aprovechando
    //las estructuras de datos

    //vector<int> vector1(3);
    //int tamanio_vector=vector1.size();
    //cout << tamanio_vector << endl;

    int ciclos;
    cout << "Dame la cantidad de elementos que quieres almacenar" << endl;
    cin >> ciclos;


    //declaremos vector
    vector<int> valores(ciclos);

    //declaremos donde guardar el valor a dar por el usuario
    int valor;
    int i;

    for(i=0;i<valores.size();i++)
        {
        cout << "Introduzca el " << i+1 << " valor." <<endl;
        cin >> valor;
        valores[i]=valor;
        }

    cout << "El vector esta lleno" << endl;

    for(i=0;i<valores.size();i++)
        {
        cout << "El valor " << i+1 << " es: " << valores[i]<<endl;
        }

}