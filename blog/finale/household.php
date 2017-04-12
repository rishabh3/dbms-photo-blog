<html>
<head><title>NSB Household page</title></head>
	<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="countdown.js"></script>
<link rel="stylesheet" type="text/css" href="styling.css" />
<style>
.parallax {
    /* The image used */
    background-image: url('holdbg.png');
	

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
Household Waste Management
</div>
<nav class="navbar">
<ul>
<li><a href="w1.html">Home</a></li>
<li><a href="help.html">Help</a></li>
<li><a href="about.html">About us</a></li>
<li><a href="contact.html">Contact us</a></li>
</ul>
</nav>

<table class="outer" cellpadding="15px">
	<tr><td>
	<div class="login">
  <form action="process_login.php" method="post">
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
<table class="second" cellspacing="15px">
<tr>
<td><a href="medical.php" style="text-decoration: none;"><h3 style="color:green;font-size:25px;">
Medical Waste</h3> Don't let life saving centers like hospitals and laboratories, become a harmful waste generator. Clean up the mess!</a></td>
<td><a href="factories.php" style="text-decoration: none;"><h3 style="color:green;font-size:25px;">
Industrial Waste</h3> Industries improve the standards of living. Let's keep it that way, by cleaning up the garbage.</a></td>
</tr>
<tr>
<td><a href="offices.php" style="text-decoration: none;"><h3 style="color:green;font-size:25px;">
Offices and Stores</h3>It is our obligation to keep all our working places clean. After all, they are just preferred after our homes.</a></td>
<td><a href="others.php" style="text-decoration: none;"><h3 style="color:green;font-size:25px;">
Other wastes</h3> Let's clean up garbage in the whole country, starting from our Capital!</a></td>
</tr>
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