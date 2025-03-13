#-------------------------------------- Paso 1 -----------------------------------------#
describe talumno;
SELECT * FROM escuela.talumno;

insert into talumno(nAlumnoID,cNombre,cApellido)
values (1,"Patryck","Poumian");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (2,"Patryck","Camacho");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (3,"Patryck","Yael");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (4,"Cesar","Yael");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (5,"Cesar","Monterroza");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (6,"Cesar","Sanchez");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (7,"Pablo","Sanchez");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (8,"Pablo","Acevedo");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (9,"Pablo","Vargas");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (10,"Josue","Vargas");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (11,"Josue","Caro");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (12,"Josue","Garcia");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (13,"Angela","Garcia");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (14,"Angela","Cruz");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (15,"Angela","Monroy");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (16,"Andrea","Monroy");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (17,"Andrea","Cortes");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (18,"Andrea","Ruiz");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (19,"Camilo","Ruiz");

insert into talumno(nAlumnoID,cNombre,cApellido)
values (20,"Camilo","BLanco");


describe tasignatura;
SELECT * FROM escuela.tasignatura;

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (1,"Descripcion","Ciencias",4);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (2,"Descripcion","Fisica",3);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (3,"Descripcion","Biologia",2);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (4,"Descripcion","Anatomia",1);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (5,"Descripcion","Fisiologia",4);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (6,"Descripcion","Matematicas",3);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (7,"Descripcion","Quimica",2);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (8,"Descripcion","Ecologia",1);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (9,"Descripcion","Investigacion",4);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (10,"Descripcion","Ciencias Sociales",3);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (11,"Descripcion","Geografia",2);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (12,"Descripcion","Economia",1);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (13,"Descripcion","Medio ambiente",4);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (14,"Descripcion","Biografias",3);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (15,"Descripcion","Arte",2);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (16,"Descripcion","Historia",1);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (17,"Descripcion","Filosofia",4);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (18,"Descripcion","Etica y valores",3);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (19,"Descripcion","Literatura",2);

insert into tasignatura(nAsignaturaID,cDescripcion,cNombre,cNumerodehoras)
values (20,"Descripcion","Lenguas",1);



describe tcurso;
SELECT * FROM escuela.tcurso;

insert into tcurso(nCursoID,nTurno,cNombre)
values (1,"Matutino","SOF1");

insert into tcurso(nCursoID,nTurno,cNombre)
values (2,"Matutino","SOF2");

insert into tcurso(nCursoID,nTurno,cNombre)
values (3,"Matutino","SOF3");

insert into tcurso(nCursoID,nTurno,cNombre)
values (4,"Matutino","SOF4");

insert into tcurso(nCursoID,nTurno,cNombre)
values (5,"Matutino","SOF5");

insert into tcurso(nCursoID,nTurno,cNombre)
values (6,"Matutino","SOF6");

insert into tcurso(nCursoID,nTurno,cNombre)
values (7,"Matutino","SOF7");

insert into tcurso(nCursoID,nTurno,cNombre)
values (8,"Matutino","SOF8");

insert into tcurso(nCursoID,nTurno,cNombre)
values (9,"Matutino","SOF9");

insert into tcurso(nCursoID,nTurno,cNombre)
values (10,"Matutino","SOF10");

insert into tcurso(nCursoID,nTurno,cNombre)
values (11,"Vespertino","SOF11");

insert into tcurso(nCursoID,nTurno,cNombre)
values (12,"Vespertino","SOF12");

insert into tcurso(nCursoID,nTurno,cNombre)
values (13,"Vespertino","SOF13");

insert into tcurso(nCursoID,nTurno,cNombre)
values (14,"Vespertino","SOF14");

insert into tcurso(nCursoID,nTurno,cNombre)
values (15,"Vespertino","SOF15");

insert into tcurso(nCursoID,nTurno,cNombre)
values (16,"Vespertino","SOF16");

insert into tcurso(nCursoID,nTurno,cNombre)
values (17,"Vespertino","SOF17");

insert into tcurso(nCursoID,nTurno,cNombre)
values (18,"Vespertino","SOF18");

insert into tcurso(nCursoID,nTurno,cNombre)
values (19,"Vespertino","SOF19");

insert into tcurso(nCursoID,nTurno,cNombre)
values (20,"Vespertino","SOF20");



describe tprofesor;
SELECT * FROM escuela.tprofesor;

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (1,"Jose","Camargo",22);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (2,"Jose","Vargas",23);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (3,"Jose","Guerrero",24);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (4,"Hugo","Guerrero",25);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (5,"Hugo","Penagos",26);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (6,"Hugo","Coral",27);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (7,"Andres","Coral",28);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (8,"Andres","Burbano",29);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (9,"Andres","Barrera",30);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (10,"Ingrid","Barrera",31);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (11,"Ingrid","Lopez",32);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (12,"Ingrid","Sanchez",33);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (13,"Rocio","Sanchez",34);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (14,"Rocio","Arenas",35);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (15,"Rocio","Moncaleano",36);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (16,"Ivan","Moncaleano",37);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (17,"Ivan","Preciado",38);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (18,"Ivan","Botero",39);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (19,"David","Botero",40);

insert into tprofesor(nProfesorID,cNombre,cApellido,nEdad)
values (20,"David","Orozco",41);



describe taula;
SELECT * FROM escuela.taula;

insert into taula(nAulaID,nCapacidad)
values (1,16);

insert into taula(nAulaID,nCapacidad)
values (2,17);

insert into taula(nAulaID,nCapacidad)
values (3,18);

insert into taula(nAulaID,nCapacidad)
values (4,19);

insert into taula(nAulaID,nCapacidad)
values (5,20);

insert into taula(nAulaID,nCapacidad)
values (6,21);

insert into taula(nAulaID,nCapacidad)
values (7,22);

insert into taula(nAulaID,nCapacidad)
values (8,23);

insert into taula(nAulaID,nCapacidad)
values (9,24);

insert into taula(nAulaID,nCapacidad)
values (10,25);

insert into taula(nAulaID,nCapacidad)
values (11,26);

insert into taula(nAulaID,nCapacidad)
values (12,27);

insert into taula(nAulaID,nCapacidad)
values (13,28);

insert into taula(nAulaID,nCapacidad)
values (14,16);

insert into taula(nAulaID,nCapacidad)
values (15,17);

insert into taula(nAulaID,nCapacidad)
values (16,18);

insert into taula(nAulaID,nCapacidad)
values (17,19);

insert into taula(nAulaID,nCapacidad)
values (18,20);

insert into taula(nAulaID,nCapacidad)
values (19,21);

insert into taula(nAulaID,nCapacidad)
values (20,22);

#-------------------- Paso 2 ------------------------------------------#

UPDATE talumno
	SET cApellido = "Godofredo"
    WHERE cNombre = "Patryck";
    
UPDATE talumno
	SET cNombre = "Godofredo"
    WHERE cApellido = "Monterroza";
    
UPDATE talumno
	SET cNombre = "Godofredo"
    WHERE cApellido = "Acevedo";
    
    
    
UPDATE tasignatura
	SET cDescripcion = "Editacion"
    WHERE nAsignaturaID = "1";
    
UPDATE tasignatura
	SET cDescripcion = "Editacion"
    WHERE nAsignaturaID = "2";
    
UPDATE tasignatura
	SET cDescripcion = "Editacion"
    WHERE nAsignaturaID = "3";
    
UPDATE tasignatura
	SET cDescripcion = "Editacion"
    WHERE nAsignaturaID = "4";
    
UPDATE tasignatura
	SET cDescripcion = "Editacion"
    WHERE nAsignaturaID = "5";
    
    
    
UPDATE tcurso
	SET nTurno = "Vespertino"
    WHERE nCursoID = "2";
    
UPDATE tcurso
	SET nTurno = "Vespertino"
    WHERE nCursoID = "3";
    
UPDATE tcurso
	SET nTurno = "Vespertino"
    WHERE nCursoID = "4";
    
UPDATE tcurso
	SET nTurno = "Vespertino"
    WHERE nCursoID = "5";
    
UPDATE tcurso
	SET nTurno = "Vespertino"
    WHERE nCursoID = "1";
    
    
    
UPDATE tprofesor
	SET cApellido = "Godofredo"
    WHERE cNombre = "Jose";
    
UPDATE tprofesor
	SET cNombre = "Godofredo"
    WHERE cApellido = "Penagos";
    
UPDATE tprofesor
	SET cNombre = "Godofredo"
    WHERE cApellido = "Burbano";
    
    
    
UPDATE taula
	SET nCapacidad = 50
    WHERE nAulaID = 2;
    
UPDATE taula
	SET nCapacidad = 50
    WHERE nAulaID = 1;
    
UPDATE taula
	SET nCapacidad = 50
    WHERE nAulaID = 3;
    
UPDATE taula
	SET nCapacidad = 50
    WHERE nAulaID = 4;
    
UPDATE taula
	SET nCapacidad = 50
    WHERE nAulaID = 5;
    
    
#------------------- Paso 3 ----------------------------#

DELETE FROM talumno
	WHERE nAlumnoID = 1;

DELETE FROM talumno
	WHERE nAlumnoID = 2;
    


DELETE FROM tasignatura
	WHERE nAsignaturaID = 1;
    
DELETE FROM tasignatura
	WHERE nAsignaturaID = 2;
    
    
    
DELETE FROM taula
	WHERE nAulaID = 1;
    
DELETE FROM taula
	WHERE nAulaID = 2;
    
    
    
DELETE FROM tcurso
	WHERE nCursoID = 1;
    
DELETE FROM tcurso
	WHERE nCursoID = 2;
    


DELETE FROM tprofesor
	WHERE nProfesorID = 1;
    
DELETE FROM tprofesor
	WHERE nProfesorID = 2;
    


#--------------------------------- AND y OR en SELECT ---------------------------------#
SELECT * FROM talumno WHERE cNombre = "Josue" AND cApellido = "Garcia" OR cApellido = "Caro";

SELECT * FROM tasignatura WHERE cDescripcion = "Descripcion" AND cNumerodehoras = "4" OR nAsignaturaID = "7";

SELECT * FROM tcurso WHERE nTurno = "Matutino" AND cNombre = "SOF8" OR nCursoID = "4";

SELECT * FROM tprofesor WHERE cNombre = "Rocio" AND cApellido = "Arenas" OR cApellido = "Sanchez";

SELECT * FROM taula WHERE nCapacidad = "22" AND nAulaID = "20" OR nAulaID = "7";