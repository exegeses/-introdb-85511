# creación de tablas y sus relaciones
create table marcas
(
    idMarca smallint unsigned auto_increment primary key,
    marca varchar(50) unique not null
);
create table categorias
(
    idCategoria smallint unsigned auto_increment primary key,
    categoria varchar(50) unique not null
);
create table productos
(
    idProducto mediumint unsigned auto_increment primary key,
    producto varchar(100) unique not null,
    precio decimal(10,2) not null,
    idMarca smallint unsigned not null,
    idCategoria smallint unsigned not null,
    descripcion varchar(1000) not null,
    imagen varchar(50) not null,
    destacado boolean not null,
    activo boolean default (1) not null,
    foreign key (idMarca)  references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);

