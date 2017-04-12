<html>
<head><title>NSB Factories page</title></head>
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
</head>
<body>

<img src="logo.png" width="10%" height="20%" alt="Not found">
<div class="pagename">
Industrial Waste Management</div>

<nav class="navbar">
<ul>
<li><a href="w1.html">Home</a></li>
<li><a href="help.html">Help</a></li>
<li><a href="about.html">About us</a></li>
<li><a href="contact.html">Contact us</a></li>
</ul>
</nav>

<table class="indus" cellpadding="15px">
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
<table class="second2" cellspacing="10px">
<tr>
<td><div class="image-frame">
		<img src="ind1.png" width="275px" height="200px"/>
		<div class="image-caption">
		<h3>Cleaning up now easier than Marco Polo</h3>
			Get locations of the dumping areas closest to your establishment.
		</div>
	</div></td>
<td><div class="image-frame">
		<img src="ind3.png" width="275px" height="200px"/>
		<div class="image-caption">
		  <h3>Hire cleaners online to manage your industrial garbage</h3>
		</div>
	</div></td></tr>
<tr>
<td><div class="image-frame">
		<img src="ind4.png" width="275px" height="200px"/>
		<div class="image-caption">
		  <h3>You produce garbage, you recycle it</h3>
		  Get to know about the legit recycling units and manage your garbage.
		</div>
	</div></td>
<td><div class="image-frame">
		<img src="ind2.png" width="275px" height="200px"/>
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