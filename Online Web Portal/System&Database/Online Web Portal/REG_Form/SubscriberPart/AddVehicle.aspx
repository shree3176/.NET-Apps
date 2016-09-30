<%@ Page Title="" Language="C#" MasterPageFile="SubscriberSite.master" AutoEventWireup="true" CodeFile="AddVehicle.aspx.cs" Inherits="AddVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
        .style2
        {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div align="center" style="height: 500px; margin-top:80px"  >
       
        <br />
        <table>
          <tr><td colspan="2"><h1>Add Vehicle Details</h1></td>
        
        </tr>
            <tr>
                <td>
                    <b>Your Username</b></td>
                <td>
                    <b>
                    <asp:Label ID="lblUsername" runat="server" Text="Label"></asp:Label>
                    </b>&nbsp;
               
                </td>
            </tr>
            <tr>
                <td> <b>Chosen Category</b></td>
                <td> 
                    <asp:DropDownList ID="ddlCategory" runat="server" 
                        onselectedindexchanged="ddlCategory_SelectedIndexChanged" Height="25px" 
                        Width="135px">
                        <asp:ListItem>-- Select Category --</asp:ListItem>
                        <asp:ListItem Value="Cars">Cars</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlCategory" ErrorMessage="Please enter category" 
                        InitialValue="-- Select Category --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td> <b>Brand Name</b></td>
                <td> 
                    <asp:DropDownList ID="ddlBrandName" runat="server" 
                         Height="25px" 
                        Width="141px">
                        <asp:ListItem Selected="True">--  Select Brand --</asp:ListItem>
                        <asp:ListItem Value="Bajaj"></asp:ListItem>
                    </asp:DropDownList>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlCondition" ErrorMessage="Please enter brand." 
                        InitialValue="--  Select Brand --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td><b>Condition</b></td>
                <td><asp:DropDownList ID="ddlCondition" runat="server" Height="25px">
                        <asp:ListItem>-- Select Condition --</asp:ListItem>
                        <asp:ListItem Value="Running"></asp:ListItem>
                        <asp:ListItem>Old</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlCondition" ErrorMessage="Please select condition" 
                        InitialValue="-- Select Condition --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td> <b>Year</b></td>
                <td> <asp:DropDownList ID="ddlYear" runat="server" Height="25px" Width="139px">
                        <asp:ListItem>-- Select Year --</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlCondition" ErrorMessage="Please select condition" 
                        InitialValue="-- Select Condition --"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td> <b>KMs Driven</b></td>
                <td> <asp:TextBox ID="txtDistance" runat="server" Height="25px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtDistance" ErrorMessage="Please Enter Kilometers"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtDistance" Display="Dynamic" 
                        ErrorMessage="Only numbers are allowed." ValidationExpression="[\d]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td> 
                    <span style="color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 18.200000762939453px; orphans: auto; text-align: right; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;" 
                        class="style1">
                    Price</span></td>
                <td> 
                    <asp:TextBox ID="txtPrice" runat="server" Height="25px"></asp:TextBox>
                    &nbsp;Rupees
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtPrice" ErrorMessage="Please Enter Price"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtPrice" Display="Dynamic" 
                        ErrorMessage="Only numbers are allowed" ValidationExpression="[\d]*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2"> <b>Photos</b></td>
                <td class="style2"> <asp:FileUpload ID="fuVehiclePhoto" runat="server" 
                        Height="25px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblPhotoMSg" runat="server"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="fuVehiclePhoto" ErrorMessage="Please Select vehicle image"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td> &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnAddVehicle" runat="server" onclick="Button2_Click" 
                        Text="Add Vehicle Details" Height="30px" />
                </td>
            </tr>
            </table>
    
        <br />
    
    </div>
    <p>
        &nbsp;</p>
</asp:Content>


