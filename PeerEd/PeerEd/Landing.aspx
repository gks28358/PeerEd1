﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="PeerEd.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title> PeerEd</title>

    <style type="text/css">
        /* Header/logo Title */
        .pageHeader {
          padding: 80px;
          text-align: center;
          background: #1abc9c;
          color: white;
        }

        /* Increase the font size of the heading */
        .pageHeader h1 {
          font-size: 40px;
        }

        /* Style the top navigation bar */
        .navbar {
          overflow: hidden;
          background-color: #333;
        }

        /* Style the navigation bar */
        .navbar h2 {
          float: left;
          display: block;
          color: white;
          text-align: center;
          padding: 14px 20px;
          text-decoration: none;
        }

        /* Right-aligned navbar item */
        .navbar h2.right  {
          float: right;
        }

        /* drop down lists */
        .dropDown  {
          float: right;
          display: block;
          padding: 4px 8px;
          text-decoration: none;
          vertical-align: middle;
        }

    </style>

</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Application name</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    <form id="form1" runat="server">
        <div class="pageHeader">
            <h1>PeerEd</h1>
            <p>A website created by students for students.</p>
        </div>

        <div class="navbar">
            <h2>Videos</h2>

            <asp:DropDownList ID="ddlTopic" runat="server" AutoPostBack="true" CssClass="dropDown" OnSelectedIndexChanged="ddlTopic_SelectedIndexChanged">
                <asp:ListItem Text="Algebra" Value="Algebra" />
                <asp:ListItem Text="Business Calculus" Value="Business Calculus" />
            </asp:DropDownList>
            <h2 class="right">Topic:</h2>
            
            <asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="true" CssClass="dropDown" OnSelectedIndexChanged="ddlSubject_SelectedIndexChanged">
                <asp:ListItem Text="Math" Value="Math" />
                <asp:ListItem Text="Computer Science" Value="Computer Science" />
            </asp:DropDownList>
            <h2 class="right">Subject:</h2>        
        </div>

        <div class="main">
            <asp:GridView ID="GridView1" runat="server"> </asp:GridView> 
        </div>
    </form>

</body>
</html>
