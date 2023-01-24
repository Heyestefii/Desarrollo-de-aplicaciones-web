/*
Diana Ortiz
Bases de Datos 
*/

CREATE TABLE Materiales (
	Clave numeric(5) PRIMARY KEY NOT NULL,
	Descripcion varchar(50),
	Costo numeric(8,2)
);

CREATE TABLE Proveedores (
	RFC char(13) PRIMARY KEY NOT NULL,
	RazonSocial varchar(50),
);

CREATE TABLE Proyectos (
	Numero numeric(5) PRIMARY KEY NOT NULL,
	Denominacion varchar(50),
);

CREATE TABLE Entregan (
	Clave numeric(5) NOT NULL,
	RFC char(13),
	Numero numeric(5),
	Fecha DATETIME,
	Cantidad numeric(8,2),
	PRIMARY KEY CLUSTERED (Clave, RFC, Numero, Fecha),
	FOREIGN KEY (Clave) REFERENCES Materiales(Clave),
	FOREIGN KEY (RFC) REFERENCES Proveedores(RFC),
	FOREIGN KEY (Numero) REFERENCES Proyectos(Numero)
);