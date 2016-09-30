<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin_AddVehicle.aspx.cs" Inherits="AddVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 24px;
        }
        .style8
        {
            height: 24px;
            width: 177px;
        }
        .style10
        {
            height: 35px;
            width: 177px;
        }
        .style11
        {
            height: 35px;
        }
        .style17
        {
            height: 12px;
            width: 177px;
        }
        .style18
        {
            height: 12px;
        }
        .style19
        {
            height: 28px;
            width: 177px;
        }
        .style20
        {
            height: 28px;
        }
        .style21
        {
            height: 20px;
            width: 177px;
        }
        .style22
        {
            height: 20px;
        }
        .style23
        {
            height: 22px;
            width: 177px;
        }
        .style24
        {
            height: 22px;
        }
        .style27
        {
            height: 8px;
            width: 177px;
        }
        .style28
        {
            height: 8px;
        }
        .style29
        {
            height: 7px;
            width: 177px;
        }
        .style30
        {
            height: 7px;
        }
        .style31
        {
            height: 31px;
            width: 177px;
        }
        .style32
        {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div style="float:left; width:706px" >
    <h2>Add Vehicle<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:dbWPTLConnectionString %>" 
                        SelectCommand="SELECT [Username] FROM [tb_Register]"></asp:SqlDataSource>
                    </h2>
    <table style="width: 112%; height: inherit; margin-bottom: 0px;" align="center">
            <tr>
                <td class="style17">
                    Username Account</td>
                <td class="style18">
                    <asp:DropDownList ID="ddlUsername" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="Username" DataValueField="Username" AutoPostBack="True">
                        <asp:ListItem Selected="True">-- Select Username --</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Chosen Category</td>
                <td class="style6">
                    <asp:DropDownList ID="ddlCategory" runat="server" 
                        onselectedindexchanged="ddlCategory_SelectedIndexChanged">
                        <asp:ListItem>-- Select Category --</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlCategory" ErrorMessage="Please enter category" 
                        InitialValue="-- Select Category --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style19">
                    Brand Name</td>
                <td class="style20">
                    <asp:DropDownList ID="ddlBrandName" runat="server" Height="18px" Width="140px">
                        <asp:ListItem Selected="True">--  Select Brand --</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlCondition" ErrorMessage="Please enter brand." 
                        InitialValue="--  Select Brand --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    Condition</td>
                <td class="style22">
                    <asp:DropDownList ID="ddlCondition" runat="server">
                        <asp:ListItem>-- Select Condition --</asp:ListItem>
                        <asp:ListItem Value="Running"></asp:ListItem>
                        <asp:ListItem>Old</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlCondition" ErrorMessage="Please Enter Condition" 
                        InitialValue="-- Select Condition --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    Year</td>
                <td class="style24">
                    <asp:DropDownList ID="ddlYear" runat="server">
                        <asp:ListItem>-- Select Year --</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlYear" ErrorMessage="Please select year" 
                        InitialValue="-- Select Year--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style23">
                    KMs Driven</td>
                <td class="style24">
                    <asp:TextBox ID="txtDistance" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtDistance" ErrorMessage="Please Enter Kilometers"></asp:RequiredFieldValidator>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtDistance" Display="Dynamic" 
                        ErrorMessage="Only numbers are allowed" ValidationExpression="[\d]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <span style="color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: 18.200000762939453px; orphans: auto; text-align: right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                    Price</span></td>
                <td class="style6">
                    Rupees
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPrice" ErrorMessage="Please Enter Price"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtPrice" Display="Dynamic" 
                        ErrorMessage="Only numbers are allowed" ValidationExpression="[\d]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style27">
                    Photos</td>
                <td class="style28">
                    <asp:FileUpload ID="fuVehiclePhoto" runat="server" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPhotoMSg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style29">
                    &nbsp;
                </td>
                <td class="style30">
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="fuVehiclePhoto" ErrorMessage="Please Select vehicle image"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style31">
        <asp:Label ID="lblStatusMsg" runat="server" Text=""></asp:Label>
                </td>
                <td class="style32">
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style11">
                    <asp:Button ID="btnAddVehicle" runat="server" onclick="Button2_Click" 
                        Text="Add Vehicle Details" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
</asp:Content>


