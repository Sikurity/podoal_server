<?php
	define('__ROOT__', dirname(__FILE__)); 
	require_once(__ROOT__.'/db_connect.php'); 

/*
	if (mysqli_connect_errno($conn))
		echo "Failed : ".mysqli_connect_error();
	else
		echo "Success";
*/
	if( isset($_POST['sight_id']) && isset($_POST['member_id']) && isset($_POST['visited_id']) )
	{
		$sight_id = $_POST['sight_id'];
		$member_id = $_POST['member_id'];
		$visited_id = $_POST['visited_id'];

		$today = mktime();
	
		$visited_date = date("Y-m-d",$today);
		
		$result = mysqli_query($conn, "insert into visited_sight values('".$member_id."', '".$sight_id."','".$visited_date."',".$visited_id.")");
	}
		
	if( isset($result) )
		echo 'success';
	else
		echo 'failure';
  
	mysqli_close($conn); 
?>