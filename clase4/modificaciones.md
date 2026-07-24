# Modificación de registros en SQL
Para modificar los registros dentro de una tabla utilizamos el comando *UPDATE*
Debemos especificar mediante un filtro cuál es el registro a modificar
Para implementar un filtro utilizamos la palabra reservada *WHERE* seguida de una condición

Sintaxis

    UPDATE nombreTabla  
       SET  
           nombreCampo = valorCamnpo,  
           nombreCampo = valorCamnpo  
      WHERE condición;  

Ejemplo práctico: 

```sql
    UPDATE proveedores  
       SET 
           email = 'contacto@importadoracentral.com.ar'
     WHERE 
           idProveedor = 8; 
```

```sql
    UPDATE clientes  
       SET
           telefono = 1101234568,  
           fechaAlta = '2023-08-13'  
     WHERE idCliente = 12;  
```