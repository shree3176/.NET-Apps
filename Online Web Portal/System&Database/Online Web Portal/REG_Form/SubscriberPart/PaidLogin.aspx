<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="PaidLogin.aspx.cs" Inherits="PaidLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            color: #FFFF99;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
 <div id="news"><marquee direction="right"><strong>Large collection of used vehicles available...</strong></marquee></div>
   <div id="login" 
        style="margin-left:400px; width: 500px; height: 250px; box-shadow:0 5px 10px #aaa; background-color:#919191">
    <table class="style1" bgcolor="#919191">
        <tr>
            <td colspan="2">
                <strong><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style4">&nbsp;Paid Subscriber Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></span></strong></td>
            <td rowspan="8" style="width: 142px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="154px" Width="102px" 
                    ImageUrl="~/Images/moneyUser.png" />
            </td>
        </tr>
        <tr>
            <td class="style5" style="color: #FFFFFF; font-weight: bolder;" colspan="2">
                <strong><span class="style2">
                <span class="style3">
                <asp:Label ID="lblErrMessage" runat="server" style="color: #FF0000"></asp:Label>
                </span></span></strong></td>
        </tr>
        <tr>
            <td class="style5" style="color: #FFFFFF; font-weight: bolder;">
                UserName</td>
            <td class="style6" style="width: 247px">
                <asp:TextBox ID="txtUsername" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="color: #FFFFFF; font-weight: bolder;" colspan="2">
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
            <td class="style4" style="color: #FFFFFF; font-weight: bolder;" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Enter Password" 
                    Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:Button ID="btnPaidLogin" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="background-color: #99CCFF" Text="Login" Width="105px" 
                    onclick="btnPaidLogin_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="btnFreeLogin" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="background-color: #99CCFF" Text="Free Subscriber Login" Width="210px" 
                    onclick="btnFreeLogin_Click" ValidationGroup="val1" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
           
        </tr>
    </table>
    </div>
</asp:Content>

