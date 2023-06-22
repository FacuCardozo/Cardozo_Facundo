CREATE TABLE ALUMNO
(
  cod_matricula INT NOT NULL,
  nombre INT NOT NULL,
  dni INT NOT NULL,
  fecha_nac INT NOT NULL,
  email INT NOT NULL,
  PRIMARY KEY (cod_matricula)
);

CREATE TABLE CURSO
(
  cod_curso INT NOT NULL,
  nombre INT NOT NULL,
  PRIMARY KEY (cod_curso)
);

CREATE TABLE PROFESOR
(
  profesor_id INT NOT NULL,
  nombre INT NOT NULL,
  especialidad INT NOT NULL,
  email INT NOT NULL,
  PRIMARY KEY (profesor_id)
);

CREATE TABLE TieneAlumnos
(
  cod_matricula INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (cod_matricula, cod_curso),
  FOREIGN KEY (cod_matricula) REFERENCES ALUMNO(cod_matricula),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);

CREATE TABLE TieneProfesor
(
  cod_curso INT NOT NULL,
  profesor_id INT NOT NULL,
  PRIMARY KEY (cod_curso, profesor_id),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso),
  FOREIGN KEY (profesor_id) REFERENCES PROFESOR(profesor_id)
);

INSERT INTO ALUMNO (cod_matricula, nombre, dni, fecha_nac, email)
VALUES (1, 'Juan', 123456789, '1990-01-01', 'juan@ejemplo.com');

INSERT INTO ALUMNO (cod_matricula, nombre, dni, fecha_nac, email)
VALUES (2, 'María', 87654321, '1992-03-15', 'maria@ejemplo.com');

INSERT INTO ALUMNO (cod_matricula, nombre, dni, fecha_nac, email)
VALUES (3, 'Pedro', 98765432, '1995-06-30', 'pedro@ejemplo.com');

INSERT INTO CURSO (cod_curso, nombre)
VALUES (1, 'Matemáticas');

INSERT INTO CURSO (cod_curso, nombre)
VALUES (2, 'Historia');

INSERT INTO CURSO (cod_curso, nombre)
VALUES (3, 'Programación');

INSERT INTO PROFESOR (profesor_id, nombre, especialidad, email)
VALUES (1, 'Ana', 'Matemáticas', 'ana@ejemplo.com');

INSERT INTO PROFESOR (profesor_id, nombre, especialidad, email)
VALUES (2, 'Carlos', 'Historia', 'carlos@ejemplo.com');

INSERT INTO PROFESOR (profesor_id, nombre, especialidad, email)
VALUES (3, 'Luis', 'Programación', 'luis@ejemplo.com');

INSERT INTO tienealumnos (cod_matricula, cod_curso)
VALUES (1, 1);

INSERT INTO tienealumnos (cod_matricula, cod_curso)
VALUES (2, 2);

INSERT INTO tienealumnos (cod_matricula, cod_curso)
VALUES (3, 3);

INSERT INTO tieneprofesor (cod_curso, profesor_id)
VALUES (1, 1);

INSERT INTO tieneprofesor (cod_curso, profesor_id)
VALUES (2, 2);

INSERT INTO tieneprofesor (cod_curso, profesor_id)
VALUES (3, 3);