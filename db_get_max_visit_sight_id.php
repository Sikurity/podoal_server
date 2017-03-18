<?php
	define('__ROOT__', dirname(__FILE__)); 
	require_once(__ROOT__.'/db_connect.php'); 

/*
	if (mysqli_connect_errno($conn))
		echo "Failed : ".mysqli_connect_error();
	else
		echo "Success";
*/

	$res = mysqli_query($conn,"select max(visited_id) from visited_sight");

	$result = mysqli_fetch_array($res);
  
	mysqli_close($conn);
	
	echo $result[0] + 1;
?>