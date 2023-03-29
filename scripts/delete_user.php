<?php
//	echo $_GET["deleteUserId"];
	require_once "./connect.php";
	$sql = "DELETE FROM users WHERE `users`.`id` = $_GET[deleteUserId]";
	$result = $conn->query($sql);
//	echo $conn->affected_rows;
	if ($conn->affected_rows > 0){
//		echo "Usunięto rekord";
		$deleteUser = $_GET["deleteUserId"];
	}else{
//		echo "Nie udało się usunąć rekordu";
		$deleteUser = 0;
	}
	header("location: ../4_db/4_db_table_delete_add.php?deleteUser=$deleteUser");
	?>
	<script>
		// history.back();
	</script>
