<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="admin.aspx.cs" Inherits="admin" %>
<asp:Content ID="admin" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <h1 align="center">Admin Log In</h1>
    <table align="center" style="height: 238px; width: 402px;">
        <tr>
            <td align="center" colspan="3">
                <asp:Label ID="getresult" runat="server" Text="Admin first enter your keywords after get result"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                ARJUN
            </td>
            <td>
                <asp:TextBox ID="tbkeywordab" runat="server" TextMode="Password" Height="29px" 
                    Width="161px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                ANKUR
            </td>
            <td>
                <asp:TextBox ID="tbkeywordag" runat="server" TextMode="Password" Height="29px" 
                    Width="161px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="codeweb" runat="server"></asp:Label>
            
            </td>
            <td>
            
                <asp:TextBox ID="tbcodeweb" runat="server" Width="161px"></asp:TextBox> 
            <asp:Label ID="larjun" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
        <td colspan="3" align="center">
            <asp:Button ID="bresult" runat="server" Text="Please Verify Yourself" 
                onclick="bresult_Click" />
        </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <table style=" background-color:White; height: 451px; width: 200px;">
        <tr>
            <td>
                <asp:Label ID="lsession" runat="server" Text='<%Session["Name"] %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="imgadmin" runat="server" Height="401px" Width="213px"/>
                 <asp:HyperLink ID="logout" runat="server" NavigateUrl="~/login.aspx" Text="Logout"></asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>