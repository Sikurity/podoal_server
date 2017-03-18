<?php
	define('__ROOT__', dirname(__FILE__)); 
	require_once(__ROOT__.'/db_connect.php'); 

/*
	if (mysqli_connect_errno($conn))
		echo "Failed : ".mysqli_connect_error();
	else
		echo "Success";
*/

	$res = mysqli_query($conn,"SELECT * FROM sight"); //select ������ �̿��� Į������ ������

	$result = array();  
   
	while($row = mysqli_fetch_array($res)){  
		array_push($result,  
			array('sight_id'=>$row[0],'latitude'=>$row[1],'longitude'=>$row[2],'name'=>$row[3],'radius'=>$row[4],
			'info'=>$row[5],'local_number_ID'=>$row[6])); 
	}
	
	$json = json_encode(array("result"=>$result),JSON_UNESCAPED_UNICODE);
	echo $json;

	mysqli_close($conn);
?>