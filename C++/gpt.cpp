#include <iostream>

using namespace std;

int main() {
  // Crear un arreglo tridimensional vacío
  int arr[2][2][2];

  // Pedir al usuario que ingrese los valores del arreglo
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      for (int k = 0; k < 2; k++) {
        // Pedir al usuario que ingrese el valor para la posición actual
        cout << "Ingrese el valor para la posición (" << i << ", " << j << ", " << k << "): ";
        cin >> arr[i][j][k];
      }
    }
  }

  // Imprimir el arreglo tridimensional
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      for (int k = 0; k < 2; k++) {
        cout << arr[i][j][k] << " ";
      }
      cout << endl;
    }
    cout << endl;
  }

  return 0;
}
