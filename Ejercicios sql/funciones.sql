CREATE OR REPLACE FUNCTION CalcularTotalVentas
RETURN DECIMAL
IS
    v_total_ventas DECIMAL(10, 2);
BEGIN
    SELECT SUM(p.precio * pe.cantidad) INTO v_total_ventas
    FROM Pedidos pe
    JOIN Productos p ON pe.id_producto = p.id;

    RETURN v_total_ventas;
END;

-- PROBAR

DECLARE
    v_total DECIMAL;
BEGIN
    v_total := CalcularTotalVentas();
    DBMS_OUTPUT.PUT_LINE('El total de ventas es: ' || v_total);
END;


-------------------------------
CREATE OR REPLACE FUNCTION ObtenerNombreCliente (
    p_id INT
)
RETURN VARCHAR2
IS
    v_nombre_cliente VARCHAR2(50);
BEGIN
    SELECT nombre INTO v_nombre_cliente
    FROM Clientes
    WHERE id = p_id;

    RETURN v_nombre_cliente;
END;

-- PROBAR

DECLARE
    v_nombre VARCHAR2(50);
BEGIN
    v_nombre := ObtenerNombreCliente(1); -- Pasa el ID del cliente deseado
    DBMS_OUTPUT.PUT_LINE('El nombre del cliente es: ' || v_nombre);
END;


-----------------------------
CREATE OR REPLACE FUNCTION CalcularSalarioPromedio
RETURN DECIMAL
IS
    v_salario_promedio DECIMAL(10, 2);
BEGIN
    SELECT AVG(salario) INTO v_salario_promedio
    FROM Empleados;

    RETURN v_salario_promedio;
END;
-- PROBAR

DECLARE
    v_salario_promedio DECIMAL;
BEGIN
    v_salario_promedio := CalcularSalarioPromedio();
    DBMS_OUTPUT.PUT_LINE('El salario promedio es: ' || v_salario_promedio);
END;

----------------------------------
CREATE OR REPLACE FUNCTION ObtenerPrecioProducto (
    p_id INT
)
RETURN DECIMAL
IS
    v_precio DECIMAL(10, 2);
BEGIN
    SELECT precio INTO v_precio
    FROM Productos
    WHERE id = p_id;

    RETURN v_precio;
END;

-- PROBAR

DECLARE
    v_precio DECIMAL;
BEGIN
    v_precio := ObtenerPrecioProducto(1); -- Pasa el ID del producto deseado
    DBMS_OUTPUT.PUT_LINE('El precio del producto es: ' || v_precio);
END;


-------------------------------------
CREATE OR REPLACE FUNCTION ObtenerNombreProveedorr (
    p_id INT
)
RETURN VARCHAR2
IS
    v_nombre_proveedor VARCHAR2(50);
BEGIN
    SELECT nombre INTO v_nombre_proveedor
    FROM Proveedores
    WHERE id = p_id;

    RETURN v_nombre_proveedor;
END;

-- PROBAR

DECLARE
    v_nombre_proveedor VARCHAR2(50);
BEGIN
    v_nombre_proveedor := ObtenerNombreProveedorr(1); -- Pasa el ID del proveedor deseado
    DBMS_OUTPUT.PUT_LINE('El nombre del proveedor es: ' || v_nombre_proveedor);
END;


