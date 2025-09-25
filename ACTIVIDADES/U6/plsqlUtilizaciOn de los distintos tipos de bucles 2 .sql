SET SERVEROUTPUT on;

--LOOP--
DECLARE
contador number:=1; --Inicializaci�n

BEGIN

loop

dbms_output.put_line ('Estoy dentro del bucle LOOP en la iteraci�n: ' || contador);

contador:= contador+1; --Incremento

exit when contador > 10; --condici�n

end loop;

END;

--WHILE--
DECLARE
contador number:=1; --Inicializaci�n

BEGIN

while contador <= 10 loop --condici�n

dbms_output.put_line ('Estoy dentro del bucle WHILE en la iteraci�n: ' || contador);

contador:= contador+1; --Incremento

end loop;

END;

--FOR--

BEGIN

for i in 1..10 loop --Inicializacion, condici�n, incremento

dbms_output.put_line ('Estoy dentro del bucle FOR en la iteraci�n: ' || i);

end loop;

END;