<%@ Page Title="" Language="C#" MasterPageFile="~/twinkle/home.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="twinkle_home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%-- Add content controls here --%>

  <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
    .auto-style3 {
        width: 530px;
    }
</style>
      </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><head />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> <head/>






   <table class="auto-style1" align="center">  
                <tr>  
                    <td colspan="2" ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PARENT REGISTRATION FORM</td>  
  
               </tr>
             <tr>  
                    <td colspan="2" "> </td>  
  
               </tr>  
             <tr>  
                    <td colspan="2" "> </td>  
  
               </tr>
             <tr>  
                    <td colspan="2" "> </td>  
  
               </tr>
             <tr>  
                    <td colspan="2" "> </td>  
  
               </tr>
                <tr>  
                    <td>Student Name :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" class="auto-style1"></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator> 
                    </td>  
  
               </tr>
              <tr>  
                    <td>Age :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox2" runat="server" class="auto-style1" MaxLength="1"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age between 1-5" ForeColor="#CC00FF" MaximumValue="5" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    </td>  
  
               </tr> 
              <tr>  
                    <td>DOB :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox3" runat="server" class="auto-style1" TextMode="Date"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr> 
              <tr>  
                    <td>Gender :</td>  
                    <td class="auto-style3">  
                        <asp:RadioButton ID="rbMale" Text="Male" runat="server" GroupName="gender"/>  
                          <asp:RadioButton ID="rbFemale" Text="Female" runat="server" GroupName="gender"/>     
                    
                          
                    </td> 
                  </tr>
                  <tr>  
                    <td>Address :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr> 
                  <tr>  
                    <td>Admission Date :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox5" runat="server" class="auto-style1" TextMode="Date"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr>
                  <tr>  
                    <td>Parent Name :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr>
                   <tr>  
                    <td>Gmail :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Invalid  Email ID" ForeColor="#9900FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>  
  
               </tr>
  
                <tr>  
                    <td>Phone :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="*Invalid  Phone Number" ForeColor="#9900FF" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>  
  
               </tr>
              <tr>  
                    <td>Username :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr>
              <tr>  
                    <td>Password :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                        <ajaxToolkit:PasswordStrength ID="TextBox10_PasswordStrength" runat="server" BehaviorID="TextBox10_PasswordStrength" TargetControlID="TextBox10" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>  
  
               </tr>
              <tr>  
                    <td>Conform Password :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox11" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox11" ControlToValidate="TextBox10" ErrorMessage="Password not matched" ForeColor="#CC00FF"></asp:CompareValidator>
                    </td>  
  
               </tr>
                  
              <tr>  
                    <td>&nbsp;</td>  
                    <td class="auto-style3">  
                        &nbsp;</td>  
  
               </tr>
                  
              <tr>  
                    <td>&nbsp;</td>  
                    <td class="auto-style3">  
                        &nbsp;</td>  
  
               </tr>
                  
                <tr>  
                    <td align="center">  
                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" BackColor="#FFE145" ForeColor="Black" Height="39px" Width="104px" />  
                     

                    </td>  
                    <td align="center">  
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </td>  
                </tr>  
            </table>  


        
      
</asp:Content>


     
