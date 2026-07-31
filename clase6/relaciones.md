# Consultas con relaciones entre tablas
Cuando queremos obtener datos provenientes de dos o más tablas debemos implementar relaciones.
Tenemos dos técnicas para lograrlao

1. Table relation
2. JOIN
    
## 1. Table relation
Para lograr esta técnica debemos mencionar en el listado de las tablas (después del *FROM*) todas las tablas necesarias separadas por comas
Y luego mediante un filtro (*WHERE*)
Igualamos la clave foránea de la primera tabla con la clave primaria de la segunda tabla.

Sintaxis:

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

Ejemplo práctico

    SELECT producto, precio, marca  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
     WHERE productos.idMarca = marcas.idMarca  
       AND productos.idCategoria = categorias.idCategoria;  

## 2. JOIN
Para lograr esta técnica mencionada *después del FROM* únicamente una sola tabla (una única tabla)
Luego mediante la palabra reservada **JOIN** mencionamos la tabla secundaria
Finalmente mediante la palabra reservada **ON** igualamos la clave foránea de la primera tabla con la clave primaria de la segunda tabla.

Sintaxis:

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  

Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, marca, categoria  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

