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

	echo "<br>"."$name"." ".$surname;




