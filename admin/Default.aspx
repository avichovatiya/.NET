<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Auto-shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>AVI's PALACE</h2>
  </br> </br>
  <form id="form2" runat="server">
    <div class="form-group">
      <label for="email">Username:</label>
        <asp:TextBox class="form-control"  ID="TextBox1" placeholder="Enter username" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
        <asp:TextBox  class="form-control" ID="TextBox2" TextMode="password" placeholder="Enter password" runat="server"></asp:TextBox>
    </div>
        <asp:Button class="btn btn-primary" ID="Button1" type="submit" runat="server" 
        Text="LOGIN" onclick="Button1_Click" />

        <asp:Button class="btn btn-light" ID="Button2" type="submit" runat="server" 
        Text="Cancel" onclick="Button1_Click" />

    <br />
    <br />
    <p>
        <asp:Label ID="Label1" runat="server" CssClass="alert alert-danger" Text="" Visible="false"></asp:Label>

    </p>
  </form>
</div>

    

</body>
</html>
