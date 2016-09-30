<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="DeleteSubscriber.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
<div><h2>Delete Subscriber</h2> </br>
    <asp:GridView ID="gvDeleteSubscriber" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Username" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None" 
         OnRowCommand="GridView1_RowCommand" CssClass="style1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="State" HeaderText="State" />
            <asp:BoundField DataField="City" HeaderText="City" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Subscription" HeaderText="Subscription" />
            
            <asp:ButtonField ButtonType="Button" CommandName="DeleteCommand" 
                HeaderText="Delete Subscriber" ShowHeader="True" Text="Delete Subscriber" />
            
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbWPTLConnectionString %>" 
        SelectCommand="SELECT [Username], [Name], [MobileNo], [Email], [State], [Address], [Subscription], [City] FROM [tb_Register]">
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="gvContactDetails" runat="server">
    </asp:GridView>
    <br />
    </div>
</asp:Content>

