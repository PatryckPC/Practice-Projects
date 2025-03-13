-- Tabla 1: Productos
INSERT INTO Productos VALUES (1, 'Café americano', 100, 25.50);
INSERT INTO Productos VALUES (2, 'Café con leche', 80, 30.75);
INSERT INTO Productos VALUES (3, 'Espresso', 60, 22.99);
INSERT INTO Productos VALUES (4, 'Cappuccino', 70, 32.25);
INSERT INTO Productos VALUES (5, 'Latte', 90, 34.50);
INSERT INTO Productos VALUES (6, 'Mocha', 50, 38.99);
INSERT INTO Productos VALUES (7, 'Té negro', 120, 18.99);
INSERT INTO Productos VALUES (8, 'Té verde', 100, 20.50);
INSERT INTO Productos VALUES (9, 'Té de frutas', 80, 24.75);
INSERT INTO Productos VALUES (10, 'Chocolate caliente', 70, 32.25);
INSERT INTO Productos VALUES (11, 'Zumo de naranja', 150, 18.99);
INSERT INTO Productos VALUES (12, 'Smoothie de frutas', 100, 42.50);
INSERT INTO Productos VALUES (13, 'Croissant', 60, 12.99);
INSERT INTO Productos VALUES (14, 'Muffin de arándanos', 80, 15.75);
INSERT INTO Productos VALUES (15, 'Donut', 100, 8.50);

-- Tabla 2: Pedidos
INSERT INTO Pedidos VALUES (1, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 1, 2);
INSERT INTO Pedidos VALUES (2, TO_DATE('2023-06-16', 'YYYY-MM-DD'), 2, 1);
INSERT INTO Pedidos VALUES (3, TO_DATE('2023-06-17', 'YYYY-MM-DD'), 3, 3);
INSERT INTO Pedidos VALUES (4, TO_DATE('2023-06-18', 'YYYY-MM-DD'), 4, 2);
INSERT INTO Pedidos VALUES (5, TO_DATE('2023-06-19', 'YYYY-MM-DD'), 5, 4);
INSERT INTO Pedidos VALUES (6, TO_DATE('2023-06-20', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Pedidos VALUES (7, TO_DATE('2023-06-21', 'YYYY-MM-DD'), 2, 3);
INSERT INTO Pedidos VALUES (8, TO_DATE('2023-06-22', 'YYYY-MM-DD'), 3, 2);
INSERT INTO Pedidos VALUES (9, TO_DATE('2023-06-23', 'YYYY-MM-DD'), 4, 4);
INSERT INTO Pedidos VALUES (10, TO_DATE('2023-06-24', 'YYYY-MM-DD'), 5, 1);
INSERT INTO Pedidos VALUES (11, TO_DATE('2023-06-25', 'YYYY-MM-DD'), 1, 3);
INSERT INTO Pedidos VALUES (12, TO_DATE('2023-06-26', 'YYYY-MM-DD'), 2, 2);
INSERT INTO Pedidos VALUES (13, TO_DATE('2023-06-27', 'YYYY-MM-DD'), 3, 4);
INSERT INTO Pedidos VALUES (14, TO_DATE('2023-06-28', 'YYYY-MM-DD'), 4, 1);
INSERT INTO Pedidos VALUES (15, TO_DATE('2023-06-29', 'YYYY-MM-DD'), 5, 3);

-- Tabla 3: Clientes
INSERT INTO Clientes VALUES (1, 'Juan Pérez', 'Calle Principal 123', '555-123-4567');
INSERT INTO Clientes VALUES (2, 'María López', 'Avenida Central 456', '555-987-6543');
INSERT INTO Clientes VALUES (3, 'Pedro González', 'Calle Secundaria 789', '555-234-5678');
INSERT INTO Clientes VALUES (4, 'Ana Martínez', 'Avenida Norte 987', '555-876-5432');
INSERT INTO Clientes VALUES (5, 'Carlos Ramírez', 'Calle Poniente 654', '555-345-6789');
INSERT INTO Clientes VALUES (6, 'Laura Herrera', 'Avenida Sur 321', '555-765-4321');
INSERT INTO Clientes VALUES (7, 'Luis Torres', 'Calle Oriente 876', '555-432-1098');
INSERT INTO Clientes VALUES (8, 'Mónica Vargas', 'Avenida Este 543', '555-210-9876');
INSERT INTO Clientes VALUES (9, 'Roberto Sánchez', 'Calle Principal 111', '555-678-5432');
INSERT INTO Clientes VALUES (10, 'Sofía Gómez', 'Avenida Central 222', '555-543-2109');
INSERT INTO Clientes VALUES (11, 'Miguel Rivera', 'Calle Secundaria 333', '555-987-6543');
INSERT INTO Clientes VALUES (12, 'Fernanda Ríos', 'Avenida Norte 444', '555-321-0987');
INSERT INTO Clientes VALUES (13, 'Diego Paredes', 'Calle Poniente 555', '555-654-3210');
INSERT INTO Clientes VALUES (14, 'Alejandra Navarro', 'Avenida Sur 666', '555-098-7654');
INSERT INTO Clientes VALUES (15, 'Patricia Cruz', 'Calle Oriente 777', '555-432-1098');

-- Tabla 4: Empleados
INSERT INTO Empleados VALUES (1, 'Juan Perez', 'Barista', 15000.00);
INSERT INTO Empleados VALUES (2, 'Ana Garcia', 'Barista', 15000.00);
INSERT INTO Empleados VALUES (3, 'Carlos Ramirez', 'Barista', 15000.00);
INSERT INTO Empleados VALUES (4, 'Maria Lopez', 'Supervisor', 20000.00);
INSERT INTO Empleados VALUES (5, 'Luis Torres', 'Barista', 15000.00);
INSERT INTO Empleados VALUES (6, 'Laura Sanchez', 'Barista', 15000.00);
INSERT INTO Empleados VALUES (7, 'Roberto Rodriguez', 'Supervisor', 20000.00);
INSERT INTO Empleados VALUES (8, 'Fernanda Gomez', 'Barista', 15000.00);
INSERT INTO Empleados VALUES (9, 'Javier Martinez', 'Barista', 15000.00);
INSERT INTO Empleados VALUES (10, 'Daniela Jimenez', 'Supervisor', 20000.00);
INSERT INTO Empleados VALUES (11, 'Oscar Castro', 'Cajero', 16000.00);
INSERT INTO Empleados VALUES (12, 'Isabel Morales', 'Cajero', 16000.00);
INSERT INTO Empleados VALUES (13, 'Alejandro Herrera', 'Mesero', 16000.00);
INSERT INTO Empleados VALUES (14, 'Paulina Navarro', 'Mesero', 16000.00);
INSERT INTO Empleados VALUES (15, 'Sergio Rios', 'Chef', 25000.00);

-- Tabla 5: Proveedores
INSERT INTO Proveedores VALUES (1, 'Proveedor 1', 'Calle Principal 123', '555-123-4567');
INSERT INTO Proveedores VALUES (2, 'Proveedor 2', 'Avenida Central 456', '555-987-6543');
INSERT INTO Proveedores VALUES (3, 'Proveedor 3', 'Calle Secundaria 789', '555-234-5678');
INSERT INTO Proveedores VALUES (4, 'Proveedor 4', 'Avenida Norte 987', '555-876-5432');
INSERT INTO Proveedores VALUES (5, 'Proveedor 5', 'Calle Poniente 654', '555-345-6789');
INSERT INTO Proveedores VALUES (6, 'Proveedor 6', 'Avenida Sur 321', '555-765-4321');
INSERT INTO Proveedores VALUES (7, 'Proveedor 7', 'Calle Oriente 876', '555-432-1098');
INSERT INTO Proveedores VALUES (8, 'Proveedor 8', 'Avenida Este 543', '555-210-9876');
INSERT INTO Proveedores VALUES (9, 'Proveedor 9', 'Calle Principal 111', '555-678-5432');
INSERT INTO Proveedores VALUES (10, 'Proveedor 10', 'Avenida Central 222', '555-543-2109');
INSERT INTO Proveedores VALUES (11, 'Proveedor 11', 'Calle Secundaria 333', '555-987-6543');
INSERT INTO Proveedores VALUES (12, 'Proveedor 12', 'Avenida Norte 444', '555-321-0987');
INSERT INTO Proveedores VALUES (13, 'Proveedor 13', 'Calle Poniente 555', '555-654-3210');
INSERT INTO Proveedores VALUES (14, 'Proveedor 14', 'Avenida Sur 666', '555-098-7654');
INSERT INTO Proveedores VALUES (15, 'Proveedor 15', 'Calle Oriente 777', '555-432-1098');

SELECT * from clientes;
SELECT * from empleados;
SELECT * from pedidos;
SELECT * from productos;
SELECT * from proveedores;
