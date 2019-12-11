<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="insertcandidate.aspx.cs" Inherits="Voting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 222px;
        }
        .style17
    {
        height: 366px;
    }
        .style18
        {
            width: 193px;
        }
        .style19
        {
            width: 193px;
            height: 28px;
        }
        .style20
        {
            height: 28px;
        }
        .style21
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="lsession" runat="server" Text='<%=Session["Name"]%>' Visible="true" align="right"></asp:Label>
      <table align="center" width="450px" height="150px">
      <tr><td colspan="2"><h1 align="center">Insert Data</h1></td></tr>
      <tr>
      <td align="right" class="style19">ID for Candidate:</td>
      <td class="style20"><asp:TextBox ID="TextBox1" runat="server" Width="219px"></asp:TextBox></td></tr>
      <tr><td align="right" class="style18">Name of Candidate:</td>
      <td colspan="2">
          <asp:TextBox ID="TextBox2" runat="server" Width="220px" Height="26px"></asp:TextBox></td></tr>
          <tr>
          <td align="right">
          Upload Candidate Image: 
          </td>
          <td align="center">
              <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="233px" /></td></tr>
          <tr><td colspan="2" align="center">
              <asp:Label ID="Label1" runat="server"></asp:Label>
              </td></tr>
              <tr><td colspan="2" align="center" class="style21">
                  <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" 
                      Width="81px" Height="30px" />
                  </td></tr>
                  <tr >
                    <td align="center" colspan="2">
                    <asp:Label ID="letram" runat="server" Text="Terms and Condition" ForeColor="ActiveCaptionText" Font-Size="X-Large"></asp:Label> <br />
                       •	All candidates have a unique ID.<br />
                       •	Admin please upload clear photo.<br /><br />
                       Note:ID fields is Unique. NO Repetation Allowed
  
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2" align="center">
                        <asp:HyperLink ID="hyback" runat="server" NavigateUrl="~/adminpanel.aspx">Admin Panel</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="hltimeline" runat="server" NavigateUrl="~/timeline.aspx">Click Here For Timeline</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="hycp" runat="server" NavigateUrl="~/createpoll.aspx">Create Poll</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="hyr" runat="server" NavigateUrl="~/Result.aspx">Result</asp:HyperLink>&nbsp;
                  </td>
                  </tr>
     </table>
</asp:Content>
<asp:Content ID="content2insert" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   
   <div style="overflow:scroll">  
   <table style="height: 450px">
    <tr>
    <td bgcolor="#CCFFCC" align="center">Previous ID's</td></tr>
    <tr>
    <td class="style17">
        <asp:GridView ID="GridView1" runat="server" Height="316px" Width="202px" 
            BackColor="#FFFFCC" AutoGenerateColumns="False" DataKeyNames="ID" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:exitpolConnectionString %>" 
            SelectCommand="SELECT [ID], [Name] FROM [upload]"></asp:SqlDataSource>
    </td>
    </tr>
    </table>
    </div>
</asp:Content>


