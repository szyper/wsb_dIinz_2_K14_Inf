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

	$login = filter_var($login, FILTER_SANITIZE_EMAIL);

	//ddoać do rejestracji
	//dodać filtrowanie danych!!!
	if (!preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\w\d\s])\S{8,}$/', $pass)) {
		// Hasło nie spełnia wymagań dotyczących złożoności
		// Wyświetl komunikat błędu lub podaj inną formę informacji zwrotnej
	}


	$pass = filter_var($pass, FILTER_SANITIZE_EMAIL);

	if (!empty($errors)){
		$error_message = implode("<br>", $errors);
		header("location: ../pages/index.php?error=".urlencode($error_message));
		exit();
	}


}else{
	echo "<script>history.back();</script>";
}