<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

	<!-- booking --> 
<head>
	<title>Home Booking Form Responsive Widget Template :: W3layouts</title>
		<!-- Meta tag Keywords -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Home Booking Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
			<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
			function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
	<link href="css/style1.css" rel="stylesheet" type="text/css" media="all">
<!-- //css files -->

<!-- online-fonts -->
	<link href="//fonts.googleapis.com/css?family=Ubuntu+Condensed&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext" rel="stylesheet">
<!--//online-fonts -->
</head>
<body><form id="form1" runat="server">
	<div class="header">
		<h1>Room Booking</h1>
	</div>

	<div class="w3-main">
<!-- Main -->
	<div class="about-bottom">
		<div class="w3l_about_bottom_right two">
			<h2 class="tittle">Book your room</h2>
			<div class="book-form">

			    
					<div class="form-date-w3-agileits">
						<label> Name :</label>
                        <asp:TextBox ID="TextBox1"  placeholder="Your name" runat="server" required=""></asp:TextBox>						
					</div>
					<div class="form-date-w3-agileits second-agile">
						<label> Phone No. :</label>
                        <asp:TextBox ID="TextBox2"  placeholder="Phone No." runat="server" required=""></asp:TextBox>
					</div>
                    <div class="form-date-w3-agileits second-agile">
						<label> Aadhar No. :</label>
                        <asp:TextBox ID="TextBox3"  placeholder="Aadhar No." runat="server" required=""></asp:TextBox>
					</div>
                    <div class="form-date-w3-agileits second-agile">
						<label>
                        Check In Date :</label>
                        <asp:TextBox ID="TextBox5" TextMode="Date" runat="server" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required=""></asp:TextBox>
					</div>
					<div class="form-date-w3-agileits">
						<label> Check Out Date :</label>
						<asp:TextBox ID="TextBox6" TextMode="Date" runat="server" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required=""></asp:TextBox>
									
					</div>
					<div class="form-date-w3-agileits">
							<label> No.of Guests :</label><asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
					</div>
					<div class="make wow shake">
						  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Send Request"  CssClass="button"
                              onclick="Button1_Click" Width="170px" />
					</div>
				
			</div>

		</div>
		<div class="w3l_about_bottom_left">
			
			<img src="images/real1.jpg" alt="" class="img-responsive" />
		</div>
		
		<div class="clear"> </div>
	</div>
</div>
<!-- //Main -->

<!-- footer -->
<div class="footer-w3l">
	<p>&copy; Avi's Hotel Room Booking Form. Designed by Avi Chovatiya</a></p>
</div>
<!-- //footer -->

	<!-- js-scripts-->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
			<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
				  <script>
				      $(function () {
				          $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
				      });
				  </script>
			<!-- //Calendar -->
	<!-- //js-scripts-->
	</form>
</body>
	<!-- //booking -->
