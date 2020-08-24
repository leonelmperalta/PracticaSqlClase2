# 8) Obtener todos los datos de los empleados que se apellidan Lopez y los que se apellidan Perez.

SELECT * FROM empleados
WHERE apellidos = 'Lopez' or apellidos = 'Perez';

# 9) Obtener todos los datos de los empleados que trabajan para el departamento 37 y para el departamento 77.

SELECT * FROM empleados
WHERE empleados.departamento = 37 and empleados.departamento = 77;

# 10) Obtener un listado completo de empleados, incluyendo el nombre y apelliodos del empleado junto al nombre y presupuesto de su departamento.

SELECT empleados.nombre , empleados.apellidos, departamentos.nombreDep, departamentos.presupuesto 
FROM empleados, departamentos
WHERE empleados.departamento = departamentos.codigoDep;

# 11) Obtener los nombres ( unicamente los nombres) de los departamentos que tienen mas de dos empleados.

SELECT departamentos.nombreDep FROM departamentos, empleados 
HAVING 2 < SUM(empleados.departamento = departamentos.codigoDep);

# 12) Añadir nuevo departamento: 'Calidad', con presupuesto de 40.000$ y codigo, añadir un empleado
vinculado al departamento recien creado: Esther Vazquez, DNI: 89267109

INSERT INTO departamentos(codigoDep, nombreDep,presupuesto) VALUES(5,"Calidad",40000);
INSERT INTO empleados(DNI,nombre,apellidos,departamento) VALUES(89267109,"Esther","Vazquez",5);

# 13) Aplicar un recorte presupuestario del 10% a todos los departamentos.

UPDATE departamentos SET presupuesto =  presupuesto - presupuesto * 0.10;
