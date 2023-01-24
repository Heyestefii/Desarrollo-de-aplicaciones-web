/*
Diana Ortiz
A01209403
*/

SET DATEFORMAT dmy
BULK INSERT LabSQL.[Entregan]
   FROM '/entregan.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = '\n'
      )

SELECT  * FROM Entregan;