<?php


?>

<html>
<head><title>NSB Medical page</title></head>
	<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="countdown.js"></script>
	<script src="http://code.jquery.com/jquery-2.1.1.js"></script>
<script>
$(document).ready(function() {
    $('.image-frame1').hover(function(){
		$('.image-caption1',this).slideToggle('slow');
	}, function(){
		$('.image-caption1',this).slideToggle('slow');
    });
});
</script>
<link rel="stylesheet" type="text/css" href="styling.css" />

<style>
.parallax {
    /* The image used */
    background-image: url('medbg.png');
	

    /* Full height */
    height: 500px;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	
}
</style>

</head>

<body class="parallax">

<img src="logo.png" width="10%" height="20%" alt="Not found">
<div class="pagename">
Medical Waste Management</div>

<nav class="navbar">
<ul>
<li><a href="w1.html">Home</a></li>
<li><a href="help.html">Help</a></li>
<li><a href="about.html">About us</a></li>
<li><a href="contact.html">Contact us</a></li>
</ul>
</nav>

<table class="medi" cellpadding="15px">
	<tr><td>
	<div class="login">
  <form action="process_login.php" method="post">
    <label for="uname">Username</label><br>
    <input type="text" name="unm" placeholder="Username"><br>
	<label for="pword">Password</label><br>
    <input type="text" id="pwd" placeholder="Password"><br>
    <input type="submit" value="Submit">
   </form>
	</div>
	</td>
	</tr>
	<tr><td>
	<div class="check">
	<form action="zip.php" method="post">
		<label for="acode">Area Code</label><br>
		<input type="text" name="zipCode" value="" placeholder="Areacode"><br>
		<input type="submit" value="Submit">
	</form>
	</div>
	
		</td></tr>
</table>
<table class="second2" cellspacing="40px">
<tr><td><div class="image-frame1">
		<img src="med5.png" width="400px" height="80px"/>
		<div class="image-caption1">
				Make sure you keep the place of healing clean enough. Register today.
		</div>
	</div></td></tr>
<tr><td><div class="image-frame1">
		<img src="log.png" width="400px" height="80px"/>
		<div class="image-caption1">
			Good hosplitals always keep clean their environment.
		</div>
	</div></td></tr>
<tr><td><div class="image-frame1">
		<img src="med2.png" width="400px" height="80px"/>
		<div class="image-caption1">
		  The medical garbage is completely recyclable. Join hands with us. Recycle.
		</div>
	</div></td></tr>
<tr><td><div class="image-frame1">
		<img src="med4.png" width="400px" height="80px"/>
		<div class="image-caption1">
			Dear Doctors, Keep calm and keep clean.
		</div>
	</div></td></tr>
</table>

<span style="position:absolute;top:650px;left:8%;font-family:'Cooper Black';color:green;">
The BBMP garbage vehicle will reach your locality in &nbsp &nbsp
<input type="text" id="timer">
	<script type="text/javascript">
		timer = new countdown();
		timer.init();
	</script>
</span>
</body>
</html>