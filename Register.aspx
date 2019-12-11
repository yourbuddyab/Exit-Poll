<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style17
        {
            height: 44px;
            width: 203px;
        }
       
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <table align="center" class="style9" border="5" 
        style="height: 454px; width: 531px">
        <tr>
            <td class="style17" colspan="3" align="center">
                <asp:Label ID="lregister" runat="server" Font-Size="X-Large" Text="Register to vote"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Name
            </td>
            <td>
                <asp:TextBox ID="tbnamef" runat="server" placeholder="First"></asp:TextBox>
                <asp:TextBox ID="tbnamel" runat="server" placeholder="Last" Width="128px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvname" runat="server" ControlToValidate="tbnamef" ErrorMessage="Please Enter your Name" ></asp:RequiredFieldValidator>
            </td>         
        </tr>
       
        <tr>
            <td>
                Email ID 
            </td>
            <td>
                <asp:TextBox ID="tbmailid" runat="server" Width="307px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="revmail" runat="server" ControlToValidate="tbmailid" ErrorMessage="Enter Vaild E-mail Address" ValidationExpression="\w+\S+@+.+"></asp:RegularExpressionValidator>
            </td>
            </tr>
          <tr>
            <td>
                Gender
            </td> 
            <td>
                <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal" 
                    Width="254px">
                <asp:ListItem Selected=True>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                Date of Brith
            </td>
            <td>
                
             
                <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="true">
                <asp:ListItem Selected="True">Select year</asp:ListItem>
                </asp:DropDownList>
                   <asp:DropDownList ID="ddlmonth" runat="server" onselectedindexchanged="ddlmonth_SelectedIndexChanged" AutoPostBack="true">
                   <asp:ListItem Selected="True">Select Month</asp:ListItem>
                   <asp:ListItem Value=1>Jan</asp:ListItem>
                   <asp:ListItem Value=2>Feb</asp:ListItem>
                   <asp:ListItem Value=3>March</asp:ListItem>
                   <asp:ListItem Value=4>April</asp:ListItem>
                   <asp:ListItem Value=5>May</asp:ListItem>
                   <asp:ListItem Value=6>June</asp:ListItem>
                   <asp:ListItem Value=7>July</asp:ListItem>
                   <asp:ListItem Value=8>Aug</asp:ListItem>
                   <asp:ListItem Value=9>Sept</asp:ListItem>
                   <asp:ListItem Value=10>Oct</asp:ListItem>
                   <asp:ListItem Value=11>Nov</asp:ListItem>
                   <asp:ListItem Value=12>Dec</asp:ListItem>
                   </asp:DropDownList>
                <asp:DropDownList ID="ddldob" runat="server" AutoPostBack="true">
                <asp:ListItem>Select day</asp:ListItem>
                </asp:DropDownList>

            </td>
       </tr>
        <tr>
            <td rowspan="2">
                Address
            </td>
            <td>
                <asp:TextBox ID="tbaddress" runat="server"></asp:TextBox>
                <asp:TextBox ID="tbpincode" runat="server" placeholder="PinCode"></asp:TextBox>
            </td>
       </tr>
       <tr>
            <td>
                <asp:DropDownList ID="ddlcountry" runat="server" 
                    onselectedindexchanged="ddlcountry_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Selected="True">Country</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>England</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>Chain</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlstate" runat="server" 
                    onselectedindexchanged="ddlstate_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Selected="True">State</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="true">
                <asp:ListItem Selected="True">City</asp:ListItem>
                </asp:DropDownList>
            </td>
       </tr>
       <tr>
            <td>
                Contact No.
            </td>
            <td>
                <asp:Label ID="lccode" runat="server"></asp:Label><asp:TextBox ID="tbcontactno" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revcon" runat="server" ControlToValidate="tbcontactno" ErrorMessage="Please Enter 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
       </tr>
       <tr>
            <td>
                Password
            </td>
            <td>
                <asp:TextBox ID="tbpassword" runat="server" TextMode="Password"></asp:TextBox>
                
            </td>
       </tr>
       <tr>
            <td>
                Re-enter Password
            </td>
            <td>
                <asp:TextBox ID="tbreepass" runat="server" TextMode="Password"></asp:TextBox>
            
                <asp:CompareValidator ID="cvrepassword" runat="server" ControlToValidate="tbreepass" ControlToCompare="tbpassword" Operator="Equal" Type="String" ErrorMessage="Please Enter Same Password"></asp:CompareValidator>
            </td>
       </tr> 
       <tr>
  <td colspan="2" align="center">
                <asp:Button ID="brighters" runat="server" Text="Register" 
                    onclick="brighters_Click" style="height: 26px" />
                <asp:Button ID="Bback" runat="server" Text="Login" 
                     style="height: 26px" />
            </td>
       </tr>
      </table>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder2" ID="cid" runat="server">
  <asp:HyperLink ID="addhy" runat="server" NavigateUrl="https://www.marutibhog.com">  <asp:Image ID="Image1" runat="server" Height="461px" 
        ImageUrl="~/pics/print.jpg" Width="220px" /></asp:HyperLink>
</asp:Content>

