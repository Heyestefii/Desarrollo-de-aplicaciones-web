<html>
  <head>
    <title>Lab 9</title>
  </head>
  <body>
  
 <?php
 include_once("cuerpo.html");
 require_once("promedio.php");
 require_once("tabla.php");
 require_once("lista.php");
 ?>

  <?php
  echo "<h2> Ejercicio 1</h2>";
  $arreglo = array(5,3,1,5,8,9,7);
  echo "El promedio del arreglo [5,3,1,5,8,9,7] es ";
  echo promedio($arreglo)."<br>";
  $arreglo = array(5,45,77,26,67);
  echo "El promedio del arreglo [5,45,77,26,67] es ";
  echo promedio($arreglo)."<br><br>";

  echo "<h2> Ejercicio 2:</h2>";
  echo "N es igual a: 8 ";
  echo tabla(8)."<br>";
  echo "N es igual a: 5 ";
  echo tabla(5);

  echo "<h2> Ejercicio 3</h2>";
  $arreglo = array(5,3,1,5,8,9,7);
  echo lista($arreglo)."<br>";
  echo "<h3>Siguiente arreglo</h3>";
  $arreglo = array(5,45,77,26,67,56);
  echo lista($arreglo);

 
  ?>
</html>
