<?php

try {
    $conn = new PDO('mysql:host=localhost;dbname=teste-akna', 'root', '');
      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      echo 'Conectado com sucesso';
  } catch(PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
  }