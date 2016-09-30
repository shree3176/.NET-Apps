<%@ Page Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" Runat="Server">
    <div id="news"><marquee direction="right"><strong>Large collection of used vehicles available...</strong></marquee></div>
   <div id="login" style=" width: 500px; height: 251px; box-shadow:0 5px 10px #aaa; background-color:#919191; margin-left:400px;" 
        align="center">
    <table class="style1" bgcolor="#919191">
        <tr>
            <td colspan="2">
                <strong><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style3">&nbsp;Admin&nbsp; Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></span></strong></td>
            <td rowspan="7" style="width: 142px">
                <asp:Image ID="Image1" runat="server" Height="139px" Width="133px" 
                    ImageUrl="~/Images/login_icon.png" />
            </td>
        </tr>
        <tr>
            <td class="style5" style="color: #FFFFFF; font-weight: bolder;">
                UserName</td>
            <td class="style6" style="width: 247px">
                <asp:TextBox ID="txtUsername" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" style="color: #FFFFFF; font-weight: bolder;">
                &nbsp;</td>
            <td class="style6" style="width: 247px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    Display="Dynamic" ErrorMessage="Only Letters and numbers are allowed" 
                    ValidationExpression="[a-zA-Z0-9]*" ControlToValidate="txtUsername"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" style="color: #FFFFFF; font-weight: bolder;">
                Password</td>
            <td style="width: 247px">
                <asp:TextBox ID="txtPassword" runat="server" Width="186px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="color: #FFFFFF; font-weight: bolder;">
                &nbsp;</td>
            <td style="width: 247px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td style="width: 247px">
                <asp:Button ID="btnAdminLogin" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="background-color: #99CCFF" Text="Login" Width="103px" 
                    onclick="btnAdminLogin_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="background-color: #99CCFF" Text="Reset" Width="96px" 
                    onclick="btnReset_Click" ValidationGroup="valgrp1" />
            &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <strong><span class="style2">
                <span class="style3">
                <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                </span></span></strong></td>
        </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            height: 248px;
        }
    </style>
</asp:Content>

