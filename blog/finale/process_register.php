<?php
  session_start();
  extract($_POST);
    if(empty($_POST)) { exit; }
    
    $errors = array();
    
    //-- General validation -------------------------------
    if(empty($_POST["nm"]))
        $errors[] = "Name was empty.";
    if(empty($_POST["eml"]))
        $errors[] = "Email was empty.";
    if(empty($_POST["pwd"]))
        $errors[] = "Password was empty.";
    if(empty($_POST["cpwd"]))
        $errors[] = "Confirm Password was empty.";
    if($_POST["pwd"] != $_POST["cpwd"])
        $errors[] = "Password mismatch.";
    if(strlen($_POST["pwd"]) < 5)
        $errors[] = "Password must be 5+ chars.";
    if(empty($_POST["add"]))
        $errors[] = "Address you was empty.";
    if(empty($_POST["ph"]))
		$errors[]="Phone Number was empty.";
	if(empty($_POST["zip"]))
		$errors[]="Zip Code was empty.";
	
    //-- file validation ----------------------------------
    
        
    //-- Show error if any --------------------------------
    
    if( ! empty($errors))
    {
        echo "<b>Error(s):</b><hr />";
        foreach($errors as $e) {
            echo "<li>".$e."</li>";
        }
        exit;
    }
    
    
    $lin = mysqli_connect("localhost", "root", "","project") or die(mysqli_error());
	$nam = $_POST["nm"];
	$emai= $_POST["eml"];
	$pass= $_POST["pwd"];
	$cpass = $_POST["cpwd"];
	$phn= $_POST["ph"];
	$addr= $_POST["add"];
	$zp= $_POST["zip"];
    $q = "INSERT INTO webtech VALUES('$nam','$emai','$pass','$cpass',$phn,'$addr',$zp)";
  
    mysqli_query($lin, $q) or die(mysqli_error());
    
    

?>