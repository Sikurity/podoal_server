<?php
	define('__ROOT__', dirname(__FILE__)); 
	require_once(__ROOT__.'/db_connect.php'); 

  echo __ROOT__."\\uploads\\";

/*
	if (mysqli_connect_errno($conn))
		echo "Failed : ".mysqli_connect_error();
	else
		echo "Success";
*/

	$res = mysqli_query($conn,"SELECT * FROM local_number"); //select 구문을 이용해 칼럽값을 가져옴

	$result = array();  
   
	while($row = mysqli_fetch_array($res)){  
		array_push($result,  
			array('A'=>$row[0],'B'=>$row[1],'C'=>$row[2]  
		));  
	}
	
	$json = json_encode(array("result"=>$result),JSON_UNESCAPED_UNICODE);
	echo $json;

	mysqli_close($conn);
?>