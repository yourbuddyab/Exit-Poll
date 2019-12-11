<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="createpoll.aspx.cs" Inherits="createpoll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" >
    <tr>
        <td align="center">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>        
        </td>
        <td>
        <asp:Label ID="lvs" runat="server" Text="VS"></asp:Label>
        </td>
        <td align="center">
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true"
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
</asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <asp:Label ID="same" runat="server"></asp:Label></td>
    </tr>
    <tr>
        <td align="center">
            First Candidate
        </td>
        <td></td>
        <td align="center">
        Second Candidate
        </td>
    </tr>
    <tr align="center">
        <td>
        <asp:Image ID="fcon" runat="server" ImageUrl="" height="321px" Width="200px"/>
        </td>
        <td>
        VS
        </td>
        <td align="center">
        <asp:Image ID="scon" runat="server" ImageUrl="" Width="200px" Height="319px"/>
        </td>
     
     </tr>
    <tr>
        <td colspan="3" align="center">
    
            <asp:Button ID="bvs" runat="server" Text="submit" onclick="bvs_Click" 
                Width="100px" />
            <asp:Button ID="Bnot" runat="server" Text="Poll Cancel" Width="100px" 
                onclick="Bnot_Click" />
       </td>
    </tr>
</table>


</asp:Content>


<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:Image ID="Image1" runat="server" Height="461px" ImageUrl="~/pics/go copy.jpg" 
    Width="220px" />
</asp:Content>



