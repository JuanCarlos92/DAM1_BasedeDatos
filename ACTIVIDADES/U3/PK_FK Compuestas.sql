CREATE TABLE avion (
id_avion VARCHAR2(10) PRIMARY KEY,
nombre VARCHAR2(100),
descripción VARCHAR2(1000),
fecha DATE
);
CREATE TABLE asiento (
numero_asiento VARCHAR2(4),
id_avion VARCHAR2(10) REFERENCES avion (id_avion),
características VARCHAR2(500),
CONSTRAINT asiento_pk PRIMARY KEY (numero_asiento, id_avion)
);
CREATE TABLE billete (
cod_billete VARCHAR2(10) PRIMARY KEY,
nombre VARCHAR2(100),
apellidos VARCHAR2(100),
numero_asiento VARCHAR2(4),
id_avion VARCHAR2(10),
CONSTRAINT billete_fk FOREING KEY (numero_asiento, id_avion)
REFERENCES asiento (numero_asiento, id_avion)
); 