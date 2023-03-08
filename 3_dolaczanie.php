<!doctype html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
</head>
<body>
	<h4>Lista miast</h4>
    <?php
//include, include_once, require, require_once
//        @include "./scripts/city1.php";
        include "./scripts/city.php";
        include_once "./scripts/city.php";

        require_once "./scripts/city.php";
        require "./scripts/cityq.php";

    ?>
    <h4>Kod po dołączeniu skryptu</h4>
</body>
</html>
