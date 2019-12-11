<%@ Page Language="C#" AutoEventWireup="true" CodeFile="timeline.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="timeline" %>
<asp:Content ID="content" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div align="center" style="font-size:x-large; height: 454px;">EXIT POLL
    <table  align="center" 
        style="background-position: center; height: 380px; width: 534px; background-image: url('pics/maxresdefault%20-%20Copy2.jpg'); background-repeat: no-repeat; background-attachment:scroll; overflow: scroll;" 
        bgcolor="#ffffff">
        
   <tr>
        <td class="style17" align="center">
      <h1 align="center">  <asp:Label ID="lone" runat="server" ForeColor="White" Font-Size="X-Large" Font-Italic="true"></asp:Label> </h1>
        <asp:Image ID="Ib1" runat="server" Height="230px" Width="195px" 
                BorderStyle="Groove"/>
        </td>
        <td class="style18">
             </td>
        <td class="style15" align="center">
        <asp:Image ID="Ib2" runat="server" Height="230px" Width="190px" 
                BorderStyle="Groove" style="margin-left: 0px" />
                <h1 align="center">  <asp:Label ID="Label1" runat="server" ForeColor="#FCC493" Font-Size="X-Large" Font-Italic="true"></asp:Label> </h1>
        </td>
    </tr>
   
    </table>
    <table align="center">
    <tr>
        <td colspan="1" align="center">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" 
                    RepeatDirection="Horizontal" Height="16px" Width="313px">
                <asp:ListItem Value=0></asp:ListItem>
                <asp:ListItem Value=1></asp:ListItem>
                </asp:RadioButtonList> 
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="16px" ImageUrl="~/pics/aro.png" 
                        Width="84px" />
                    <asp:Button ID="Button1" Text="Vote" runat="server" 
                    onclick="Button1_Click" Height="24px" Width="108px" />
               </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="lid" runat="server"></asp:Label>
        </td>
    </tr>
       </table>
       </div>
</asp:Content>
<asp:Content ID="contendtime" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="background-color:White; height: 460px; width: 200px; ">
    <tr>
     <td colspan="3"><asp:Label ID="userid" runat="server" Text='<%Session["Name"]%>'></asp:Label><asp:HyperLink ID="lmail" runat="server" NavigateUrl="~/mail.aspx"><img
             src="pics/gmail.jpg" height="50px" /></asp:HyperLink><br />
             <br />
              <asp:LinkButton ID="logout" runat="server" Text="Logout" onclick="logout_Click"></asp:LinkButton>
             <asp:HyperLink ID="hlresult" runat="server" NavigateUrl="~/Result.aspx">Result</asp:HyperLink>
            
        <asp:HyperLink ID="hladmin" runat="server" NavigateUrl="~/adminpanel.aspx" Text="Admin Panel" Visible="false"></asp:HyperLink>
        </td>
       
        </tr>
         <tr>
        <td colspan="3" align="center">
            <asp:Label ID="lthanks" runat="server" Font-Bold="true" Font-Size="X-Large"></asp:Label>
        </td>
       
    </tr>
    <tr>
     <th align="center" colspan="3" style="font-size:x-large">
        <asp:Label ID="lcs" runat="server">Current status</asp:Label>
        </th></tr>
        
    <tr><td colspan="3" style="overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Width="200px">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="1st Name" 
                    SortExpression="fname" />
                <asp:BoundField DataField="fvote" HeaderText="Vote" SortExpression="fvote" />
                <asp:BoundField DataField="sname" HeaderText="2nd Name" 
                    SortExpression="sname" />
                <asp:BoundField DataField="svote" HeaderText="Vote" SortExpression="svote" />
          
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:exitpolConnectionString %>" 
            SelectCommand="FOR_GRID" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:exitpolConnectionString %>" 
            SelectCommand="SELECT * FROM [polling]"></asp:SqlDataSource>
    </td></tr>
 </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style15
        {
            width: 200px;
            height: 283px;
        }
        .style17
        {
            width: 209px;
            height: 283px;
        }
        .style18
        {
            height: 283px;
        }
        .style19
        {
            height: 21px;
        }
    </style>
</asp:Content>
