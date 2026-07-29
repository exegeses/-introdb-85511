# orden de resultados
Cuando obtenemos una grilla de resultados, estos **siempre** vienen ordenados *de manera predeterminada*
Podemos modificar el orden de los resultados con el modificador **ORDER BY**

    SELECT *  
      FROM marcas  
      ORDER BY idMarca;  

    SELECT razonSocial, telefono
      FROM proveedores
      ORDER BY razonsocial;  

    SELECT producto, precio   
      FROM productos
      ORDER BY precio DESC;

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca, precio;  


Sintaxis:

    SELECT [*, campo, campo]  
       FROM [tabla]  
       ORDER BY [campo];  

