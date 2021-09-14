create database libros;

use libros;

create table libro (
ISBN varchar(30) primary key,
Titulo varchar(50) not null,
Editorial varchar(50),
Autor varchar(30) not null,
No_paginas int(11)
);

create table Prestamo(
Id_prestamos int(11) auto_increment primary key,
Estudiante varchar(25),
libro varchar (30),
Fecha_Prestamo date
);

alter table Prestamo add foreign key (libro) references Libro(ISBN);


