DECLARE
  mi_variable VARCHAR2(100) := '¡Bienvenido a nuestra cafetería!';

BEGIN
  -- Imprimir la frase almacenada en la variable
  DBMS_OUTPUT.PUT_LINE(mi_variable);
END;

---------------------------
DECLARE
  -- Constante para el ID del empleado
  ID_EMPLEADO CONSTANT NUMBER := 1;

  -- Variables para almacenar el salario y el puesto
  salario NUMBER;
  puesto VARCHAR2(100);

BEGIN
  -- Búsqueda del salario y el puesto del empleado
  SELECT e.salario, e.puesto INTO salario, puesto
  FROM Empleados e
  WHERE e.id = ID_EMPLEADO;

  -- Imprimir los resultados
  DBMS_OUTPUT.PUT_LINE('El salario del empleado con ID ' || ID_EMPLEADO || ' es: ' || salario);
  DBMS_OUTPUT.PUT_LINE('El puesto del empleado con ID ' || ID_EMPLEADO || ' es: ' || puesto);
END;

-------------------

DECLARE
  -- Variables para almacenar los datos del empleado con el salario más alto
  emp_id NUMBER;
  emp_nombre VARCHAR2(50);
  emp_salario NUMBER;

BEGIN
  -- Búsqueda del empleado con el salario más alto
  SELECT e.id, e.nombre, e.salario INTO emp_id, emp_nombre, emp_salario
  FROM empleados e
  WHERE e.salario = (SELECT MAX(salario) FROM empleados);

  -- Imprimir los datos del empleado
  DBMS_OUTPUT.PUT_LINE('Empleado con el salario más alto:');
  DBMS_OUTPUT.PUT_LINE('ID: ' || emp_id);
  DBMS_OUTPUT.PUT_LINE('Nombre: ' || emp_nombre);
  DBMS_OUTPUT.PUT_LINE('Salario: ' || emp_salario);
END;

---------------
DECLARE
    v_cantidad INT;
    v_nombre_producto VARCHAR(50);
BEGIN
    SELECT cantidad, nombre INTO v_cantidad, v_nombre_producto
    FROM Productos
    WHERE id = 1;
    
    DBMS_OUTPUT.PUT_LINE('El nombre del producto es: ' || v_nombre_producto);
    DBMS_OUTPUT.PUT_LINE('La cantidad de ' || v_nombre_producto || ' es: ' || v_cantidad);
END;

-------------------------------

INSERT INTO EMPLEADOS VALUES(16, 'Sergio Rios', 'Chef', 25000.00);
SELECT * FROM EMPLEADOS;

BEGIN
    DELETE FROM EMPLEADOS
    WHERE id = 16;
END;



-------------------------------
