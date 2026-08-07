# Consultas de práctica — Base de datos `introdb85511`

Tablas disponibles: `categorias`, `marcas`, `productos`, `proveedores`, `productos_proveedores`, `clientes`, `ventas`, `detalle_ventas`.

---
## 1. Consultas simples (una sola tabla)

Preguntas:
1. Listar todos los productos con su precio, ordenados de mayor a menor precio.
2. Mostrar el nombre y apellido de todos los clientes dados de alta durante el año 2024.
3. Listar los productos cuyo precio sea menor a $300.000.
4. Mostrar todas las marcas ordenadas alfabéticamente.
5. Listar los productos que estén marcados como `destacado`.
6. Buscar todos los productos cuyo nombre contenga la palabra "Pro".
7. Mostrar los datos de los clientes cuyo email termine en "@gmail.com".
8. Listar las ventas realizadas durante el mes de mayo de 2024 (cualquier año, ajustar según los datos).
9. Mostrar los 5 productos más caros del catálogo.
10. Listar los proveedores ubicados en la Ciudad de Buenos Aires (CABA).

Respuestas:
1. SELECT producto, precio  
    FROM productos  
    ORDER BY DESC precio;  
2. SELECT nombre, apellido   
   FROM clientes  
   WHERE fechaAlta BETWEEN '2024-01-01' AND '2024-12-31'; 
3. SELECT producto, precio  
   FROM productos  
   WHERE precio <= 300000;
4. SELECT * FORM marcas ORDER BY marca; 
5. SELECT * FROM productos
   WHERE destacado = 1;
6. SELECT * FROM productos
   WHERE producto LIKE '%Pro%';
7. SELECT * FROM clientes
   WHERE email LIKE '%@gmail.com';
8. SELECT * FROM ventas
   WHERE  MONTH(fechaVenta) = 5; 
9. SELECT * FROM productos
   ORDER BY precio DESC
   LIMIT 5;
10. select razonSocial,direccion
    where direccion like '%CABA%';

## 2. Funciones de agregación
Preguntas: 
11. ¿Cuántos productos hay cargados en total?
12. ¿Cuál es el precio promedio de todos los productos?
13. ¿Cuál es el producto más caro y cuál el más barato?
14. ¿Cuántos clientes se dieron de alta en cada año? (agrupar por año de `fechaAlta`)
15. ¿Cuál es el monto total facturado en todas las ventas?
16. ¿Cuántas ventas registra cada cliente?

Respuestas:
11. SELECT count(*) AS Total
    FROM productos;
12. SELECT avg(precio) AS Promedio
    FROM productos;
13. SELECT producto, precio
    FROM productos
    WHERE precio = ( SELECT max(precio) FROM productos )
    OR precio = ( SELECT min(precio) FROM productos );
14. 

