CREATE VIEW v_Compras_Internacionales AS SELECT * FROM
Proveedores WHERE PAIS <> “ESPAÑA”;

CREATE VIEW v_Contabilidad_Nacional AS SELECT Nombre, Dias_Pago
FROM Proveedores WHERE PAIS = “ESPAÑA”;

CREATE VIEW v_Contabilidad_Internacional AS SELECT Pais, Nombre,
Ciudad, Dias_Pago FROM Proveedores WHERE PAIS <> “ESPAÑA”;

CREATE VIEW v_Auditor_Internacional AS SELECT * FROM Proveedores
WHERE PAIS = “ESTADOS UNIDOS”;
La sentencia que ejecutaremos una vez terminada la estancia del auditor es:
DROP VIEW v_Auditor_Internacional;