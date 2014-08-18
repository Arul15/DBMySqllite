<?php
	require('connect.php');
    // If the values are posted, insert them into the database.
    
    $username  		= $_GET["username"];
    $email			= $_GET["email"];
    $password		= $_GET["password"];

    if (isset($username) && isset($email) && isset($password)) {
  
  		  if (strlen($username) == 0 || strlen($email) == 0 || strlen($password) == 0) {
  		  
  		  	$msg = "Please fill all the mandatory fields.";
            $arr = array('message' =>$msg);
			echo json_encode($arr);
  		  
  		  } else {
  		    		  	
			if (!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$email)) {

 				    $msg = "Invalid email format";
            		$arr = array('message' =>$msg);
					echo json_encode($arr);
 				  
  			} else {
  			
  				$sql="select * from UserDetails where username='".$username."' and email='".$email."' ";

				$output = mysql_query($sql);
				
				if ($row = mysql_fetch_array($output)) {   
					$Msg = 'This User Already Registered';
					$arr = array('message' =>$Msg);
					echo json_encode($arr);
	
				} else {
				
					$query = "INSERT INTO `UserDetails` (username, email, password) VALUES ('$username', '$email', '$password')";
        			$result = mysql_query($query);

        			if($result) {
       	 
            			$msg = "Successfully Registered";
            			$arr = array('message' =>$msg);
						echo json_encode($arr);
        			}
				
				}
				
  			}
  		 }
    }
?>
