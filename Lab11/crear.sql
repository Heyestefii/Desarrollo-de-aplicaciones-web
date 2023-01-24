/*
Diana Ortiz
Bases de Datos 
*/

DROP DATABASE IF EXISTS LabSQL; 
CREATE DATABASE LabSQL; 
USE LabSQL; 

DROP TABLE IF EXISTS Materiales; 
CREATE TABLE Materiales
(
  Clave numeric(5),
  Descripcion varchar(50),
  Costo numeric(8,2)
);

DROP TABLE IF EXISTS Proveedores; 
CREATE TABLE Proveedores
(
	RFC char(13),
	RazonSocial varchar(50)
);

DROP TABLE IF EXISTS Proyectos; 
CREATE TABLE Proyectos
(
	Numero numeric(5),
	Denominacion varchar(50)
);

DROP TABLE IF EXISTS Entregan; 
CREATE TABLE Entregan
(
	Clave numeric(5),
	RFC char(13),
	Numero numeric(5),
	Fecha datetime,
	Cantidad Numeric(8,2)
);

HELP Materiales; 
HELP Entregan; 
HELP Proveedores; 
HELP Proyectos; 

DROP TABLE Materiales;
DROP TABLE Proveedores;
DROP TABLE Proyectos;
DROP TABLE Entregan;

select * from Materiales where xtype='U'; 
select * from Proveedores where xtype='U';
select * from Proyectos where xtype='U';
select * from Entregan where xtype='U';