<?php

	echo "<pre>";
		print_r($_POST);
	echo "</pre>";

	session_start();
	require_once "./connect.php";

	foreach ($_POST as $key => $value){
		if (empty($value)){
			$_SESSION["error"] = "Wypełnij wszystkie pola!";
			echo "<script>history.back();</script>";
			exit();
		}
	}

	$error = 0;

	if (!isset($_POST["terms"])){
		$_SESSION["error"] = "Zaznacz regulamin!";
		$error = 1;
	}

	if (!isset($_POST["avatar"])){
		$_SESSION["error"] = "Wybierz płeć!";
		$error = 1;
	}

	if ($_POST["pass1"] != $_POST["pass2"]){
		$_SESSION["error"] = "Hasła są różne!";
		$error = 1;
	}

	if ($_POST["email1"] != $_POST["email2"]){
		$_SESSION["error"] = "Adresy poczty elektronicznej są różne!";
		$error = 1;
	}

if ($error != 0){
	echo "<script>history.back();</script>";
	exit();
}

	$stmt = $conn->prepare("SELECT * FROM users WHERE email=?");
	$stmt->bind_param('s', $_POST["email1"]);
	$stmt->execute();
	$result = $stmt->get_result();
	if ($result->num_rows != 0){
		$_SESSION["error"] = "Podany email jest zajęty!";
		echo "<script>history.back();</script>";
		exit();
	}
	//echo $result->num_rows;
	/*
	while ($user = $result->fetch_assoc()) {
	echo $user['firstName'];
	}
	*/

	$stmt = $conn->prepare("INSERT INTO `users` (`email`, `city_id`, `firstName`, `lastName`, `birthday`, `avatar`, `password`, `created_at`) VALUES (?, ?, ?, ?, ?, ?, ?, current_timestamp());");

	$pass = password_hash('$_POST[pass1]', PASSWORD_ARGON2ID);


	$avatar = ($_POST["avatar"] == 'w') ? './img/woman.png' : './img/man.png';

	$stmt->bind_param('sisssss', $_POST["email1"], $_POST["city_id"], $_POST["firstName"], $_POST["lastName"], $_POST["birthday"], $avatar, $pass);

	$stmt->execute();

	if ($stmt->affected_rows == 1){
		$_SESSION["success"] = "Prawidowo dodano użytkownika $_POST[firstName] $_POST[lastName]";
	}else{
		$_SESSION["error"] = "Nie dodano użytkownika";
	}

	//header("location: ../pages/register.php");

