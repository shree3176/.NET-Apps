<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="SetMemberStatus.aspx.cs" Inherits="SetMemberStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div>
        <asp:GridView ID="gvPaymentDetails" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="paymentMode" HeaderText="paymentMode" 
                    SortExpression="paymentMode" />
                <asp:BoundField DataField="chqddno" HeaderText="chqddno" 
                    SortExpression="chqddno" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="sAmount" HeaderText="sAmount" 
                    SortExpression="sAmount" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                <asp:TemplateField HeaderText="Select Subscriber">
                <ItemTemplate><asp:CheckBox runat="server" ID="chkSelectUser"/></ItemTemplate>
                </asp:TemplateField>
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
            SelectCommand="SELECT * FROM [tb_SubscriptionDetails]"></asp:SqlDataSource>
    
        <br />
        <asp:Button ID="btnSetFree" runat="server" onclick="btnSetFree_Click" 
            Text="Convert Subscribers as Free" />
&nbsp;&nbsp;
        <asp:Button ID="btnSetPaid" runat="server" onclick="btnSetPaid_Click" 
            Text="Convert Subscribers as Paid" />
    
    </div>
   </asp:Content>