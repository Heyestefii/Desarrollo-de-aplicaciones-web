<?php 
if(!isset($_POST['search'])) exit('No se recibió el valor a buscar');

require_once 'database.php';

function search()
{
  $mysqli = getConnexion();
  $search = $mysqli->real_escape_string($_POST['search']);
  $query = "SELECT * FROM task WHERE name LIKE '%$search%' ";
  $res = $mysqli->query($query);

  $json = array();
  while ($row = $res->fetch_array(MYSQLI_ASSOC)) {
    $json[] = array(
      'name' => $row['name'],
      'description' => $row['description'],
      'id' => $row['id']
    );
  }
  $jsonstring = json_encode($json);
  echo $jsonstring;
}

search();
?>