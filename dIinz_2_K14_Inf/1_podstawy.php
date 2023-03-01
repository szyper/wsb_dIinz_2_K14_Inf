<?php 
  $firstName = "Janusz";
  $lastName = "Nowak";
  echo "Imię i nazwisko: $firstName $lastName<br>";
  echo 'Imię i nazwisko: $firstName $lastName<br>';
  
  //heredoc
  echo <<< DATA
    <hr>
    Imię: $firstName<br>
    Nazwisko: $lastName<br>
DATA;


?>