CREATE OR REPLACE PROCEDURE ObtenerNombreProveedor (
    p_id INT,
    p_nombre OUT VARCHAR2
)
IS
BEGIN
    SELECT nombre INTO p_nombre
    FROM Proveedores
    WHERE id = p_id;
END;

--- PRUEBA

DECLARE
  v_nombre_proveedor VARCHAR2(50);
BEGIN
  ObtenerNombreProveedor(1, v_nombre_proveedor);
  DBMS_OUTPUT.PUT_LINE('El nombre del proveedor con ID 1 es: ' || v_nombre_proveedor);
END;

----------------------------

CREATE OR REPLACE PROCEDURE SumarPreciosProductos (
    p_id_producto1 IN INT,
    p_id_producto2 IN INT,
    p_suma_precios OUT DECIMAL
)
IS
    v_precio1 DECIMAL(10, 2);
    v_precio2 DECIMAL(10, 2);
BEGIN
    -- Obtener los precios de los productos
    SELECT precio INTO v_precio1
    FROM Productos
    WHERE id = p_id_producto1;

    SELECT precio INTO v_precio2
    FROM Productos
    WHERE id = p_id_producto2;

    -- Sumar los precios
    p_suma_precios := v_precio1 + v_precio2;
END;

-- PRUEBA
DECLARE
    v_suma DECIMAL;
BEGIN
    SumarPreciosProductos(1, 2, v_suma);
    DBMS_OUTPUT.PUT_LINE('La suma de precios es: ' || v_suma);
END;

----------------------------

CREATE OR REPLACE PROCEDURE InsertarCliente (
    p_id INT,
    p_nombre VARCHAR2,
    p_direccion VARCHAR2,
    p_telefono VARCHAR2
)
IS
BEGIN
    INSERT INTO Clientes (id, nombre, direccion, telefono)
    VALUES (p_id, p_nombre, p_direccion, p_telefono);
    COMMIT;
END;

-- PRUEBA

BEGIN
  InsertarCliente(20, 'John Doe', '123 Main St', '555-1234');
  DBMS_OUTPUT.PUT_LINE('Cliente insertado correctamente.');
END;

DELETE FROM clientes where id = 20;
-------------------------------

CREATE OR REPLACE PROCEDURE ActualizarSalarioEmpleado (
    p_id INT,
    p_salario DECIMAL
)
IS
BEGIN
    UPDATE Empleados
    SET salario = p_salario
    WHERE id = p_id;
    COMMIT;
END;

-- PRUEBA

BEGIN
  ActualizarSalarioEmpleado(1, 5000.00);
  DBMS_OUTPUT.PUT_LINE('Salario del empleado actualizado correctamente.');
END;

------------------------------

CREATE OR REPLACE PROCEDURE RealizarPedido (
    p_id INT,
    p_fecha DATE,
    p_id_producto INT,
    p_cantidad INT
)
IS
BEGIN
    INSERT INTO Pedidos (id, fecha, id_producto, cantidad)
    VALUES (p_id, p_fecha, p_id_producto, p_cantidad);
    COMMIT;
END;

-- PRUEBA

BEGIN
  RealizarPedido(20, SYSDATE, 1, 10);
  DBMS_OUTPUT.PUT_LINE('Pedido realizado correctamente.');
END;

DELETE from pedidos where id=20;