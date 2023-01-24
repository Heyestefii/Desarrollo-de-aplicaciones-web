/*
Diana Ortiz
A01209403
*/

BULK INSERT LabSQL.[materiales]
   FROM '/materiales.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Materiales;