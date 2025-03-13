-- CURSOR IMPLICITO
DECLARE
  nombre_producto Productos.nombre%TYPE;
BEGIN
  FOR producto IN (SELECT nombre FROM Productos) LOOP
    nombre_producto := producto.nombre;
    DBMS_OUTPUT.PUT_LINE(nombre_producto);
  END LOOP;
END;



BEGIN
  FOR producto IN (SELECT id, nombre FROM Productos) LOOP
    DECLARE
      v_total_pedidos INT := 0;
    BEGIN
      SELECT COUNT(*) INTO v_total_pedidos FROM Pedidos WHERE id_producto = producto.id;
      DBMS_OUTPUT.PUT_LINE('Producto: ' || producto.nombre);
      DBMS_OUTPUT.PUT_LINE('Cantidad de veces pedido: ' || v_total_pedidos);
      DBMS_OUTPUT.PUT_LINE('----------------------');
    END;
  END LOOP;
END;



-- CURSOR EXPLICITO

DECLARE
  CURSOR c_productos IS
    SELECT nombre FROM Productos;
  nombre_producto Productos.nombre%TYPE;
BEGIN
  OPEN c_productos;
  LOOP
    FETCH c_productos INTO nombre_producto;
    EXIT WHEN c_productos%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(nombre_producto);
  END LOOP;
  CLOSE c_productos;
END;



DECLARE
  CURSOR c_productos IS
    SELECT id, nombre FROM Productos;
  v_total_pedidos INT;
BEGIN
  FOR producto IN c_productos LOOP
    v_total_pedidos := 0;
    SELECT COUNT(*) INTO v_total_pedidos FROM Pedidos WHERE id_producto = producto.id;
    DBMS_OUTPUT.PUT_LINE('Producto: ' || producto.nombre);
    DBMS_OUTPUT.PUT_LINE('Cantidad de veces pedido: ' || v_total_pedidos);
    DBMS_OUTPUT.PUT_LINE('----------------------');
  END LOOP;
END;



DECLARE
  total_salario NUMBER := 0;
  contador NUMBER := 0;
  salario_promedio NUMBER;
  
  CURSOR c_empleados IS
    SELECT salario FROM Empleados;
BEGIN
  OPEN c_empleados;
  
  LOOP
    FETCH c_empleados INTO salario_promedio;
    EXIT WHEN c_empleados%NOTFOUND;
    
    total_salario := total_salario + salario_promedio;
    contador := contador + 1;
  END LOOP;
  
  CLOSE c_empleados;
  
  salario_promedio := total_salario / contador;
  DBMS_OUTPUT.PUT_LINE('Salario promedio: ' || salario_promedio);
END;

