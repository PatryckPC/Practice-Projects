#include <iostream>
#include "123.h"
using namespace std;

int main() {
    Matrix matrix1(3, 3);
    matrix1.setElement(0, 0, 1);
    matrix1.setElement(0, 1, 2);
    matrix1.setElement(0, 2, 3);
    matrix1.setElement(1, 0, 4);
    matrix1.setElement(1, 1, 5);
    matrix1.setElement(1, 2, 6);
    matrix1.setElement(2, 0, 7);
    matrix1.setElement(2, 1, 8);
    matrix1.setElement(2, 2, 9);

    Matrix matrix2(3, 3);
    matrix2.setElement(0, 0, 10);
    matrix2.setElement(0, 1, 11);
    matrix2.setElement(0, 2, 12);
    matrix2.setElement(1, 0, 13);
    matrix2.setElement(1, 1, 14);
    matrix2.setElement(1, 2, 15);
    matrix2.setElement(2, 0, 16);
    matrix2.setElement(2, 1, 17);
    matrix2.setElement(2, 2, 18);

    Matrix sum = matrix1 + matrix2;
    Matrix product = matrix1 * matrix2;

    cout << "Matrix 1:" << endl;
    matrix1.print();

    cout << "Matrix 2:" << endl;
    matrix2.print();

    cout << "Sum:" << endl;
    sum.print();

    cout << "Product:" << endl;
    product.print();

    return 0;
}