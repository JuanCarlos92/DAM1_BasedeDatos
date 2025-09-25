-- INSERTADO
INSERT INTO EMPLOYEES (employee_id, first_name, last_name, email, phone_number, 
hire_date, job_id, salary, manager_id, department_id)
VALUES (207,'Juan Carlos', 'Filter Mart�n','*************', 
'********', TO_DATE('00/00/00', 'DD/MM/YY'),'AD_VP', 30000, 103,100);

INSERT INTO EMPLOYEES (employee_id, first_name, last_name, email, phone_number, 
hire_date, job_id, salary, manager_id, department_id)
VALUES (208,'Juan', 'M�rquez','marquez', 
'687.777.212', TO_DATE('10/10/01', 'DD/MM/YY'),'AD_PRES', 35000, 103,100);

SELECT * FROM EMPLOYEES;
SELECT FIRST_NAME, LAST_NAME, EMAIL, SALARY, DEPARTMENT_ID 
FROM EMPLOYEES WHERE department_id = 100;

SAVEPOINT INSERTADO;

 -- MODIFICACI�N
 
UPDATE employees SET salary = salary - 1000 WHERE salary > 20000;

UPDATE employees SET department_id = 110 WHERE last_name LIKE '%ez';

SELECT * FROM EMPLOYEES;

SAVEPOINT MODIFICADO;

-- ELIMINACI�N

DELETE FROM employees 
WHERE first_name = 'Juan Carlos' AND last_name = 'Filter Mart�n';

DELETE FROM employees
WHERE department_id = 110 AND salary >= 30000;

SELECT * FROM JOB_HISTORY
WHERE EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM employees WHERE department_id = 110 AND salary >= 30000);

DELETE FROM JOB_HISTORY
WHERE EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM employees WHERE department_id = 110 AND salary >= 30000);

DELETE FROM employees
WHERE department_id = 110 AND salary >= 30000;

SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE LAST_NAME = 'Filter Mart�n' OR LAST_NAME = 'M�rquez';

SAVEPOINT ELIMINADO;

-- incluir en una tabla la informaci�n resultante de la ejecuci�n de una consulta

UPDATE EMPLOYEES e
SET e.salary = (SELECT j.max_salary FROM JOBS j WHERE e.job_id = j.job_id);

SELECT * FROM JOBS;
SELECT * FROM EMPLOYEES;

SAVEPOINT MODIFICA_TODO;

-- Volver a puntos de salvado, Volver al inicio, Finalizar y confirmar.

ROLLBACK TO SAVEPOINT MODIFICADO;
SELECT * FROM EMPLOYEES;

ROLLBACK TO SAVEPOINT ELIMINADO;

ROLLBACK;
SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE LAST_NAME = 'Filter Mart�n';

COMMIT;







