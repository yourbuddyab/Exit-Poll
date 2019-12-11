<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mail.aspx.cs" Inherits="mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 378px;
        }
        .style17
        {
            width: 193px;
        }
        .style18
        {
            height: 36px;
        }
        .style19
        {
            width: 193px;
            height: 36px;
        }
        .style20
        {
            height: 25px;
        }
        .style21
        {
            width: 193px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="height: 375px" align="center">
    <tr>
        <td colspan="2" align="center" align="center" style=" font-size: x-large;">
            Message to Admin for create Exit Poll
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
        Hello <asp:Label ID="userid" runat="server" Text='<%Session["Name"]%>'></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style18">
            To:
        </td>
        <td class="style19">
            <asp:DropDownList ID="ddlmail" runat="server">
            <asp:ListItem>Choose a Admin</asp:ListItem>
            <asp:ListItem>Ankur</asp:ListItem>
            <asp:ListItem>Arjun</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Cc:
        </td>
        <td class="style17">
            <asp:DropDownList ID="ddlcc" runat="server">
            <asp:ListItem>Choose a Admin</asp:ListItem>
            <asp:ListItem>Ankur</asp:ListItem>
            <asp:ListItem>Arjun</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style20">
            Message:
        </td>
        <td class="style21">
           <asp:TextBox ID="tbmsg" runat="server" TextMode="MultiLine" placeholder="Enter Your Message" Height="51px" Width="217px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        
        <td>
            First Candidate Image:
           
        </td>
        <td class="style17">
          <asp:TextBox ID="tbfirst" runat="server" placeholder="Enter First Candidate Name" Width="217px"></asp:TextBox>
          <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
     <tr>
        
        <td>
            Second Candidate Image:
        </td>
        <td class="style17">
          <asp:TextBox ID="tbsecond" runat="server" 
                placeholder="Enter Second Candidate Name" Width="217px"></asp:TextBox><asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Button ID="bsend" runat="server" Text="Send Message" 
                onclick="bsend_Click" />
        </td>
    </tr>

    <tr>
        <td colspan="2" align="center"> 
            <asp:Label ID="sendmsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="461px" ImageUrl="~/pics/message.jpg" 
    Width="220px" />
</asp:Content>

