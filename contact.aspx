<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            height: 45px;
        }
        .style16
        {
            height: 37px;
        }
        .style17
        {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height:429px; width:450px;" align="center">
   <tr align="center"><th colspan="2" style="font-size:x-large">Contanct Us</th></tr>
    <tr>    
        <td class="style17" align="right">Owner's Name:</td>
        <td>
        Ankur Growar & Arjun Bhati
        </td>
    </tr>
    <tr>
        <td colspan="2" style="font-size:x-large" align="center">Email:</td>
    </tr>
    <tr>
        <td align="right">Ankur Growar:</td>
        <td><a href="mailto:ankurgrover054@gmail.com">ankurgrover054@gmail.com</td>
   </tr>
   <tr>
        <td align="right">Arjun Bhati:</td>
        <td><a href="mailto:arjunbhati180@gmail.com">arjunbhati180@gmail.com</a></td>
   </tr>
   <tr> 
       <td colspan="2" style="font-size:x-large" align="center">Call & Whats app</td>
   </tr>
   <tr>
       <td align="right">Ankur Growar:</td><td>8302461063</td>
   </tr>
   <tr> 
        <td align="right">Arjun Bhati:</td><td>8823908641</td>
   </tr>
   <tr>
       
       <td colspan="2" style="font-size:x-large" align="center"> Design, Developing, Idea & Coding by</td>
       
       <tr><td align="right" colspan="2" class="style16"><asp:Label ID="ownername" runat="server" Font-Names="Kunstler Script" Font-Size="Xx-Large" ><b>Ankur Growar & Arjun Bhati</b></asp:Label></td></tr>
   </tr>
</table>     
</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table  style="background-color:White;widht:220px;height:461px" width="220">
    <tr>
    <td>Like & Follow us on</td><td align="right">
    <asp:HyperLink ID="i2" runat="server" NavigateUrl="https://www.facebook.com/ankur.grover.77" Width="80px"><img 
        align="right" height="50px" src="pics/fb.jpg" /> </asp:HyperLink></td></tr>
        <tr>
        <td>Contact us on</td>
        <td>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://web.whatsapp.com/"><img 
        align="right" height="50px" src="pics/what.jpg" /> </asp:HyperLink></td></tr>
    <tr><td>Like & Follow us on</td>
    <td><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="https://www.instagram.com/your_buddy_ab/"><img 
        align="right" height="50px" src="pics/ins.jpg" /> </asp:HyperLink></td></tr>
   <tr><td>Contact us on</td>
   <td> <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="https://www.gmail.com"><img 
        align="right" height="50px" src="pics/gmail.jpg" /> </asp:HyperLink></td></tr>
</tr></table>
</asp:Content>


