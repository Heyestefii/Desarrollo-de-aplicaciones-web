<?php
 require_once("promedio.php");
 
 function lista($arreglo) {
    $largo = count ($arreglo);
    $i = 0;
    $mensaje = "El arreglo contiene los siguientes elementos <br> " ;
    $promedio = promedio($arreglo);
    $ordenado = " ";
    $lista = " ";
    
    for($i=0; $i<($largo) ;$i++){
      $mensaje .= $arreglo[$i];
      $mensaje .= " ";
    }

      $mensaje .= "<ul>";
      $mensaje .= "<li>Promedio: $promedio</li>";

      sort($arreglo);
      for($i=0; $i<($largo) ;$i++){
      $ordenado .= $arreglo[$i];
      $ordenado .= " ";
    }
      $mensaje .= "<li>Arreglo ordenado de menor a mayor: $ordenado </li>";

      rsort($arreglo);
      $ordenado ="";
      for($i=0; $i<($largo) ;$i++){
      $ordenado.= $arreglo[$i];
      $ordenado.= " ";
    }
      $mensaje .= "<li>Arreglo ordenado de mayor a menor: $ordenado </li>";

    $lista .= "</ul>";
    return $mensaje;
  }
?>

