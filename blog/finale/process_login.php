<?php session_start();
     extract($_POST);
    if(empty($_POST)) { exit; }
    
    $errors = array();
    
    //-- General validation -------------------------------
    
    if(empty($_POST["unm"]))
        $errors[] = "UserName was empty.";
    if(empty($_POST["pwd"]))
        $errors[] = "Password was empty.";
    
    if( ! empty($errors))
    {
        echo "<b>Error(s):</b><hr />";
        foreach($errors as $e) {
            echo "<li>".$e."</li>";
        }
        exit;
    }
    $user=$_POST["unm"];
	$pd=$_POST["pwd"];
    $lin = mysqli_connect("localhost", "root", "","project") or die(mysqli_error());
    $q = "select * from webtech where Name= '$user' and Password='$pd' ";
    $res = mysqli_query($lin,$q) ;
    
	
    if(mysqli_num_rows($res) != 0)
    {
        $row = mysqli_fetch_assoc($res);
        
        $_SESSION["uid"] = $row["u_id"];
        $_SESSION["unm"] = $row["u_name"];
        header("location: login.html");
		
    }
   else { echo "java de."; } 
    
?>