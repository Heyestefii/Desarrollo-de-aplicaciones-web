/*
Diana Ortiz
A01209403
*/

BULK INSERT LabSQL.[Proyectos]
   FROM '/proyectos.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      );

SELECT  * FROM Proyectos;