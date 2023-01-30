<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="admin_Changepassword" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Auto Shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

 <form id="form1" runat="server">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="Home.aspx">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="booking.aspx">Room Booking</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="Changepassword.aspx">Change Password</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Product.aspx">Rooms</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Manageproduct.aspx">Manage Rooms</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Enquiry.aspx">Enquiry</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="services.aspx">Services</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="manageservices.aspx">Manage Services</a>
    </li>
    <li class="nav-item">
    <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>
    </li>
    
  </ul>
</nav>


<div class="container">
  <h2>Change Password</h2>
  </br> </br>
    <div class="form-group">
      <label for="email">Exisiting Password:</label>
        <asp:TextBox class="form-control"  ID="TextBox1" TextMode="Password" placeholder="Enter Exisiting Password" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="pwd">New Password:</label>
        <asp:TextBox  class="form-control" ID="TextBox2" TextMode="Password" placeholder="Enter New password" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="pwd">Confirm New Password:</label>
        <asp:TextBox  class="form-control" ID="TextBox3" TextMode="Password" placeholder="Enter New password" runat="server"></asp:TextBox>
    </div>
  <asp:Button class="btn btn-primary" ID="Button1" type="submit" runat="server" 
        Text="Change" onclick="Button1_Click" />

          <asp:Button class="btn btn-light" ID="Button2" type="submit" runat="server" 
        Text="Cancel" onclick="Button1_Click" />

        <br/>
        <br/>

    <p>
        <asp:Label ID="Label1" runat="server"  CssClass="alert alert-success" Text="" Visible="false"></asp:Label>
    </p>


</div>
</form>
</body>
</html>
