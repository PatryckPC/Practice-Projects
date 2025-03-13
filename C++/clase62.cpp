//directivas

#include <vector>
#include <iostream> //para poder usar cin y cout
using namespace std;

//variables

int elementos_leidos,dame_valor;

//inicio del algoritmo


// VECTOR DINAMICO
void llenar_vector(vector<int> & vector1){

    elementos_leidos=0;

    cout <<"Dame el valor a guardar en el vector" <<endl;
    while (cin >> dame_valor)
    {
        vector1.push_back(dame_valor);
    }
    
}

main(){

//cout << "dime cuantos valores quieres almacenar" <<endl;
//cin>>respuesta;
vector<int> vector1(0); //Debilidad - Tienen una longitud definida

llenar_vector(vector1);

//se necesita un proceso que permita aceptar valores
//sean cuantos necesarios sin la necesidad de definir el tamaño del vector
//seria la memoria limitada, intentando un vector dinámico

//for(i=0;<vector.size();i++){

    //cout << "Dame el valor a guardar" << endl;
    //cin >> dame_valor;
    //vector1[i]=dame_valor;

//}

cout << "programa terminado"<< endl;

int i;
for(i=0;i < vector1.size();i++){
    cout << vector1[i] <<endl;
}

}

//fin del algoritmo