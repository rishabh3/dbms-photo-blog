<html>
<head><title>NSB Office page</title></head>
	<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="countdown.js"></script>
	<script src="http://code.jquery.com/jquery-2.1.1.js"></script>
<script>
$(document).ready(function() {
    $('.image-frame').hover(function(){
		$('.image-caption',this).slideToggle('slow');
	}, function(){
		$('.image-caption',this).slideToggle('slow');
    });
});
</script>
<link rel="stylesheet" type="text/css" href="styling.css" />

<style>
.parallax {
    /* The image used */
    background-image: url('offbg1.png');
	

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
<div class="pagename">Waste Management at Institutions, Stores and Offices</div>

<nav class="navbar">
<ul>
<li><a href="w1.html">Home</a></li>
<li><a href="help.html">Help</a></li>
<li><a href="about.html">About us</a></li>
<li><a href="contact.html">Contact us</a></li>
</ul>
</nav>

<table class="office" cellpadding="15px">
	<tr><td>
	<div class="login">
  <form action="process_login.php">
    <label for="uname">Username</label><br>
    <input type="text" id="unm" placeholder="Username"><br>
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
<table class="second2" cellspacing="10px">
<tr>
<td><div class="image-frame">
		<img src="off.png" width="275px" height="200px"/>
		<div class="image-caption">
		<h3>Waste bins at Toshiba</h3>
		</div>
	</div></td>
<td><div class="image-frame">
		<img src="off2.png" width="275px" height="200px"/>
		<div class="image-caption">
		  <h3>Along with your work productivity, do take care about the city around you.</h3>
			We will help you in this direction. Sign up today!
		</div>
	</div></td></tr>
<tr>
<td><div class="image-frame">
		<img src="off4.png" width="275px" height="200px"/>
		<div class="image-caption">
		  <h3>You produce garbage, you recycle it</h3>
		  Get to know about the legit recycling units and manage your garbage.
		</div>
	</div></td>
<td><div class="image-frame">
		<img src="off3.png" width="275px" height="200px"/>
		<div class="image-caption">
		  <h3>Create your own account and manage garbage at a fair price</h3>
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