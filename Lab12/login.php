<?php 
  require 'database.php';
  require 'partials/partial_login.html'; 

  session_start();

  if (isset($_SESSION['user_id'])) {
    header('Location: /DAW/daw_a01209403/Lab12/login.php');
  }

  if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $records = $conn->prepare('SELECT id, email, password FROM users WHERE email = :email');
    $records->bindParam(':email', $_POST['email']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $message = '';

    if (count($results) > 0 && password_verify($_POST['password'], $results['password'])){
      $_SESSION['user_id'] = $results['id'];
      header("Location: /DAW/daw_a01209403/Lab12/home.php");
    } else {
      $message = 'Sorry, those credentials do not match';
    }
  }
?>
