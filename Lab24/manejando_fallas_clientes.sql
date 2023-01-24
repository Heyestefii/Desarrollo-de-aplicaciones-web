BEGIN;
  INSERT INTO Clientes_Banca VALUES('005','Rosa Ruiz Maldonado',9000);
  INSERT INTO Clientes_Banca VALUES('006','Luis Camino Ortiz',5000);
  INSERT INTO Clientes_Banca VALUES('001','Oscar Perez Alvarado',8000);
ROLLBACK;
COMMIT;
