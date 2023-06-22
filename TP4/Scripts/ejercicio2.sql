CREATE TABLE PAIS
(
  pais_id INT NOT NULL,
  nombre_pais VARCHAR(20) NOT NULL,
  PRIMARY KEY (pais_id),
  UNIQUE (nombre_pais)
);

CREATE TABLE PROVINCIA
(
  provincia_id INT NOT NULL,
  nombre_provincia VARCHAR(20) NOT NULL,
  pais_id INT NOT NULL,
  PRIMARY KEY (provincia_id),
  FOREIGN KEY (pais_id) REFERENCES PAIS(pais_id)
);

CREATE TABLE LOCALIDAD
(
  codigo_localidad INT NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  codigo_postal INT NOT NULL,
  provincia_id INT NOT NULL,
  PRIMARY KEY (codigo_localidad),
  FOREIGN KEY (provincia_id) REFERENCES PROVINCIA(provincia_id)
);

CREATE TABLE EMPLEADO
(
  empleado_id INT NOT NULL,
  dni INT NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  telefono INT NOT NULL,
  email VARCHAR(20) NOT NULL,
  fecha_alta date NOT NULL,
  codigo_localidad INT NOT NULL,
  PRIMARY KEY (empleado_id),
  FOREIGN KEY (codigo_localidad) REFERENCES LOCALIDAD(codigo_localidad)
);

INSERT INTO PAIS (pais_id, nombre_pais)
VALUES (1, 'Argentina');

INSERT INTO PAIS (pais_id, nombre_pais)
VALUES (2, 'España');

INSERT INTO PAIS (pais_id, nombre_pais)
VALUES (3, 'Estados Unidos');

INSERT INTO PROVINCIA (provincia_id, nombre_provincia, pais_id)
VALUES (1, 'Buenos Aires', 1);

INSERT INTO PROVINCIA (provincia_id, nombre_provincia, pais_id)
VALUES (2, 'Madrid', 2);

INSERT INTO PROVINCIA (provincia_id, nombre_provincia, pais_id)
VALUES (3, 'California', 3);

INSERT INTO LOCALIDAD (codigo_localidad, nombre, codigo_postal, provincia_id)
VALUES (1, 'Buenos Aires', 1000, 1);

INSERT INTO LOCALIDAD (codigo_localidad, nombre, codigo_postal, provincia_id)
VALUES (2, 'Barcelona', 08001, 2);

INSERT INTO LOCALIDAD (codigo_localidad, nombre, codigo_postal, provincia_id)
VALUES (3, 'Los Angeles', 90001, 3);

INSERT INTO EMPLEADO (empleado_id, dni, nombre, telefono, email, fecha_alta, codigo_localidad)
VALUES (1, 12345678, 'Juan Perez', 1234567890, 'juan@ejemplo.com', '2022-01-01', 1);

INSERT INTO EMPLEADO (empleado_id, dni, nombre, telefono, email, fecha_alta, codigo_localidad)
VALUES (2, 87654321, 'María López', 987654321, 'maria@ejemplo.com', '2022-02-01', 2);

INSERT INTO EMPLEADO (empleado_id, dni, nombre, telefono, email, fecha_alta, codigo_localidad)
VALUES (3, 98765432, 'Pedro Gómez', 543216789, 'pedro@ejemplo.com', '2022-03-01', 3);
