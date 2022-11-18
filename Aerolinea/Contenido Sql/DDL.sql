drop database if exists aerolinea;
create database aerolinea;
use aerolinea;

drop table if exists vuelos;

Create table vuelos(
	nro varchar (100) primary key,
    fecha date,
    hora time,
    ciudad varchar(120),
    nro_avion int
);

create table pasajeros(
	pasaporte varchar (100) primary key,
	nro_vuelo varchar(100)
);

create table personales(
	dni int primary key,
    nombre varchar (25),
    apellido varchar (25),
    area_asignada enum ("piloto","limpieza","soporte","azafatas"),
    nro_vuelo varchar (100)
);

create table aviones(
	nro int auto_increment primary key,
    modelo varchar(255),
    fabricante varchar(255),
    capacidad enum("baja","media","alta"),
    angar int
);

alter table vuelos
add foreign key (nro_avion) 
references aviones (nro);

alter table pasajeros
add foreign key (nro_vuelo)
references vuelos (nro);

alter table personales
add foreign key (nro_vuelo)
references vuelos (nro);