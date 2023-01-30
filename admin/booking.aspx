﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="admin_booking" %>

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
      <a class="nav-link active" href="booking.aspx">Room Booking</a>
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
    <div class="container">
        <h2>Booking</h2>
        </br> </br>
        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateDeleteButton="True"
            AutoGenerateEditButton="True" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
            PageSize="2" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="cust_name" HeaderText="Name" />
                <asp:BoundField DataField="adhar_no" HeaderText="Aadhar No." />
                <asp:BoundField DataField="mob_no" HeaderText="Mob No." />
                <asp:BoundField DataField="no_of_person" HeaderText="No of Person" />
                <asp:BoundField DataField="date_from" HeaderText="Check in date" />
                <asp:BoundField DataField="date_to" HeaderText="Check out date" />
            </Columns>
            <PagerSettings Mode="NextPreviousFirstLast" />
        </asp:GridView>
    </div>
    </form>
</body>
