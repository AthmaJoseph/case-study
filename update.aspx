<%@ Page Title="" Language="C#" MasterPageFile="~/twinkle/parent.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="twinkle_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 173px;
        }
        .auto-style8 {
            width: 159px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%;">
        <tr>
            <td class="auto-style8">Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="166px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Address</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="166px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Phone</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Height="19px" Width="166px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Invalid " ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Gmail</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Height="19px" Width="166px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="UPDATE" />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table><img src="images/parentupdate.jpg" />
         
</asp:Content>

