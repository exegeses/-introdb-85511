# Alias en SQL
/* podemos renombrar el enunciado de una columna utilizando un alias.
   El nombre de la columna no cambia de manera permanente.
   Este cambio sólo es para el reporte
   - también podemos utilizar un alias para el nombre de las tablas
   (se puede omitir)
        SELECT nombreCampo AS alias
        SELECT nombreCampo alias
*/
SELECT
        idProducto AS Id,
        producto AS Producto,
        precio AS Contado,
        precio * 1.04 AS Lista,
        marca AS Marca,
        categoria AS Categoría
FROM
        productos
JOIN    marcas
        ON productos.idMarca = marcas.idMarca
JOIN    categorias
        ON productos.idCategoria = categorias.idCategoria;

/* se pueden implementar alias an los nombres de las tablas */
SELECT
    idProducto AS Id,
    producto AS Producto,
    precio AS Contado,
    precio * 1.04 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM
    productos AS p
JOIN marcas AS m
  ON p.idMarca = m.idMarca
JOIN categorias AS c
  ON p.idCategoria = c.idCategoria;