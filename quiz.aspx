﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quiz.aspx.cs" Inherits="quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Utilizarea modelului Project Based Learning (PBL) in educatia biotehnologica</title>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen,projection" charset="utf-8" />
	<link rel="stylesheet" href="reset.css" type="text/css" media="screen,projection" charset="utf-8" />
	<link rel="stylesheet" href="tabel.css" type="text/css" />
	<script type="text/javascript" src="scripts/jquery-2.0.3.js"></script>
	<script type="text/javascript" src="scripts/jquery.parallax-1.1.3.js"></script>
	<script type="text/javascript" src="scripts/jquery.localscroll-1.2.7-min.js"></script>
	<script type="text/javascript" src="scripts/jquery.scrollTo-1.4.2-min.js"></script>
    <script type="text/javascript" src="scripts/jquery.js"></script>
    <script type="text/javascript" src="scripts/js.js"></script>
	<script type="text/javascript" src="scripts/js2.js"></script>
	
	<script type="text/javascript" src="script.js"></script>
    
    <style type="text/css">
        .auto-style2 {
            width: 128px;
            height: 49px;
        }
        .auto-style3 {
            height: 49px;
        }
        .auto-style4 {
            width: 128px;
            height: 51px;
        }
        .auto-style5 {
            height: 51px;
        }
    </style>
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
            <asp:Panel ID="Panel1" runat="server">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Size="20px" Text="Va rog introduceti nume si email-ul dumneavoastra"></asp:Label>
                <br />
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style2">Numele:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="textBoxNume" runat="server" Width="293px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Adresa de email:</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="textBoxEmail" runat="server" Width="292px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="buttonStart" runat="server" OnClick="buttonStart_Click" Text="Start" Width="106px" />
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                <div style="display:block;"></div>
                <asp:Label ID="corect" runat="server" Text="Label" Visible="False"></asp:Label>
                <br />
                <br />
                <asp:Label ID="label16" runat="server" Font-Size="20px" Text="INTREBAREA"></asp:Label>
                <div style="float:right;">
                    <asp:Label ID="label17" runat="server" Font-Size="18px" Text="Ati obtinut"></asp:Label>
                    &nbsp;<asp:Label ID="nrpuncteLabel" runat="server" Font-Size="18px" Text="0"></asp:Label>
                    &nbsp;<asp:Label ID="label18" runat="server" Font-Size="18px" Text="pana acum"></asp:Label>
                    &nbsp;</div>
                &nbsp;<asp:Label ID="nreIntrebareLabel" runat="server" Font-Size="20px" Text="1"></asp:Label>
                &nbsp;<asp:Label ID="label19" runat="server" Font-Size="20px" Text="/ 11"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Panel ID="simpluPanel" runat="server" Visible="False">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="intrebareTextBox" runat="server" Font-Size="16px" Text="Care este legea lui Monode?"></asp:Label>
                    <asp:RadioButtonList ID="raspunsuriMultRadio" runat="server" CellPadding="10" CellSpacing="10" Width="834px">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem Value="4"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:Panel>
                <asp:Panel ID="multipluPanel" runat="server" Visible="False">
                    <br />
                    <asp:Label ID="intrebareTextBox0" runat="server" Font-Size="16px" Text="Care este legea lui Monode?"></asp:Label>
                    <br />
                    <br />
                    <asp:CheckBox ID="multi1" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi2" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi3" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi4" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi5" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi6" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi7" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi8" runat="server" />
                    <br />
                    <asp:CheckBox ID="multi9" runat="server" />
                    <br />
                </asp:Panel>
                <br />
                <asp:Button ID="raspundeButton" runat="server" OnClick="raspundeButton_Click" Text="RASPUNDE" Width="121px" />
                <br />
                <br />
                &nbsp;<br />
                    <script>
                        function MyFunction() {
                            
                            if ($("#hint").css("display") == "none") {
                                $("#hint").css("display", "block");
                            }
                            else {
                                $("#hint").css("display", "none");
                            }
                        }
                </script>
                <input type="button" name="hintBtn" id="Button2" onclick="MyFunction()" value="Hint"/>
                <br />
                <div id="hint" style="display:none;"><asp:Label ID="hintLabel" runat="server"></asp:Label></div>
                <br />
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="finalPanel" runat="server" Visible="False">
                <asp:Label ID="Final" runat="server" Text="Ati terminat testul. Pentru a vedea pe ce loc v-ati clasat click &lt;a href=&quot;index.html#clasament&quot;&gt;aici&lt;/a&gt;" Font-Size="20px"></asp:Label>
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="view" runat="server">
            </asp:Panel>
            <br />
       

    </div>

    </form>
    </body>
</html>
