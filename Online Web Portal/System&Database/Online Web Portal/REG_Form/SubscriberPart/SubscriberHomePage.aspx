<%@ Page Title="" Language="C#" MasterPageFile="SubscriberSite.master" AutoEventWireup="true" CodeFile="SubscriberHomePage.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            height: 27px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div style="width: 1000px">
    <div style="height: 50px;  width:1029px; clear:both" 
        class="style1">
        Welcome&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#CC0000" Text="*"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbtnSendRequest" runat="server" 
            onclick="lbtnSendRequest_Click">Paid Subscriber Request </asp:LinkButton>
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
    
    <div style="width: 200px; height:305px; float:left; background-color: #a83930;">
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
                    <asp:DropDownList ID="ddlCategory" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <b style="color: #FFFF99">Filter by Brand</b></td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlBrandName" runat="server">
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

        <asp:GridView ID="gvSearchVehicles" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="vehicle_id" HeaderText="vehicle_id" 
                    InsertVisible="False" ReadOnly="True" SortExpression="vehicle_id" 
                    Visible="True" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    InsertVisible="False" ReadOnly="True" SortExpression="username" 
                    Visible="True" />
                <asp:BoundField DataField="category" HeaderText="category" 
                    SortExpression="category" />
                <asp:BoundField DataField="brand" HeaderText="brand" 
                    SortExpression="brand" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="distance" HeaderText="distance" 
                    SortExpression="distance" />
                <asp:BoundField DataField="condition" HeaderText="condition" 
                    SortExpression="condition" />
                <asp:BoundField DataField="price" HeaderText="price" 
                    SortExpression="price" />
                <asp:TemplateField HeaderText="Vehicle Image">
                <ItemTemplate>
                <asp:Image ID="image_id" runat="server" ImageUrl='<%# "~/HTTPHandler.ashx?VID=" + Eval("vehicle_id")  %>' />
                </ItemTemplate>
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
            
            SelectCommand="SELECT [vehicle_id], [category], [v_image], [brand], [year], [distance], [condition], [price] FROM [tb_Vehicle] WHERE ([status] LIKE '%' + @status + '%')">
            <SelectParameters>
                <asp:Parameter DefaultValue="Approved" Name="status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
</div>
</asp:Content>
