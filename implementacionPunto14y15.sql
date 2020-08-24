CREATE DATABASE practica14y15;

USE practica14y15;

CREATE TABLE almacenes(
	codigoAlm int not null,
    lugar varchar(100),
    capacidad int,
    PRIMARY KEY(codigoAlm)
);

CREATE TABLE cajas(
	NumReferencia char(5) NOT null,
    contenido varchar(100),
    valor int,
    almacen int not null,
    PRIMARY KEY(NumReferencia),
    FOREIGN KEY(almacen) REFERENCES almacenes(codigoAlm)
);
