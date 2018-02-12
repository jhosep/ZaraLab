<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="Content/styleLogin.css" />
</head>
<body style="background:#384553; margin: 0; padding: 0; font-family: sans-serif; background-size:cover;">
    <form id="form1" runat="server">
    <div>
        <div class="loginBox">
            <img src="Images/Avatar.png" class="user"/>
            <h2>Log In Here</h2>
            <p class="title">Username</p>
            <asp:TextBox runat="server" ID="txtUser" placeholder="Enter username" CssClass="InputText"></asp:TextBox>
            <p class="title">Password</p>
            <asp:TextBox runat="server" ID="txtPass" placeholder="••••••••••••" type="Password" CssClass="InputPass"></asp:TextBox>
            <asp:Button runat="server" ID="btnIng" Text="Sign In" CssClass="Button"/>
        </div>
    </div>
    </form>
</body>
</html>
