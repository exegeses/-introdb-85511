# Consultas en SQL
Podemos realizar consultas:

1. Servidor
2. Base de datos
3. Tablas
4. Vistas

## 1. Servidor

    -- listar todas las bases de datos de un server  
    SHOW DATABASES;  

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

    -- listar usuarios conectados  
    SELECT USER();  

## 2. Base de datos

    -- listar todas las tablas dentro de una base de datos  
    SHOW TABLES;  

    SELECT TABLE_NAME FROM   
      information_schema.tables  
      WHERE table_schema = DATABASE();  

## 3. Tablas

    -- ver la estructura de una tabla  
    DESCRIBE nombreTabla;  

    -- obtener grillas de resultados con los registros
    SELECT * FROM nombreTabla;  
    SELECT * FROM marcas;  
    SELECT * FROM productos;  
    
En estas consultas vamos a obtener la totalidad de los registros y siempre vamos a ver todas las columnas de una tabla.
Si queremos ver la totalidad de los registros, pero sólo de algunas columnas, debemos reemplazar el símbolo de * por una lista de las columnas.

    -- listar todos los registros de la tabla proveedores    
    -- pero sólo quiero ver la razón social y el teléfono 
    SELECT razonSocial, telefono  
      FROM proveedores;  

    -- obtener apellido, nombre y teléfono de la tabla clientes  
    SELECT apellido, nombre, telefono  
      FROM clientes;  

Sintaxis: 
    
    SELECT [*, campo, campo]  
       FROM [tabla]

