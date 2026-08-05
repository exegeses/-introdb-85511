# Consultas a travez de una tabla pivot
/*
    obtener
        producto, precio (productos)
        razonSocial, telefono (proveedores)
*/
SELECT producto, precio, razonSocial, telefono
FROM productos AS p
JOIN productos_proveedores AS pp
  ON p.idProducto = pp.idProducto
JOIN proveedores AS ppp
  ON pp.idProveedor = ppp.idProveedor
WHERE ppp.idProveedor = 1;

/*
    Obtener
        producto y precio (productos)
        marca (marcas)
        categoria (categorias)
        razonsocial y telefono (proveedores)
 */

SELECT producto, precio,
       marca,
       categoria,
       razonSocial, telefono,
       provincia
FROM productos p
JOIN marcas m
  ON p.idMarca = m.idMarca
JOIN categorias c
  ON p.idCategoria =c.idCategoria
JOIN productos_proveedores pp
  ON p.idProducto = pp.idProducto
JOIN proveedores pr
  ON pp.idProveedor = pr.idProveedor;


SELECT producto, precio,
       marca,
       categoria,
       razonSocial, telefono,
       provincia
FROM productos p
         JOIN marcas m
              ON p.idMarca = m.idMarca
         JOIN categorias c
              ON p.idCategoria =c.idCategoria
         JOIN productos_proveedores pp
              ON p.idProducto = pp.idProducto
         JOIN proveedores pr
              ON pp.idProveedor = pr.idProveedor
         JOIN provencias st
              ON pr.idProvincia = st.idProvincia;