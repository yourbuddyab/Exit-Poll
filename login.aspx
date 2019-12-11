<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

  
    <style type="text/css">
        .style17
        {
            width: 397px;
        }
    </style>

    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height:410px; width:512px;" align="center">
<tr>
            <td align="center" colspan="3" class="style2">
            <h2 style="text-decoration: underline">__________Login__________ </h2>
             
            </td>
            </tr>
        <tr>
            <td align="justify" class="style17">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            User Name
            </td>
        </tr> 
        <tr>
            <td align="right" class="style17">
                <asp:TextBox ID="tbUser" runat="server" Width="283px" Height="31px"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="rqvtbUser" runat="server" ControlToValidate="tbUser" ErrorMessage="Enter your User Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td align="justify" class="style17">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Password
            </td>
            </tr>
        <tr>
            <td align="right" class="style17">
                <asp:TextBox ID="tbpassword" runat="server" Width="283px" Height="31px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvpasstb" runat="server" ControlToValidate="tbpassword" ErrorMessage="Enter your Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
         <td align="center" class="style17">
             <asp:CheckBox ID="cbPassword" runat="server" Text="Remember me"  />
             <asp:Button ID="blogin" runat="server" Text="Login" BorderStyle="Ridge" 
                 BackColor="AliceBlue" Height="32px" Width="86px" onclick="blogin_Click"/>
           
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center" class="style17">
            <asp:Label ID="idinfo" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>
        </td>
        </tr>
        <tr><td colspan="2" align="center" >
         First time here ??                
                <asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="~/Register.aspx"><img src="pics/register-to-vote.jpg" style="height:125px; width:427px" 
                    align="middle"/></asp:HyperLink>
                </td></tr></table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <asp:Image ID="Image1" runat="server" Height="461px" 
    ImageUrl="~/pics/cast .JPG" Width="220px" />
</asp:Content>


