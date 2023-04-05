<?php
  session_start();
?>
<!doctype html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./style/table.css">
	<title>Użytkownicy</title>
</head>
<body>
  <h4>Użytkownicy</h4>
  <?php
    if (isset($_SESSION["error"])){
      echo $_SESSION["error"];
      unset($_SESSION["error"]);
    }
    require_once "../scripts/connect.php";
  $sql = "SELECT `u`.`id`, `u`.`firstName`, `u`.`lastName`, `u`.`birthday`, `c`.`city` as `miasto`, `s`.`state`  FROM `users` u INNER JOIN `cities` c ON `u`.`city_id`=`c`.`id` INNER JOIN `states` s ON `c`.`state_id`=`s`.`id`;";
    $result = $conn->query($sql);
    echo <<< TABLE
      <table>
        <tr>
          <th>Imię</th>
          <th>Nazwisko</th>
          <th>Data urodzenia</th>
          <th>Rok urodzenia</th>
          <th>Miasto</th>
          <th>Województwo</th>
        </tr>
TABLE;
  if ($result->num_rows == 0){
	  echo <<< TABLEUSERS
        <tr>
          <td colspan="6">Brak rekordów</td>
          
        </tr>
TABLEUSERS;
  }else{
	  while($user = $result->fetch_assoc()){

		  $year = substr($user["birthday"], 0, 4);
		  echo <<< TABLEUSERS
        <tr>
          <td>$user[firstName]</td>
          <td>$user[lastName]</td>
          <td>$user[birthday]</td>
          <td>$year</td>
          <td>$user[miasto]</td>
          <td>$user[state]</td>
          <td><a href="../scripts/delete_user.php?deleteUserId=$user[id]">Usuń</a></td>
          <td><a href="./5_db_table_delete_add_update.php?updateUserId=$user[id]">Aktualizuj użytkownika</a></td>
        </tr>
TABLEUSERS;
	  }
  }

    echo "</table>";
    if (isset($_GET["deleteUser"])){
	    if ($_GET["deleteUser"] != 0){
		    echo "<hr>Usunięto użytkownika o id = $_GET[deleteUser]";
	    }else{
		    echo "Nie udało się usunąć użytkownika";
	    }
    }

    //dodawanie użytkownika
    if (isset($_GET["addUserForm"])){
      echo <<< ADDUSERFORM
        <h4>Dodawanie użytkownika</h4>
        <form action="../scripts/add_user.php" method="post">
          <input type="text" name="firstName" placeholder="Podaj imię" autofocus><br><br>
          <input type="text" name="lastName" placeholder="Podaj nazwisko"><br><br>
          <select name="city_id">
 ADDUSERFORM;
      $sql = "SELECT * FROM cities;";
      $result = $conn->query($sql);
      while ($city = $result->fetch_assoc()){
        echo "<option value=\"$city[id]\">$city[city]</option>";
      }
	    echo <<< ADDUSERFORM
          </select><br><br>
          <input type="date" name="birthday">Data urodzenia<br><br>
          <input type="checkbox" name="term" checked> Regulamin<br><br>
          <input type="submit" value="Dodaj użytkownika">
        </form>
ADDUSERFORM;
    }else{
//      echo "<hr><a href=\"./4_db_table_delete_add.php?addUserForm=1\">Dodaj użytkownika</a>";
      echo "<hr><a href=\"./5_db_table_delete_add_update.php?addUserForm=1\">Dodaj użytkownika</a>";
    }

    //aktualizacja użytkownika
  if (isset($_GET["updateUserId"])){
    $sql = "SELECT * FROM users WHERE id=$_GET[updateUserId];";
    $result = $conn->query($sql);
    $updateUser = $result->fetch_assoc();
    $_SESSION["updateUserId"] = $_GET["updateUserId"];
    //print_r($updateUser);
	  echo <<< UPDATEUSERFORM
        <h4>Aktualizacja użytkownika</h4>
        <form action="../scripts/update_user.php" method="post">
          <input type="text" name="firstName" placeholder="Podaj imię" value="$updateUser[firstName]" autofocus><br><br>
          <input type="text" name="lastName" placeholder="Podaj nazwisko" value="$updateUser[lastName]"><br><br>
          <select name="city_id">
 UPDATEUSERFORM;
	  $sql = "SELECT * FROM `cities`;";
	  $result = $conn->query($sql);
	  while ($city = $result->fetch_assoc()){
      if ($city["id"] == $updateUser["city_id"]){
	      echo "<option value=\"$city[id]\" selected>$city[city]</option>";
      }else{
	      echo "<option value=\"$city[id]\">$city[city]</option>";
      }
	  }
	  echo <<< UPDATEUSERFORM
          </select><br><br>
          <input type="date" name="birthday" value="$updateUser[birthday]">Data urodzenia<br><br>
          <input type="submit" value="Aktualizuj użytkownika">
        </form>
UPDATEUSERFORM;
  }
    $conn->close();
  ?>

</body>
</html>
