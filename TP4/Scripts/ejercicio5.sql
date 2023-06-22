CREATE TABLE departamentos (
departamento_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE UNSIGNED NOT NULL,
estado boolean NOT NULL
);
CREATE TABLE empleados (
empleado_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cuil_cuit VARCHAR(15) NOT NULL UNIQUE,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
departamento INT UNSIGNED,
estado BOOLEAN,
FOREIGN KEY (departamento) REFERENCES departamentos(departamento_id));

INSERT INTO departamentos VALUES(1, 'Desarrollo', 120000, true);
INSERT INTO departamentos VALUES(2, 'Sistemas', 150000, true);
INSERT INTO departamentos VALUES(3, 'Recursos Humanos', 280000, true);
INSERT INTO departamentos VALUES(4, 'Contabilidad', 110000, true);
INSERT INTO departamentos VALUES(5, 'I+D', 375000, true);
INSERT INTO departamentos VALUES(6, 'Proyectos', 0,true );
INSERT INTO departamentos VALUES(7, 'Publicidad', 0, true);
INSERT INTO departamentos VALUES(8, 'Comercial', 0, false);
INSERT INTO empleados VALUES(1, '27-32481596-3', 'Aarón', 'Rivero', 1, true);
INSERT INTO empleados VALUES(2, '27-29557532-1', 'Adela', 'Salas', 2, true);
INSERT INTO empleados VALUES(3, '20-36970642-1', 'Adolfo', 'Rubio', 3, true);
INSERT INTO empleados VALUES(4, '20-41705545-1', 'Adrián', 'Suárez', 4, true);
INSERT INTO empleados VALUES(5, '20-17087203-3', 'Marcos', 'Loyola', 5, true);
INSERT INTO empleados VALUES(6, '27-38382980-3', 'María', 'Santana', 1, true);
INSERT INTO empleados VALUES(7, '23-80576669-1', 'Pilar', 'Ruiz', 2, true);
INSERT INTO empleados VALUES(8, '24-71651431-3', 'Pepe', 'Ruiz', 3, true);
INSERT INTO empleados VALUES(9, '25-36399183-3', 'Juan', 'Gómez', 2, true);
INSERT INTO empleados VALUES(10, '20-34638446-3', 'Diego','Flores', 5, true);
INSERT INTO empleados VALUES(11, '27-36738983-3', 'Marta','Herrera', 1, true);
INSERT INTO empleados VALUES(12, '27-44123836-1', 'Irene','Salas', NULL, false);
INSERT INTO empleados VALUES(13, '20-38265162-1', 'Juan', 'Antonio', NULL, true);

/*a) Lista el apellido de todos los empleados*/
SELECT apellido FROM empleados;
/*b) Lista el apellido de los empleados eliminando los apellidos que esten repetidos*/
SELECT distinct apellido FROM empleados;
/*c) Lista todas las columnas de la tabla empleados*/
SELECT * from empleados;
/*d) Lista el nombre y el apellido de todos los empleados*/
select nombre, apellido from empleados;
/*e) Lista el cuit/cuil de los departamentos de los empleados que aparecen en la tabla empleados.*/
select cuil_cuit from empleados;
/*f) Lista el nombre y apellido de los empleados en una única columna.*/
select concat(nombre,' ', apellido) as nombre_completo from empleados;
/*g) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.*/
select upper(concat(nombre, ' ', apellido)) as nombre_completo from empleados;
/*h) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.*/
select lower(concat(nombre, ' ', apellido)) as nombre_completo from empleados;
/*i) Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.*/
select nombre, presupuesto from departamentos order by presupuesto asc;
/*j) Lista el nombre de todos los departamentos ordenados de forma ascendente.*/
select nombre from departamentos order by nombre asc;
/*k) Lista el nombre de todos los departamentos ordenados de forma descendente.*/
select nombre from departamentos order by nombre desc;
/*l) Lista el apellido y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar su apellido y luego su nombre*/
select nombre, apellido from empleados order by apellido asc, nombre asc;
/*m) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.*/
select nombre, presupuesto from departamentos order by presupuesto desc limit 3;
/*n) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto*/
select nombre, presupuesto from departamentos order by presupuesto asc limit 3;
/*o) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto mayor o igual a $150000*/
select nombre, presupuesto from departamentos where presupuesto >= 150000;
/*p) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN*/
select nombre, presupuesto from departamentos where presupuesto >= 100000 and presupuesto <= 200000;
/*q) Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN*/
select nombre, presupuesto from departamentos where presupuesto <= 100000 or presupuesto >= 200000;
/*r) Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN*/
select nombre, presupuesto from departamentos where presupuesto between 100000 and 200000;
/*s) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno*/
select empleados.*, departamentos.nombre as nombre_departamento from empleados join departamentos on empleados.departamento = departamentos.departamento_id;
/*t) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por apellido y el nombre de los empleados*/
select empleados.*, departamentos.nombre as nombre_departamento from empleados join departamentos on empleados.departamento = departamentos.departamento_id
order by nombre_departamento asc, empleados.apellido asc, empleados.nombre asc;
/*u) Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados*/
select departamento_id, nombre from departamentos where departamento_id in (select departamento from empleados);
/*v) Devuelve el nombre del departamento donde trabaja el empleado que tiene el cuit 27-38382980-3*/
select departamentos.nombre from departamentos join empleados on empleados.departamento = departamentos.departamento_id where empleados.cuil_cuit = '27-38382980-3';
/*w) Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz*/
select departamentos.nombre from departamentos join empleados on empleados.departamento = departamentos.departamento_id where empleados.nombre = 'Pepe ' and empleados.apellido = 'Ruiz';
/*x) Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente*/
select * from empleados join departamentos on departamentos.departamento_id = empleados.departamento where departamentos.nombre = 'I+D' order by empleados.apellido, empleados.nombre asc;
/*y) Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente*/
select * from empleados join departamentos on departamentos.departamento_id = empleados.departamento where departamentos.nombre in ('I+D', 'Sistemas', 'Contabilidad') order by empleados.apellido, empleados.nombre asc;
/*z) Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre $100000 y $200000*/
select empleados.nombre from empleados join departamentos on departamentos.departamento_id = empleados.departamento where departamentos.presupuesto < 100000 or departamentos.presupuesto >200000;