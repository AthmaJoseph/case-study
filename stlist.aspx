<%@ Page Title="" Language="C#" MasterPageFile="~/twinkle/home.master" AutoEventWireup="true" CodeFile="stlist.aspx.cs" Inherits="twinkle_stlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="302px" Width="961px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
        <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
        <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
        <asp:BoundField DataField="addate" HeaderText="Admission Date" SortExpression="addate" />
        <asp:BoundField DataField="parentname" HeaderText="Parent Name" SortExpression="parentname" />
        <asp:BoundField DataField="gmail" HeaderText="Gmail" SortExpression="gmail" />
        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:studentConnectionString %>" SelectCommand="SELECT [name], [age], [dob], [gender], [address], [addate], [parentname], [gmail], [phone] FROM [studentreg]"></asp:SqlDataSource>
</asp:Content>

