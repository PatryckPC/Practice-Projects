#include <iostream>
#include <vector>

using namespace std;

class Matrix {
private:
    int rows;                           // Número de filas de la matriz
    int columns;                        // Número de columnas de la matriz
    vector<vector<int>> data;           // Almacena los elementos de la matriz

public:
    Matrix(int rows, int columns) : rows(rows), columns(columns) {
        data.resize(rows, vector<int>(columns, 0));                           // Inicializa el vector bidimensional con el tamaño de la matriz y establece todos los elementos a cero
    }

    void setElement(int row, int column, int value) {
        data[row][column] = value;                           // Establece el valor de un elemento en la posición dada
    }

    int getElement(int row, int column) {
        return data[row][column];                                      // Obtiene el valor de un elemento en la posición dada
    }                           

    Matrix operator+(const Matrix& other) const {
        if (rows != other.rows || columns != other.columns) {
            throw runtime_error("No se pueden sumar, ya que no tienen las mismas dimensiones");             // Verifica que las dimensiones de las matrices sean iguales para realizar la suma
        }

        Matrix result(rows, columns);                                                                       // Crea una nueva matriz para almacenar el resultado
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                result.data[i][j] = data[i][j] + other.data[i][j];                                           // Realiza la suma elemento por elemento
            }
        }

        return result;                                                                                             // Devuelve la matriz resultado
    }

    Matrix operator*(const Matrix& other) const {
        if (columns != other.rows) {
            throw runtime_error("El número de columnas en la primera matriz debe coincidir con el número de filas en la segunda matriz para la multiplicación");        // Verifica que el número de columnas de la primera matriz coincida con el número de filas de la segunda matriz para realizar la multiplicación
        }

        Matrix result(rows, other.columns);                                                                                                                                     // Crea una nueva matriz para almacenar el resultado
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < other.columns; j++) {
                for (int k = 0; k < columns; k++) {
                    result.data[i][j] += data[i][k] * other.data[k][j];                                                                                                         // Realiza la multiplicación matricial utilizando bucles anidados
                }
            }
        }

        return result;                    // Devuelve la matriz resultado
    }

    void print() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                cout << data[i][j] << " ";                   // Muestra los elementos de la matriz en la consola
            }
            cout << endl;
        }
    }
};