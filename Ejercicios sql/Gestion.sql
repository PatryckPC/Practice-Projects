
-- Creacion de tablas
CREATE TABLE Ejemplo (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    cantidad INT,
    precio DECIMAL(10, 2)
);

-- GESTION DE TABLAS
DESCRIBE Ejemplo;

ALTER TABLE Ejemplo 
ADD (fecha DATE)
;

DESCRIBE Ejemplo;

ALTER TABLE Ejemplo
MODIFY (nombre VARCHAR(45))
;

ALTER TABLE Ejemplo
DROP COLUMN fecha
;

RENAME Ejemplo TO Calendario;

DESCRIBE Calendario;

DROP TABLE Calendario;

