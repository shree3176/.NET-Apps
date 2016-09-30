<%@ Page Title="" Language="C#" MasterPageFile="SubscriberSite.master" AutoEventWireup="true" CodeFile="SubscriberInbox.aspx.cs" Inherits="SubscriberInbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div align="center" style="height: 400px; margin-top:80px">
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        &nbsp; :<h1> Inbox (Messages sent by Admin) </h1><br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="gvSubInbox" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="subject" HeaderText="subject" 
                    SortExpression="subject" />
                <asp:BoundField DataField="message" HeaderText="message" 
                    SortExpression="message" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
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
            ConnectionString="<%$ ConnectionStrings:dbWPTLConnectionString2 %>" 
            SelectCommand="SELECT [subject], [message], [date] FROM [tb_MessageHistory] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="username" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>

