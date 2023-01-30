<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="admin_Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Auto-Shop</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form runat="server" id="form">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Links -->
  <ul class="navbar-nav">
  <li class="nav-item">
      <a class="nav-link active" href="Home.aspx">Home</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="booking.aspx">Room Booking</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Changepassword.aspx">Change Password</a>
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
    <br>
    <div class="row">    
</form>
</body>
</html>
