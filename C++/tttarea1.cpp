// Desarrolle un programa que almacene en un vector los signos zodiacales, e indique el signo zodiacal según el mes de nacimiento del usuario

#include <iostream>
#include <vector>
using namespace std;

main(){

    string signoszodiacales[] = {"Capricornio", "Acuario", "Piscis", "Aries", "Tauro", "Géminis", "Cáncer", "Leo", "Virgo", "Libra", "Escorpio", "Sagitario"}; 


    int mes;

    cout << "Ingresa el mes de tu nacimiento (en numeros): ";
    cin >> mes;

    cout << "Tu signo zodiacal es "<< signoszodiacales[mes-1];

}