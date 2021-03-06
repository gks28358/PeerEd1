<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLand.aspx.cs" Inherits="PeerEd.StudentLand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>PeerEd Landing</title>

    <style type="text/css">
        * {
            box-sizing: border-box;
        }

        .col-1 {
            width: 8.33%;
        }

        .col-2 {
            width: 16.66%;
        }

        .col-3 {
            width: 25%;
        }

        .col-4 {
            width: 33.33%;
        }

        .col-5 {
            width: 41.66%;
        }

        .col-6 {
            width: 50%;
        }

        .col-7 {
            width: 58.33%;
        }

        .col-8 {
            width: 66.66%;
        }

        .col-9 {
            width: 75%;
        }

        .col-10 {
            width: 83.33%;
        }

        .col-11 {
            width: 91.66%;
        }

        .col-12 {
            width: 100%;
        }
        [class*="col-"] {
            float: left;
            padding: 15px;
            border: 0px;
        }
        /* Header/logo Title */
        .pageHeader {
            padding: 80px;
            text-align: center;
            background: #8C2D3B;
            background: #e2e2e2
            /*  min-height: 100%;
            background-image: url(logo.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;*/
        }

            /* Increase the font size of the heading */
            .pageHeader h1 {
                font-size: 40px;
                color: #bf2307;
            }

            .pageHeader h2 {
                font-size: 30px;
                color: #bf2307;
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
                .navbar h2.right {
                    float: right;
                }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
            
        .navbar-default {
            background-image: -webkit-linear-gradient(top, #ffffff 0%, #f8f8f8 100%);
            background-image: -o-linear-gradient(top, #ffffff 0%, #f8f8f8 100%);
            background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff), to(#f8f8f8));
            background-image: linear-gradient(to bottom, #ffffff 0%, #f8f8f8 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff8f8f8', GradientType=0);
            background-repeat: repeat-x;
            filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);
        }

            .navbar-default .navbar-nav > .open > a,
            .navbar-default .navbar-nav > .active > a {
                background-image: -webkit-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
                background-image: -o-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);
                background-image: -webkit-gradient(linear, left top, left bottom, from(#dbdbdb), to(#e2e2e2));
                background-image: linear-gradient(to bottom, #dbdbdb 0%, #e2e2e2 100%);
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffdbdbdb', endColorstr='#ffe2e2e2', GradientType=0);
                background-repeat: repeat-x;
                -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);
                box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);
            }

        .navbar-brand,
        .navbar-nav > li > a {
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.25);
        }
    </style>
    
    <script>
        
        function openPopupWindow() {  
            //Open the popup page  
            window.open('SignUp.aspx', 'SignUp', 'resizable=no,width=400,height=400');  
        }  
    </script> 

</head>
<body>
    <form id="body" runat="server">
        <div class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <h2><a class="navbar-brand" runat="server" href="StudentLand.aspx">PeerEd</a></h2>
                </div>
                <div class="navbar, right">
                    <div class="login-container">
                            <asp:textbox runat="server" ID="textBoxUsername" placeholder="Username"/>
                            <asp:requiredfieldvalidator id="rfvUsername" runat="server" errormessage="*" ForeColor="Red" controltovalidate="textBoxUsername"></asp:requiredfieldvalidator>
                            <asp:textbox runat="server" ID="textBoxPassword" placeholder="Password" TextMode="Password"/>
                            <asp:requiredfieldvalidator id="rfvPassword" runat="server" errormessage="*" ForeColor="Red" controltovalidate="textBoxPassword"></asp:requiredfieldvalidator>
                            <asp:Button runat="server" ID="btnLogin" Text="Login" onclick="btnLogin_Click"/>
                            <asp:Button ID="btnSignUp" CssClass="right" runat="server" Text="Sign Up" OnClientClick="openPopupWindow();return false;" />
                            
                    </div>
                </div>
                <div>
                    <asp:Label runat="server" ID="lblLoginMessage" />
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-9">
                <div class="pageHeader">
                     <h1>PeerEd</h1>
                    <h2>A website for students to upload, view and share educational videos.</h2>
                    <a class="navbar-brand" runat="server" href="AboutUs.aspx"><h2>Learn More</h2></a>
                </div>
            </div>
            <div class="col-3">
                <img src="logo.jpg" />
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-4">
                    <h2>Watch to Learn</h2>
                    <p>
                        PeerEd lets you Watch Videos, choosing peer made videos from a library.
                    </p>
                </div>
                <div class="col-4">
                    <h2>Upload Your Own Learning Videos</h2>
                    <p>
                        PeerEd lets you upload your videos explaining Math and Computer Science to others.
                    </p>
                </div>
                <div class="col-4">
                    <h2>Share Your Videos with Others</h2>
                    <p>
                        As an Acadmic Advisor, you can share playlists of learning videos with others.
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
