# tabla clientes
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