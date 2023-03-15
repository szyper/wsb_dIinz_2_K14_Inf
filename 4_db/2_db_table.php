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
    require_once "../scripts/connect.php";
  $sql = "SELECT `users`.`firstName`, `users`.`lastName`, `users`.`birthday`, `cities`.`city` as `miasto`, `states`.`state`  FROM `users` INNER JOIN `cities` ON `users`.`city_id`=`cities`.`id` INNER JOIN `states` ON `cities`.`state_id`=`states`.`id`;";
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
        </tr>
TABLEUSERS;

    }
    echo "</table>";
  ?>
</body>
</html>
