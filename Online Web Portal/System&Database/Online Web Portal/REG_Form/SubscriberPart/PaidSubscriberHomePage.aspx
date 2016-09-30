<%@ Page Title="" Language="C#" MasterPageFile="SubscriberSite.master" AutoEventWireup="true" CodeFile="PaidSubscriberHomePage.aspx.cs" Inherits="SubscriberPart_PaidSubscriberHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
 <div style="width: 1000px">
    <div style="height: 55px;  width:1029px; clear:both" 
        class="style1">
        Welcome&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#CC0000" Text="*"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlTheme_SelectedIndexChanged">
            <asp:ListItem>SubscriberSite.master</asp:ListItem>
            <asp:ListItem>WaterDroplets.master</asp:ListItem>
            <asp:ListItem>MetalBalls.master</asp:ListItem>
            <asp:ListItem>Balloons.master</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="btnTheme" runat="server" Text="Save Theme" 
            onclick="btnTheme_Click" />
    
        <br />
    
    </div>
     </div>
    <div style="width: 200px; height:315px; float:left; background-color: #a83930;">
        <table style="width: 100%;">
            <tr>
                <td>
                    <b style="color: #FFFF99">Refine your Search:</b>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <b style="color: #FFFF99">Filter by Category:</b></td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <b style="color: #FFFF99">Filter by Brand</b></td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlBrandName" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <b style="color: #FFFF99">Filter By Year</b></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtFromYear" runat="server" Height="23px" Width="56px"></asp:TextBox>
                &nbsp;-
                    <asp:TextBox ID="txtToYear" runat="server" Height="23px" Width="56px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <b style="color: #FFFF99">Filter By Price</b></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtMinimumPrice" runat="server" Height="22px" Width="57px"></asp:TextBox>
&nbsp;-
                    <asp:TextBox ID="txtMaximumPrice" runat="server" Height="22px" Width="57px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <b style="color: #FFFF99">Filter By City</b></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" Height="22px" Width="119px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" />
                </td>
            </tr>
        </table>
    &nbsp;
    </div>
    <div style="width: 600px; height:500px; float:left;  ">
        <asp:Label ID="lblSearchResult" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="gvSearchVehicles" runat="server" AutoGenerateColumns="False" 
            DataSourceID="" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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
        <asp:SqlDataSource ID="sdsPaidSubSearch" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbWPTLConnectionString %>" 
            SelectCommand="SELECT tb_Vehicle.vehicle_id, tb_Vehicle.category, tb_Vehicle.v_image, tb_Vehicle.brand, tb_Vehicle.year, tb_Vehicle.distance, tb_Vehicle.condition, tb_Vehicle.price, tb_Register.Name, tb_Register.MobileNo, tb_Register.Email, tb_Register.State, tb_Register.City, tb_Register.Address FROM tb_Register INNER JOIN tb_Vehicle ON tb_Register.Username = tb_Vehicle.username where status = 'Approved'">
        </asp:SqlDataSource>
        </div>
</asp:Content>

