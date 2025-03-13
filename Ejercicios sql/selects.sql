-- SELECT

SELECT nombre, puesto, salario
FROM empleados;

SELECT nombre, puesto, salario as SALARIO_MENSUAL
FROM empleados;

SELECT nombre, puesto, salario*12 as SALARIO_ANUAL
FROM empleados;

SELECT nombre, puesto ||', '|| salario
as "Salario por puesto"
from empleados;

-- WHERE
-- Primero
SELECT nombre, puesto, salario
from empleados
WHERE salario = 15000;

SELECT nombre, puesto, salario
from empleados
WHERE id in (1, 5, 15);

SELECT puesto, salario
from empleados
WHERE salario between 16000 and 25000;

-- Segundo
SELECT puesto, salario
from empleados
WHERE salario not between 16000 and 25000;

SELECT puesto, salario
from empleados
WHERE salario between 16000 and 25000
order by salario desc;

SELECT cantidad, fecha
from pedidos
WHERE fecha between date '2023-06-17' and date '2023-06-25';

-- Tercero
SELECT puesto, salario
from empleados 
where salario is not null;

SELECT puesto, salario
from empleados 
where salario is null;

SELECT nombre
from empleados 
where nombre like '%b%';

SELECT nombre
from empleados 
where nombre like '__b%';

SELECT nombre, id
from empleados 
where id = 1 or id = 5;

-- Cuarto
SELECT cantidad, fecha as "Fecha de compra", id, TRUNC(SYSDATE-fecha) as "Antiguedad en dias" 
from pedidos
where fecha < date '2023-06-21';

SELECT nombre, LENGTH(nombre) as "Longitud nombre"
from empleados;

SELECT nombre, UPPER(nombre) as "Nombre MAYUS"
from empleados;

-- Quinto
SELECT nombre, LPAD(salario, 10,'$') as "Salario Formato"
from empleados;

SELECT nombre, precio, CEIL(precio) as "Precio redondeado"
from productos;

SELECT cantidad, fecha, TO_CHAR(fecha, 'DAY ", DEL "DDSPTH " OF "MONTH ", " YYYY') as "FECHA EN LETRA"
from pedidos;

-- NVL
INSERT INTO Productos VALUES (16, 'EJEMPLO NULL', 100, NULL);

-- EL TIPO DE DATOS DEBE SER EL MISMO
SELECT nombre, NVL(precio, 0)
from productos;

SELECT nombre, NVL2(precio, 9999, 0)
from productos;

-- DECODE

SELECT puesto, DECODE(puesto, 
'Mesero', 'E',
'Barista', 'D',
'Cajero', 'C',
'Chef', 'B',
'A') as "JERARQUIA_DECODE"
from empleados
order by JERARQUIA_DECODE ASC;

-- CASE

SELECT puesto, CASE puesto 
when 'Mesero' then 'E'
when 'Barista' then 'D'
when 'Cajero' then 'C'
when 'Chef' then 'B'
else 'A' end as "JERARQUIA_CASE"
from empleados
order by JERARQUIA_CASE asc;

-- SUM

SELECT puesto, sum(salario) "Suma por puesto"
from empleados
group by puesto
order by "Suma por puesto";

SELECT max(salario) "Salario maximo"
from empleados
order by salario;

SELECT min(salario) "Salario minimo"
from empleados
order by salario;

SELECT AVG(salario) "Promedio"
FROM empleados
;

SELECT DISTINCT puesto
from empleados;

SELECT nombre, salario
FROM empleados
WHERE salario <> 15000;

-- JOIN

SELECT a.nombre, b.fecha
FROM Productos a
JOIN Pedidos b ON a.id = b.id_producto;

SELECT Productos.nombre
FROM Productos
JOIN Pedidos USING (id_producto);

SELECT Productos.nombre, Pedidos.fecha, Pedidos.cantidad
FROM Productos
LEFT JOIN Pedidos ON Productos.id = Pedidos.id_producto;





