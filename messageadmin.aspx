<%@ Page Title="" Language="C#" MasterPageFile="~/twinkle/home.master" AutoEventWireup="true" CodeFile="messageadmin.aspx.cs" Inherits="twinkle_messageadmin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><head /><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <table class="auto-style1">
                <tr>
                    <td><strong>Date</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="205px" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><strong>Message</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="73px" TextMode="MultiLine" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
                <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" style="text-align: center; background-color: #FF9900" Text="Submit" Width="144px" />


    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>



</asp:Content>


