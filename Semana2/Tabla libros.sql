create database libros;

use libros;

create table libro (
ISBN varchar(30) primary key,
Titulo varchar(50) not null,
Editorial varchar(50),
Autor varchar(30) not null,
No_paginas int(11)
);