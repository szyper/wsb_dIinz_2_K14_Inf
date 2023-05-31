<?php
	$tab = array(
		"name" => "Janusz",
		"surname" => "Nowak"
	);

	print_r($tab);
	echo $tab["name"];
	//$_POST["name"]
	//$name = $_POST["name"];
	//echo $name;

	foreach ($tab as $key => $value){
		$$key = $value;
	}

	echo "<br>"."$name"." ".$surname."<hr>";

//	if (filter_var('bob@example.com', FILTER_VALIDATE_EMAIL)){
//	if (filter_var('http://bob@example.com', FILTER_VALIDATE_EMAIL)){
	if (filter_var('bobexample.com', FILTER_VALIDATE_EMAIL)){
		echo "ok";
	}else{
		echo "error";
	}

	echo "<hr>";






