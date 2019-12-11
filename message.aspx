<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow:scroll; height: 440px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="535px" DataSourceID="SqlDataSource1" Height="124px">
        <Columns>
            <asp:BoundField DataField="mainto" HeaderText="TO" 
                SortExpression="mainto" />
            <asp:BoundField DataField="maincc" HeaderText="CC" 
                SortExpression="maincc" />
            <asp:BoundField DataField="message" HeaderText="Message" 
                SortExpression="message" />
            <asp:BoundField DataField="session" HeaderText="From" 
                SortExpression="session" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:exitpolConnectionString %>" 
        SelectCommand="SELECT [mainto], [maincc], [message], [session] FROM [Message]">
    </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="461px" ImageUrl="~/pics/admin.jpg" 
    Width="220px" />
</asp:Content>


