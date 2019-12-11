<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" style="height: 258px; width: 368px">
    <tr>
        <td>
            <asp:Label ID="lid" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lvote" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lid1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lvote2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        <asp:Button ID="bresult" runat="server" Text="Get Result" onclick="bresult_Click"/>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
    
        <asp:Label ID="lcong" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
      
        </td>
    </tr>
        </table>
    


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="ResultIs" runat="server" ForeColor="White"><h3 align="center">Result Is</h3></asp:Label>
    <asp:Image ID="Image1" runat="server" Height="386px" ImageUrl="~/pics/re.jpg" 
    Width="220px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="wincandidate" runat="server" ForeColor="White"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="losscandidate" runat="server" ForeColor="White"></asp:Label>
</asp:Content>

