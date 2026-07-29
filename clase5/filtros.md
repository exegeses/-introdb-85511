# Filtrado de registros
 Cuando obtenemos una grilla de resultados, si no aplicamos un filtro tenemos la totalidad de los registros
Filtrar registros implica aplicar una condición para obtener sólo los que cumplan esa condición
Implementamos un filtro con la palabra reservada **WHERE** seguida de una condición

Obtener un listado de todos los productos de la marca 'Sennheiser' (16)

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 16;  

Obtener un listado de todos los productos con un precio hasta 1000000

    SELECT producto, precio  
      FROM productos  
      WHERE precio <= 1000000;  

## Implementando más de un filtro
Obtener un listado de todos los productos con un precio hasta 1000000 y de la marca Anker (15)

    SELECT producto, precio  
      FROM productos  
      WHERE  precio <= 1000000  
        AND  idMarca = 15;   

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 15  
        OR  idMarca = 17;

Obtener todos los productos con un precio entre 100,000 y 1,000,000

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100000  
        AND precio <= 1000000;  

Uso de BETWEEN

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100000  
        AND precio <= 1000000;  

    SELECT nombre, apellido, fechaAlta  
      FROM clientes  
      WHERE fechaAlta BETWEEN '2023-01-01' AND '2023-12-31'