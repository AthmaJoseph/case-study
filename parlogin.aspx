<%@ Page Language="C#" AutoEventWireup="true" CodeFile="parlogin.aspx.cs" Inherits="twinkle_parlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <p style="height: 299px; width: 916px; margin-top: 2px">
        <img src="images/parent.jpg" style="height: 304px; width: 693px" /></p>

 <form id="form1" runat="server" style="padding: 5px; font-family: Arial; color: #1c1c1c;">
 <div>
 <h2>
     &nbsp; Parent
     Login<a href="index.aspx"><img src="images/home.jpg" style="height: 62px; width: 67px; float: right" /></a></h2>
 <hr /><br /><br /><br /><br />
 Username : &nbsp;&nbsp;
 <asp:TextBox runat="server" ID="txtusername" />
 <br />
 <br />
 Password : &nbsp;&nbsp;&nbsp;
 <asp:TextBox runat="server" ID="txtpassword" TextMode="Password" />
 <br /><br /><br />
 <asp:Button runat="server" Text="Login" ID="btnLogin" OnClick="btnLogin_Click" />&nbsp;&nbsp;
 <asp:Button runat="server" Text="Clear" ID="btnClear" OnClick="btnClear_Click" />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
 <br />
 <br />
 <asp:Label runat="server" ID="lblMessage" ForeColor="Red" />
 </div>
 </form>
</body>
</html>
