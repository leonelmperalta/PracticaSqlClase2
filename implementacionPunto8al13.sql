CREATE DATABASE practica8Al13;

USE practica8Al13;

CREATE TABLE departamentos(
	codigoDep int not null,
    nombreDep varchar(100) not null,
    presupuesto int,
    PRIMARY KEY(codigoDep)
);

CREATE TABLE empleados(
	DNI varchar(8) not null,
    nombre varchar(100),
    apellidos varchar(255),
    departamento int,
    PRIMARY KEY (DNI),
    FOREIGN KEY(departamento) REFERENCES departamentos(codigoDep)
);
