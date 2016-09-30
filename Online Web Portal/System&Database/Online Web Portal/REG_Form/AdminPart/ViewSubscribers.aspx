<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewSubscribers.aspx.cs" Inherits="ViewSubscribers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: small;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
 <div>
    &nbsp;&nbsp;&nbsp;&nbsp; <span class="style1">Display Subscribers</span> 
        <asp:DropDownList ID="ddlSelectsub" runat="server" AutoPostBack="True" 
         onselectedindexchanged="ddlSelectsub_SelectedIndexChanged" 
         style="font-weight: 700; font-size: small">
            <asp:ListItem>All</asp:ListItem>
            <asp:ListItem>Paid Subscribers</asp:ListItem>
            <asp:ListItem>Free Subscriber</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<br />
&nbsp;<asp:GridView ID="gvViewSubscriber" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Username" 
            ForeColor="#333333" GridLines="None" style="font-weight: 700">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                    SortExpression="Username" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Subscription" HeaderText="Subscription" 
                    SortExpression="Subscription" />
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
    </div>
</asp:Content>

