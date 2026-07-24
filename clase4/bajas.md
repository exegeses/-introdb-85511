# Borrado de registros en SQL
Para eliminar registros dentro de una tabla utilizamos el comando *DELETE*
Debemos implementar un filtro para indicar qué registro queremos borrar

Sintaxis:  

    DELETE FROM nombreTabla  
      WHERE colPK = valorID;  


Ejemplo práctico:

    DELETE FROM proveedores  
      WHERE idProveedor = 77;  

    DELETE FROM clientes  
      WHERE idCliente = 17;  


> ver: <https://youtu.be/i_cVJgIz_Cs?si=FZoJHXM4dj-fzult>

---
> Safe Update: MySQL Workbench cuenta con un módulo seguro para modificaciones y para bajas.
> Si yo me olvido de insertar el filtro **WHERE** me daría error. Pero cuidado que esto no es una característica de lenguaje SQL