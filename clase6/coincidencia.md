# Consultas con operador de coincidencia
En algunos casos vamos a querer obtener registros que contengan una palabra o parte de una palabra
Por ejemplo todos los registros que contengan la palabra "chip" en la columna descripción

```sql
SELECT producto, precio, descripcion
  FROM productos
  WHERE descripcion = "chip";
```
Esta consulta no trae ningún registro ya que ningún producto contiene únicamente la palabra chip en el campo descripción

Cuando queremos encontrar que contenga una palabra o fragmento de una palabra vamos a utilizar el operador *LIKE* en vez del símbolo de *=* combinado con el símbolo de *%* que va a funcionar como una especie de comodín que puede ocupar uno, varios o incluso ningún carácter,

```sql
SELECT producto, precio, descripcion
FROM productos
WHERE descripcion LIKE "%chip%";
```
```sql
SELECT producto, precio, descripcion
FROM productos
WHERE descripcion LIKE "%retina%"
AND idcategoria = 3;
```
