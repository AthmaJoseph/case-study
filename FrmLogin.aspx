<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FrmLogin.aspx.cs" Inherits="twinkle_FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <p style="height: 299px; width: 916px; margin-top: 2px">
        <img src="images/adminlog.jpg" style="height: 304px; width: 693px" /></p>
    <form id="form1" runat="server" style="padding: 5px; font-family: Arial; color: #1c1c1c;">
 <div>
 <h2>
     LOGIN FORM<a href="index.aspx"><img src="images/home.jpg" style="height: 62px; width: 67px; float: right" /></a></h2>
 <hr />
 Username : &nbsp;&nbsp;
 <asp:TextBox runat="server" ID="txtusername" />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
 <br />
 <br />
 Password : &nbsp;&nbsp;&nbsp;
 <asp:TextBox runat="server" ID="txtpassword" TextMode="Password" />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
     <br />
     <br />
 <br />
 <asp:Button runat="server" Text="Login" ID="btnLogin" OnClick="btnLogin_Click" />&nbsp;&nbsp;
 <asp:Button runat="server" Text="Clear" ID="btnClear" OnClick="btnClear_Click" />
 <br />
 <br />
 <asp:Label runat="server" ID="lblMessage" />
 </div>
 </form>
</body>
</html>
