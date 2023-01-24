/*
Diana Ortiz
A01209403
*/

BULK INSERT LabSQL.[Proveedores]
   FROM '/proveedores.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proveedores;