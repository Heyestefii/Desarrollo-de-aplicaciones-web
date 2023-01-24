BEGIN;
  INSERT INTO Clientes_Banca VALUES('001', 'Manuel Rios Maldonado', 9000);
  INSERT INTO Clientes_Banca VALUES('002', 'Pablo Perez Ortiz', 5000);
  INSERT INTO Clientes_Banca VALUES('003', 'Luis Flores Alvarado', 8000);
COMMIT;
SELECT * FROM Clientes_Banca;
