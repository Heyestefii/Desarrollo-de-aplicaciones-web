 <?php 
  session_start();

  session_unset();

  session_destroy();

  header('Location: /DAW/daw_a01209403/Lab12/index.php');
?>
 