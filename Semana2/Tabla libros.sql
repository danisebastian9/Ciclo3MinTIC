create database libros;

use libros;

create table libro (
ISBN varchar(30) primary key,
Titulo varchar(50) not null,
Editorial varchar(50),
Autor varchar(30) not null,
No_paginas int(11)
);

alter table Libro add Precio_unit int(11);
alter table Libro Add acuymulado double;

create table Prestamo(
Id_prestamos int(11) auto_increment primary key,
Estudiante varchar(25),
libro varchar (30),
Fecha_Prestamo date
);

alter table prestamo add Fecha_devolucion date;
alter table prestamo add Sancion bit;

alter table prestamos change Sanion Sancion bit;

alter table Prestamo add foreign key (libro) references Libro(ISBN);

select Id_prestamos from prestamo order by id_prestamos desc limit 1;
select fecha_prestamo+7 from prestamos;

update prestamo set Fecha_Devolucion = Fecha_Prestamo + 7 where Id_prestamos=2;

