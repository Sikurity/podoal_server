<?php
	define('__ROOT__', dirname(__FILE__)); 
	require_once(__ROOT__.'/db_connect.php'); 

/*
	if (mysqli_connect_errno($conn))
		echo "Failed : ".mysqli_connect_error();
	else
		echo "Success";
*/
	if( isset($_GET['member_id']) )
	{
		$member_id = $_GET['member_id'];
		
		$res = mysqli_query($conn,"select vs.*, s.name as sight_name
				from visited_sight vs, sight s
				where vs.sight_id = s.sight_id and
				vs.member_id = '$member_id'");
		$result = array();
		 
		while($row = mysqli_fetch_array($res))
		{
			array_push($result, array('member_id'=>$row[0],'sight_id'=>$row[1],'visited_date'=>$row[2],'visited_id'=>$row[3],'sight_name'=>$row[4]));
		}
		
		$json = json_encode(array("result"=>$result), JSON_UNESCAPED_UNICODE);
		echo $json;
	}

	mysqli_close($conn);
?>