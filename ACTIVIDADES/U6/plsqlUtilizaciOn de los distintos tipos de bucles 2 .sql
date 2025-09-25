SET SERVEROUTPUT on;

--LOOP--
DECLARE
contador number:=1; --Inicialización

BEGIN

loop

dbms_output.put_line ('Estoy dentro del bucle LOOP en la iteración: ' || contador);

contador:= contador+1; --Incremento

exit when contador > 10; --condición

end loop;

END;

--WHILE--
DECLARE
contador number:=1; --Inicialización

BEGIN

while contador <= 10 loop --condición

dbms_output.put_line ('Estoy dentro del bucle WHILE en la iteración: ' || contador);

contador:= contador+1; --Incremento

end loop;

END;

--FOR--

BEGIN

for i in 1..10 loop --Inicializacion, condición, incremento

dbms_output.put_line ('Estoy dentro del bucle FOR en la iteración: ' || i);

end loop;

END;