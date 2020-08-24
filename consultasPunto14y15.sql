# Obtener el numero de cajas que hay en cada almacen

SELECT almacenes.codigoAlm, SUM(almacenes.codigoAlm = cajas.almacen) as 'cantidad de cajas' 
from cajas, almacenes 
GROUP BY almacenes.codigoAlm;

# Vaciar el contenido de los almacenes que estan saturados
# Este punto no me salio.

