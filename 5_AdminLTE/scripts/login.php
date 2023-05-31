<?php
//print_r($_POST);
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	// print_r($_SERVER["REQUEST_METHOD"]);
	$errors = [];
	foreach ($_POST as $key => $value){
		if (empty($value)){
			$errors[] = "Pole <b>$key</b> musi być wypełnione";
		}
	}

	$login = $_POST["email"];
	$pass = $_POST["pass"];

	//$login = filter_var($login, FILTER_SANITIZE_EMAIL);

	//$pass = filter_var($pass, FILTER_SANITIZE_EMAIL);

	if (!empty($errors)){
		$error_message = implode("<br>", $errors);
		header("location: ../pages/index.php?error=".urlencode($error_message));
		exit();
	}

	require_once "./connect.php";
	$stmt = $conn->prepare("SELECT * FROM users WHERE email=?");
	$stmt->bind_param("s", $login);
	$stmt->execute();
	$result = $stmt->get_result();
	//echo $result->num_rows;

	if ($result->num_rows != 0){
		$user = $result->fetch_assoc();
		print_r($user);
			//echo $pass;
//		echo $user["password"];
		if (password_verify($pass, $user["password"])){
			echo "zalogowany";
		}else{
			echo "niezalogowany";
		}
	}else{
		$_SESSION["error"] = "Błędny login lub hasło!";
		echo "<script>history.back();</script>";
		exit();
	}

	exit();

}else{
	echo "<script>history.back();</script>";
}