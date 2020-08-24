# 1) Obtener los nombres de los productos de la tienda.

SELECT nombreArt FROM ARTICULOS

# 2) Obtener los nombres y los precios de los productos de la tienda

SELECT nombreArt, precioArt FROM ARTICULOS

# 3) Obtener el nombre de los productos cuyo precio sea menor o igual a 200

SELECT nombreArt FROM ARTICULOS
WHERE precioArt <= 200;

# 4) Obtener todos los datos de los articulos cuyo precio este entre los 60$ y los 120$ (ambas cantidades incluidas

SELECT * FROM ARTICULOS
WHERE precioArt BETWEEN 60 and 120;

# 5) Obtener el nombre y el precio en dolares (es decir, el precio multiplicado por 85)

SELECT nombreArt, precioArt * 85 as 'precio en dolares' FROM ARTICULOS;

# 6) Seleccionar el precio medio de todos los productos

SELECT avg(precioArt) as 'precio medio' FROM ARTICULOS;

# 7) Obtener un listado de articulos, incluyendo el nombre del articulo, su precio, y el nombre de
su fabricante.

SELECT nombreArt, precioArt, nombreFab FROM ARTICULOS, FABRICANTES WHERE FABRICANTES.codigoFab = ARTICULOS.fabricante;




