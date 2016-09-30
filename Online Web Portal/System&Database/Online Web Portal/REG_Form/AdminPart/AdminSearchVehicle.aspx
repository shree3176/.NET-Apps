<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminSearchVehicle.aspx.cs" Inherits="AdminSearchVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div><h2>Search Vehicle</h2>
        <p>&nbsp;</p>

                    <b>Category
                    <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp; Brand&nbsp;
                    <asp:DropDownList ID="ddlBrandName" runat="server" 
                        onselectedindexchanged="ddlBrandName_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;&nbsp; Year
                    <asp:DropDownList ID="ddlYear" runat="server" 
                        onselectedindexchanged="ddlYear_SelectedIndexChanged">
                        <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp; Price
                    <asp:DropDownList ID="ddlPrice" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    City
                    <asp:TextBox ID="txtCity" runat="server" Width="93px"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" />
                &nbsp;</b><div>
                        <asp:Label ID="lblSearchResult" runat="server"></asp:Label>
                        <br />
        <asp:GridView ID="gvAdminSearchVehicle" runat="server" AutoGenerateColumns="False"
            DataSourceID="" CellPadding="4" ForeColor="#333333" GridLines="None">

             <Columns>
                <asp:BoundField DataField="vehicle_id" HeaderText="vehicle_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="vehicle_id" 
                    Visible="True" />
                <asp:TemplateField HeaderText="Vehicle Image">
                <ItemTemplate>
                <asp:Image ID="image_id" runat="server" ImageUrl='<%# "~/HTTPHandler.ashx?VID=" + Eval("vehicle_id")  %>' />
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" />
                <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="distance" HeaderText="distance" 
                    SortExpression="distance" />
                <asp:BoundField DataField="condition" HeaderText="condition" 
                    SortExpression="condition" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                    SortExpression="MobileNo" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
               
            </Columns>
            <AlternatingRowStyle BackColor="White" />
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
        <br />
        <asp:SqlDataSource ID="sdsPaidSubSearch" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbWPTLConnectionString %>" 
            SelectCommand="SELECT tb_Vehicle.category, tb_Vehicle.v_image, tb_Vehicle.brand, tb_Vehicle.year, tb_Vehicle.distance, tb_Vehicle.condition, tb_Vehicle.price, tb_Register.Name, tb_Register.MobileNo, tb_Register.Email, tb_Register.State, tb_Register.City, tb_Register.Address FROM tb_Register INNER JOIN tb_Vehicle ON tb_Register.Username = tb_Vehicle.username">
        </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

