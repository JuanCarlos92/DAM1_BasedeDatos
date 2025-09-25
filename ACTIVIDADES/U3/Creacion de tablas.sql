CREATE TABLE Camionero (
dni VARCHAR2(9),
nombre VARCHAR2(20),
telefono VARCHAR2(9),
direccion VARCHAR2(30),
poblacion VARCHAR2(30),
salario NUMBER(6,2)
);
CREATE TABLE Paquete (
cod_paquete NUMBER(4),
descripcion VARCHAR2(30),
destinatario VARCHAR2(30),
dirección_destinatario VARCHAR2(30),
dni_camionero VARCHAR2(9)
);
CREATE TABLE Provincia (
cod_provincia NUMBER(4),
nombre VARCHAR2(20),
cod_paquete NUMBER(4)
);
CREATE TABLE Camion (
matricula VARCHAR2(8),
modelo VARCHAR2(20),
tipo VARCHAR2(20),
potencia NUMBER(4)
);
CREATE TABLE Camionero_Camion (
dni VARCHAR2(9),
matricula VARCHAR2(8)
);