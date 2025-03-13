//directivas

#include <iostream> //para poder usar cin y cout
using namespace std;

//variables
int x=3,y=3,z=3;
int i,j,k;
int matriz[3][3][3];

//algoritmo
void llenar_matriz(){

    cout<<"En este algoritmo podras ingresar los datos numericos que desees en un arreglo tridimensional de 3x3x3 en orden"<<endl;

    for ( i = 0; i < x; i++)
    {
        for ( j = 0; j < y; j++)
        {
            for ( k = 0; k < z; k++)
            {

                cout<<"Ingrese el valor"<<endl;
                cin >> matriz[i][j][k];
                cout<<"Su valor esta en la posicion x: "<<i<<", y: "<<j<<", z: "<<k<<endl;

            }
        } 
    }  
    
    cout<<endl<<"Este es su arreglo tridimensional"<<endl;

    for ( i = 0; i < x; i++)
    {
        for ( j = 0; j < y; j++)
        {
            for ( k = 0; k < z; k++)
            {

                cout << matriz[i][j][k] << " ";
            }
            cout<<endl;
        } 
        cout<<endl;
    }  
    system("pause");
}

main(){
    llenar_matriz();
}