BEGIN;
  INSERT INTO Tipos_Movimiento VALUES('A', 'Retiro Cajero Automático');
  INSERT INTO Tipos_Movimiento VALUES('B', 'Deposito Ventanilla');
COMMIT;

BEGIN;
  INSERT INTO Movimientos (nocuenta, claveM, monto) VALUES('001', 'A', 500);
  UPDATE Clientes_Banca SET Saldo = Saldo - 500 WHERE nocuenta = '001';
COMMIT;
