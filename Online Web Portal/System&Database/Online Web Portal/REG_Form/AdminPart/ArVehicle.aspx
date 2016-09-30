<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="ArVehicle.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div><h2>Approve or Reject Vehicle</h2></br>
        <asp:GridView ID="gvAprRej" runat="server" AutoGenerateColumns="False" 
            DataSourceID="sqlDsAprRej" CellPadding="4" ForeColor="#333333" 
            GridLines="None" style="font-weight: 700">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            <asp:BoundField DataField="vehicle_id" HeaderText="ID" 
                    SortExpression="vehicle_id" />
                     <asp:TemplateField HeaderText="Vehicle Image">
                <ItemTemplate>
                <asp:Image ID="image_id" runat="server" ImageUrl='<%# "~/HTTPHandler.ashx?VID=" + Eval("vehicle_id")  %>' />
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" />
                <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="distance" HeaderText="distance" 
                    SortExpression="distance" />
                <asp:BoundField DataField="condition" HeaderText="condition" 
                    SortExpression="condition" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="status" HeaderText="status" 
                    SortExpression="status" />
                     <asp:TemplateField HeaderText="Select Vehicle">
                <ItemTemplate><asp:CheckBox runat="server" ID="chkSelectVehicle" Text="Select Vehicle"/></ItemTemplate>
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
        <asp:SqlDataSource ID="sqlDsAprRej" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbWPTLConnectionString %>" 
            SelectCommand="SELECT * FROM [tb_Vehicle]"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnApprove" runat="server" Text="Approve Vehicle" 
            onclick="btnApprove_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnReject" runat="server" AccessKey="r" Text="Reject Vehicle" 
            onclick="btnReject_Click" />
    </div>
</asp:Content>

