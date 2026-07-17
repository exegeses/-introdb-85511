# Creación de tablas en SQL
Para crear una tabla utilizamos el comando **CREATE TABLE**

> Nota: no se puede interactuar con una base de datos si no la activo primero. 
> Para activar una base de datos usamos el comando **USE nombreBase**

<img src="activar-png">

Sintaxis: 

```sql
CREATE TABLE nombreTabla
( 
    nombreCampo tipoDato [modificadores],
    nombreCampo2 tipoDato [modificadores],
    nombreCampo3 tipoDato [modificadores],
    nombreCampoX tipoDato [modificadores]
);
```

Ejemplo práctico:

```sql
CREATE TABLE clientes
(
    idCliente int auto_increment primary key,
    nombre varchar(50) not null, 
    apellido varchar(50) not null,
    dni int unique not null,
    telefono int not null,
    email varchar(100),
    fechaAlta date not null
);
```

## Elimnar una tabla
> Para eliminar una tabla utilizamos el comando **DROP TABLE**

> Sintaxis:
```sql
    DROP TABLE nombreTabla; 
```
 