// Teoria con respecto a los arboles

// Arboles generalidads

// Estructura de elementos de informacion que se encuentran relacionados 
// entre si, a traves de ramas, el arbol genealógico

// Definicion arbol: es un conjunto finito de elementos, a los que llamamos
// nodos, con un conjunto finito de lineas denominadas ramas, según 
// el numero de ramas relacionadas a un solo nodo puede ser llamado grafo

// Al primer nodo lo conocemos como rais
// Los nodos restantes se separan en diferentes conjuntos de nodos
// a si vez pueden ser llamados subarboles

// A un nodo se le puede llamar "padre" (ascendientes) si a partir de el se crean nodos
// consecutivos ( estos nodos consecutivos pueden ser llamados hijos, descendientes )

// A dos nodos de un mismo nivel los conocemos como hermanos, al último nivel
// de nodos lo conocemos como hojas

// De forma general un nivel es la distancia que existe entre un nodo y la raiz

// La altura del arbol corresponde a la cantidad de niveles
// asi, si un arbol tiene niveles 0,1,2 ----- tiene un total de 3
// La altura del arbol es 3

// A -- B -- C  Rama de B a C es: rama ABC
//   -- D -- X  Tama de D a X es: rama ADX
//   -- Z
// 0    1    2  <-- Niveles (comienza en 0)
// Niveles = Altura del arbol = 3
// No equilibrado

// Un arbol puede definirse como un conjunto de subarboles, esto es cierto siempre que
// pueda existir un arbol vacio, o tengan un nodo que conecte de otra forma con otro arbol

// Hablamos de "equilibrio", equilibirio es cuando un nodo en particular tiene un 
// numero k máximo de hijos, tienuendo una altura h estos sean iguales
// es decir, cuando todos los nodos caigan al mismo nivel

// A -- B -- D -- H
//   -- C -- F      Esta F NO es una hoja porque puede tener un conjunto vacio para que este equilibrado -- 0L
//        -- G -- I

// Equilibrado

// Existe una segunda forma para representarlos 
// un modo de lista

// 100 ------------------------------------------ Computadora
// 100 - 10 ------------------------------------- Monitor
// 100 - 10 - 1---------------------------------- Colores
// 100 - 10 - 2---------------------------------- Resolucion
// 100 - 10 - 3---------------------------------- HZ
// 100 - 20 ------------------------------------- CPU
// 100 - 20 - 1---------------------------------- ALU
// 100 - 20 - 2---------------------------------- ROM

// 1000 ------------------- A
// 1000 - 100 ------------- B
// 1000 - 200 ------------- C
// 1000 - 300 ------------- D
// 1000 - 100 - 10 -------- E
// 1000 - 100 - 20 -------- F
// 1000 - 200 - 10 -------- G
// 1000 - 300 - 10 -------- H
// 1000 - 300 - 20 -------- J
// 1000 - 300 - 30 -------- E
// 1000 - 100 - 10 - 1 ---- K
// 1000 - 100 - 10 - 2 ---- L
// 1000 - 300 - 10 - 1 ---- M

// observese que el método de la lista puede ser útil sin embargo queda 
// no tan claro, para solucionarlo tenemos entonces la notación de los conjuntos

// {A(B(E(K,L),F),C(G),D(G(M),I,J))}

// EXamen : ¿Porque la de conjuntos es mejor que la de lista? R = 