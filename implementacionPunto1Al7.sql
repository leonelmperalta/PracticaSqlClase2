CREATE DATABASE practica1Al7;

USE practica1Al7;

CREATE TABLE FABRICANTES(
	codigoFab int not null,
    nombreFab varchar(100) not null,
    PRIMARY KEY(codigoFab)
);

CREATE TABLE ARTICULOS(
    codigoArt int not null,
    nombreArt varchar(100),
    precioArt int,
    fabricante int not null,
    PRIMARY KEY(codigoArt),
    FOREIGN KEY(fabricante) references FABRICANTES(codigoFab)
);
