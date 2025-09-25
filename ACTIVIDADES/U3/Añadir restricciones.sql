CREATE TABLE Camionero (
dni VARCHAR2(9),
nombre VARCHAR2(20),
teléfono VARCHAR2(9),
dirección VARCHAR2(30),
población VARCHAR2(30),
salario NUMBER(6,2)
);
CREATE TABLE Paquete(
cod_paquete NUMBER(4),
descripción VARCHAR2(30),
destinatario VARCHAR2(30),
dirección_destinatario VARCHAR2(30),
dni_camionero VARCHAR2(9)
);
CREATE TABLE Provincia(
cod_provincia NUMBER(4),
nombre VARCHAR2(20),
cod_paquete NUMBER(4)
);
CREATE TABLE Camion(
matrícula VARCHAR2(8),
modelo VARCHAR2(20),
tipo VARCHAR2(20),
potencia NUMBER(4)
);
CREATE TABLE Camionero_Camion (
dni VARCHAR2(9),
matrícula VARCHAR2(8)
); 

#Claves primarias (PRIMARY KEY)
ALTER TABLE camionero ADD CONSTRAINT Caminonero_pk PRIMARY KEY (dni);
ALTER TABLE paquete ADD CONSTRAINT paquete_pk PRIMARY KEY
(cod_paquete);
ALTER TABLE provincia ADD CONSTRAINT provincia_pk PRIMARY KEY
(cod_provincia);
ALTER TABLE camion ADD CONSTRAINT Camion_pk PRIMARY KEY (matrícula);
ALTER TABLE camionero_camion ADD CONSTRAINT Caminonero_camion_pk
PRIMARY KEY (dni, matrícula);
#Claves externas (FOREIGN KEY)
ALTER TABLE paquete ADD CONSTRAINT paquete_FK FOREIGN KEY
(dni_camionero) REFERENCES camionero (dni);
ALTER TABLE provincia ADD CONSTRAINT provincia_FK FOREIGN KEY
(cod_paquete) REFERENCES paquete (cod_paquete);
ALTER TABLE camionero_camion ADD CONSTRAINT camionero_camion_FK1
FOREIGN KEY (dni) REFERENCES camionero (dni);
ALTER TABLE camionero_camion ADD CONSTRAINT camionero_camion_FK2
FOREIGN KEY (matrícula) REFERENCES camion (matrícula); 