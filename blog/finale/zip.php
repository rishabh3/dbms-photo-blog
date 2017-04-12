<?php
session_start();
extract($_POST);
 if(isset($_POST['btn-check-availability']))
    {
        $value1=$_POST['zipCode'];
       
         $a=array('560085','560072','560034','560021','560046','560078','560001','560087','560027','560038','560045');
        if(in_array($value1,$a)) {
        echo "<script>alert('You Avail Our Service');</script>";
		}
		else{echo "<script>alert('Sorry,We don't Avail to your Area');</script>";}
	}
?>

<head>
<title>Namma Swaccha Benagaluru</title>
<style>


* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none;}


.slideshow-container {
  width: 800px;
  position: relative;
  margin: auto;
 
}

.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}
.img1{width:35%;height:65px;}

.bcg{background-image:url('22.png');
     margin:10px;
       width:98%;
	   height:120px;
	   border-radius:5px;
	   }
.title{
	   color:black;
	   display:inline;
	   font-size:38;
	   text-align:left;
	   font-weight:bold;}
.slogan{ color:black;
       font-weight:bold;}
	   
.image{width:140px;
height:85px;
margin:25px;
}
.svl{margin:5px;
     background-color:white;}
.white{background-color:white;
       border:1px solid black;}
.clg{color:black; font-size:10;}
.parallax {
    /* The image used */
    background-image: url('AgiaryLocation.jpg');
	

    /* Full height */
    height: 100%;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	opacity: 0.5;
    filter: alpha(opacity=50);
}
</style>
<link rel="stylesheet" type="text/css"  href="original.html" />
</head><body>
		<div class="container_16 clearfix" id="page" >  
<header id="main-header" class="clearfix main " >
<div class="bcg">
<img src="1.png" class="image">
<h1 class="title">NAMMA SWACCHA BENGALURU<br></h1>
</div>
  

  <div class="grid_16 drop clearfix">

    <div id="action-links" class="action-links">
      <ul class="links clearfix">

      </ul>
    </div> 
    
    
  </div>

  <nav class="grid_16 basement_2 clearfix main">
    <ul class="trunk clearfix">
      <li class="branch item one  selected"><a href="w1.html" class="trunk-link">Home</a>
      </li>
      <li class="branch item two "><a href="/business/commercial-waste-and-recycling-collection.jsp" class="trunk-link">Terms  Of  Service</a>
</li>
 <li class="branch item three "><a href="/business/commercial-waste-and-recycling-collection.jsp" class="trunk-link">Help</a>
      </li>
      <li class="branch item four "><a href="/business/commercial-waste-and-recycling-collection.jsp" class="trunk-link">Contact Us</a>
      </li>
     	  
	  <li class="branch item five "><a href="/enterprise/index.jsp" class="trunk-link">Feedback</a>
      </li>
      <li class="branch item six my_account "><a href="/myaccount/authentication.do?action=showLoginPage&selectedMenuItem=MyAccount" class="trunk-link">My  Account</a>
		</li>
	</ul>
	</nav>
	</header>
	
	  <pre><h2 class="slogan"><i>       "One step forward towards cleanliness leads to a thousand forward steps for a healthy living"</i></h2></pre>

<body>

<table colspan="2">
<tr>
<td>
<div class="slideshow-container">
<div class="mySlides fade">
  <img src="11.png" width="93%" height="340px" >
</div>
<div class="mySlides fade">
  <img src="12.png" width="93%" height="340px">
</div>
<div class="mySlides fade">
  <img src="13.png" width="93%" height="340px">
</div>
<div class="mySlides fade">
  <img src="14.png" width="93%" height="340px">
</div>
<div class="mySlides fade">
  <img src="15.png" width="93%" height="340px">
  </div>
<div style="text-align:center">
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>
</td>
<td>
<aside class=" grid_5">
		
<section id="check-availability" class="check-availability grid_5 ao aside-pod-one drop_4 basement_6  white">
<div class="inner_5">
<pre><h2>  Manage your Account</h2></pre>
<pre>          <img src="calendar-small.png" width="30%" height="30%"><h3>  View Pickup Schedules</h3></pre>
<input type="hidden" id="hidden-check-availability" name="hiddenZipCode" value="" />
<select id="select-check-availability" name="subGeoCode" class="grid_4 alpha required hide"></select>
<div class="spinner" class="hide"></div>
<input type="submit" id="btn-check-availability" value="LOGIN" class="grid_4 alpha btn wm drop_2 no-disable" /><pre>



</pre><h3>New Customer? REGISTER</h3>
</form>
</div>
</section>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
 </td>


    

<tr>
<td>
<section class="landing-page-content grid_11 ao" >
<ul class="products">
  <li class="grid_5 alpha">
    <h2><a href="/residential/curbside-waste-pickup.jsp" class="waste-pickup icon-medium">Household</a></h2>
    <p>Enjoy safe, reliable waste collection services provided by the bengaluru's leading environmental services provider.</p>
  </li>
   <li class="grid_5 alpha">
  <h2><a href="/residential/medical-waste.jsp" class="medical-waste icon-medium">Medical Waste</a></h2>
    <p>Safely and easily protect your family and your community from potential needle stick injuries by using our mail-in medical waste disposal system.</p>
  </li>
  <li class="grid_5 alpha">
    <h2><a href="/residential/curbside-waste-pickup.jsp" class="waste-pickup icon-medium">Offices and Stores</a></h2>
    <p>Enjoy safe, reliable waste collection services provided by the bengaluru's leading environmental services provider.</p>
  </li>
  <li class="grid_5 alpha">
    <h2><a href="/residential/curbside-waste-pickup.jsp" class="waste-pickup icon-medium">Factories</a></h2>
    <p>Enjoy safe, reliable waste collection services provided by the bengaluru's leading environmental services provider.</p>
  </li>
    
  <li class="grid_5 alpha">
    <h2><a href="/residential/additional-waste-services.jsp" class="other-services icon-medium">Other wastes</a></h2>
    <p>We provide a wide range of waste and recycling services to help you remove materials that don't easily go out to the curb or into the recycling bin.</p>
  </li>
</ul>

</section>
</td>



 <td> 
		
<section id="check-availability" class="check-availability grid_5 ao drop_4 basement_6 paint-neutral">
<div class="inner_5">
<h2>Enter ZIP or Postal Code to check availability in your area</h2>
<form method="post"  action="zip.php">
  <input type="text"  name="zipCode" value=""
 class="grid_4 alpha postalcode required focus" />

  <input type="submit" name="btn-check-availability" value="Check Availability" class="grid_4 alpha btn wm drop_2 no-disable" />
</form>
</div>
</section><br>
<img src="blog.png" width="100%" height="50%"/>
</td>
</tr>
</table>
<br>
<br>
<br>
<br>
<div id="footer" class="lmn">
<table><tr><td>
      
        
         <h2>&copy; 2016 Namma Swachha Bengaluru,Inc.All Rights Reserved</h2></td>
       <td> <div class="abc"><img src="share.png" width="300px" height="90px"/></div></div></td>
	   </tr>
	   </table>

	</div>

</body></html> 

