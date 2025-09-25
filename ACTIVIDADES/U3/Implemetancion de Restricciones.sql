CREATE TABLE Departamento
(codigo CHAR(5) NOT NULL,
nombre VARCHAR(100) NOT NULL,
director VARCHAR(50),
telefono CHAR(11),
CONSTRAINT departamento_pk PRIMARY KEY (codigo));

CREATE TABLE Profesor
(codigo CHAR(5) NOT NULL,
nombre VARCHAR(100) NOT NULL,
direccion VARCHAR(50),
telefono CHAR(11),
categoria CHAR(3) NOT NULL CONSTRAINT categoria_ck CHECK
(categoria=’TIT’ OR categoria=’SUP’ OR categoria=’ADJ’),
dpto CHAR(5),
CONSTRAINT profesor_pk PRIMARY KEY (codigo),
CONSTRAINT prof_dpto_fk FOREIGN KEY (dpto) REFERENCES
Departamento(codigo));

CREATE TABLE Asignatura
(codigo CHAR(5) NOT NULL,
nombre VARCHAR(100) NOT NULL,
teoria NUMBER(3,1) NOT NULL CONSTRAINT teoria_ck CHECK
(teoria>0),
practica NUMBER(3,1) NOT NULL CONSTRAINT practica_ck CHECK
(practica>0),
dpto CHAR(5),
CONSTRAINT asignatura_pk PRIMARY KEY (codigo),
CONSTRAINT asg_dpto_fk FOREIGN KEY (dpto) REFERENCES
Departamento(codigo));

CREATE TABLE Aula
(cod_prof CHAR(5) NOT NULL,
cod_asg CHAR(5) NOT NULL,
creditos NUMBER(3,1) NOT NULL CONSTRAINT creditos_ck CHECK
(creditos>0),
CONSTRAINT aula_pk PRIMARY KEY (cod_prof, cod_asg),
CONSTRAINT aul_prof_fk FOREIGN KEY (cod_prof) REFERENCES
Profesor(codigo),
CONSTRAINT aul_asg_fk FOREIGN KEY (cod_asg) REFERENCES
Asignatura(codigo)); 