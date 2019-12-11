<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
   
   
    <style type="text/css">
        .style23
        {
            height: 96px;
        }
        .style24
        {
            height: 72px;
        }
        .style25
        {
            height: 47px;
        }
        .style26
        {
            height: 50px;
        }
        .style27
        {
            height: 44px;
        }
        .style28
        {
            height: 48px;
        }
    </style>
   
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" 
        
        
        
        style="background-image: url('pics/dssds.jpg'); background-repeat: no-repeat; background-position: center; height: 444px; width: 521px;">
       <tr>
       <td class="style23"></td></tr>
       <tr>
       <th style="font-size:x-large" class="style24"><u>Welcome to Admin Panel</u>
       </th>
       </tr> 
       <tr>
       <td align="center" class="style26">
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/createpoll.aspx" 
               ForeColor="Black" Font-Size="Large">Create Poll</asp:HyperLink>
       </td>
       </tr>
       <tr>
       <td align="center" class="style25">
           <asp:HyperLink ID="HyperLink2" runat="server" 
               NavigateUrl="~/insertcandidate.aspx" ForeColor="Black" Font-Size="Large">Insert Candidate</asp:HyperLink>
       </td>
       </tr>
       <tr>
       <td align="center" class="style27">
           <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Result.aspx" 
               ForeColor="Black" Font-Size="Large">Result</asp:HyperLink>
       </td>
       </tr>
       <tr>
       <td align="center" class="style28">
           <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/message.aspx" 
               ForeColor="Black" Font-Size="Large">Message</asp:HyperLink>
       </td>
       </tr>
       <tr>
       <td>
       </td></tr>
       
       
        </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/vip.JPG" />
</asp:Content>


