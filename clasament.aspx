
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns:fb="http://ogp.me/ns/fb#" xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">

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
	
</head>

<body>


    <form id="form1" runat="server">


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

<div id="content">
	<div id="clasam">Clasament utilizatori:</div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="nume" HeaderText="Nume" SortExpression="nume" />
                    <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                    <asp:BoundField DataField="punctaj" HeaderText="Punctaj" SortExpression="punctaj" />
                </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [nume], [email], [punctaj] FROM [utilizatori]"></asp:SqlDataSource>
</div>

</form>

</body>

</html>