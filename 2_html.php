<!doctype html>
<html lang="pl">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>HTML</title>
</head>
<body>
	<h4>Listy</h4>
	<ul>
		<li>wielkopolskie
			<ol>
				<li>Poznań</li>
				<li>Gniezno</li>
			</ol>
		</li>
		<li>dolnośląskie
			<ol>
				<li>Wrocław</li>
				<?php
					$city = "<li>Legnica</li>";
					echo $city;
					echo "<li>Bolesławiec</li>"
				?>
			</ol>
		</li>
		<li>kujawsko-pomorskie</li>
	</ul>
</body>
</html>
