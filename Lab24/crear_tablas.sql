DROP TABLE IF EXISTS Clientes_Banca CASCADE;
CREATE TABLE Clientes_Banca (
  nocuenta VARCHAR(5) PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  saldo NUMERIC(10,2) DEFAULT 0.00 NOT NULL
);

DROP TABLE IF EXISTS Tipos_Movimiento CASCADE;
CREATE TABLE Tipos_Movimiento (
  claveM VARCHAR(2) PRIMARY KEY,
  descripcion TEXT
);

DROP TABLE IF EXISTS Movimientos CASCADE;
CREATE TABLE Movimientos (
  nocuenta VARCHAR(5),
  claveM VARCHAR(2),
  fecha TIMESTAMP DEFAULT NOW(),
  monto NUMERIC(10,2) NOT NULL,
  FOREIGN KEY (noCuenta) REFERENCES Clientes_Banca(nocuenta),
  FOREIGN KEY (claveM) REFERENCES Tipos_Movimiento(claveM),
  PRIMARY KEY (nocuenta, claveM, fecha)
);

