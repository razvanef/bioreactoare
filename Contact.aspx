<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>PBL in educatia biotehnologica</title>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen,projection" charset="utf-8" />
	<link rel="stylesheet" href="reset.css" type="text/css" media="screen,projection" charset="utf-8" />
	<link rel="stylesheet" href="tabel.css" type="text/css" />
	<script type="text/javascript" src="scripts/jquery-2.0.3.js"></script>
	<script type="text/javascript" src="scripts/jquery.parallax-1.1.3.js"></script>
	<script type="text/javascript" src="scripts/jquery.localscroll-1.2.7-min.js"></script>
	<script type="text/javascript" src="scripts/jquery.scrollTo-1.4.2-min.js"></script>
	
	<script type="text/javascript" src="script.js"></script>
	<link rel="stylesheet" href="contact.css" type="text/css" media="all" />
</head>

<body>
	
	<div id="header">	
	<div class="head">
		<div class="mycss"><a href="Default.aspx"><img src="images/header_logo.png" id="header_logo" style="float: left;"/></a></div>
	</div>
		
	<div class="nav-container">
		<div class="nav">
			<div id="logo"><a href="Default.aspx"><img src="images/header_logo.png" height="40px" /></a></div>
			<ul>
				<li><a href="Default.aspx">Acasa</a></li>
       				<li><a href="documentatie.aspx">Documentatie</a></li>
       				<li><a href="quiz.aspx">Start quiz</a></li>
            			<li><a href="clasament.aspx">Clasamant</a></li>
            			<li><a href="contact.aspx">Contact</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="wrapper">
<div id="content">

	<h2>Contact Form</h2>
	
	<form class="form">
		
		<p class="name">
			<input type="text" name="name" id="name" placeholder="John Doe" />
			<label for="name">Name</label>
		</p>
		
		<p class="email">
			<input type="text" name="email" id="email" placeholder="mail@example.com" />
			<label for="email">Email</label>
		</p>
		
		<p class="web">
			<input type="text" name="web" id="web" placeholder="www.example.com" />
			<label for="web">Website</label>
		</p>		
	
		<p class="text">
			<textarea name="text" placeholder="Mesajul tau" /></textarea>
		</p>
		
		<p class="submit">
			<input type="submit" value="Send" />
		</p>
	</form>
	
	</div>
	
	<footer><div class="corp"><a href="Default.aspx"><img src="images/footer_logo.png" height="80px"/></a></div></footer>
	
</div>

</body>

</html>