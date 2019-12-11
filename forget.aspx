<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center">Forget your Password</h1>
    <h5 align="center">Don't worry We help for forget password</h5>
    <table align="center" frame="vsides" bgcolor="White">
    <tr>
    <td></td>
    </tr>
    <tr>
    <td>
    Gmail
    </td>
    <td>
    <asp:TextBox ID="forgmail" runat="server" Width="236px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center" colspan="2">
    <h4> OR </h4>
    </td>
    <td><asp:Button ID="forbutton" runat="server" Text="Check Userid" onclick="forbutton_Click" /></td>
    </tr>
    <tr>
    <td>
    Pincode No
    </td>
    <td>
     <asp:TextBox ID="forpin" runat="server" Width="236px"></asp:TextBox>
    </td>
    </tr>
    <tr>
        <td align="center" colspan="3" style="color: #0000FF" class="style16">
        <asp:Label ID="heading" runat="server" Text="Enter your new password" Visible="false"></asp:Label>
        </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="forl" runat="server"></asp:Label>

    <asp:Label ID="Name" runat="server"></asp:Label>

    </td>
   <td> 
    <asp:TextBox ID="forpass" runat="server" TextMode="Password" Visible="false"></asp:TextBox>
    </td>
    </tr>
    
       <tr>
            <td>
                <asp:Label ID="lreenter" runat="server" Text="Re-enter Password" Visible="false"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="tbreepass" runat="server" TextMode="Password" Visible="false"></asp:TextBox>
            
                <asp:CompareValidator ID="cvrepassword" runat="server" ControlToValidate="tbreepass" ControlToCompare="forpass" Operator="Equal" Type="String" ErrorMessage="Please Enter Same Password"></asp:CompareValidator>
            </td>
        </tr>
    <tr>
    <td>
    <asp:Button ID="forconform" runat="server" Text="Forget Password" onclick="forconform_Click" Visible="false"/>
    </td>
    </tr>
    <tr>
    <td colspan="3" align="center">
    <asp:label ID="newpass" runat="server"></asp:label>
    </td>
    </tr>
    </table>
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

