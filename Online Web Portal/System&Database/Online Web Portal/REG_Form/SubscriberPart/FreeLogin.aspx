<%@ Page Title="" Language="C#" MasterPageFile="Site.master" AutoEventWireup="true" CodeFile="FreeLogin.aspx.cs" Inherits="FreeLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFF66;
        }
        .style2
        {
            color: #FFFF66;
            font-size: large;
        }
        .style3
        {
            color: #FFFF66;
            font-size: medium;
        }
        .style4
        {
            color: #FFFF66;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
   <div id="news"><marquee direction="right"><strong>Large collection of used vehicles available...</strong></marquee></div>
   <div id="login" 
        style=" width: 500px; margin-left:400px; height: 250px; box-shadow:0 5px 10px #aaa; background-color:#919191" align="center">
   
    <table class="style1" bgcolor="#919191" >
    
        <tr>
            <td colspan="2">
                <strong><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span 
                    class="style4">Free Subscriber Login&nbsp;</span><span class="style3"><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                </span></strong></td>
            <td rowspan="8" style="width: 142px">
                <asp:Image ID="Image1" runat="server" Height="139px" Width="133px" 
                    ImageUrl="~/Images/user-group-icon.png" />
            </td>
        </tr>
        <tr>
            <td class="style5" style="color: #FFFFFF; font-weight: bolder;" colspan="2">
                <strong><span class="style2">
                <span class="style3">
                <asp:Label ID="lblErrMessage" runat="server" 
                    style="color: #FF0000; font-size: medium;"></asp:Label>
                </span></span></strong></td>
        </tr>
        <tr>
            <td class="style5" style="color: #FFFFFF; font-weight: bolder;">
                UserName</td>
            <td class="style6" style="width: 247px">
                <asp:TextBox ID="txtUsername" runat="server" Width="187px" validationgroup="valGroup1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="color: #FFFFFF; font-weight: bolder;">
                &nbsp;</td>
            <td style="width: 247px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="Enter Username" 
                    validationgroup="valGroup1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Letters and numbers are allowed" 
                    ValidationExpression="[a-zA-Z0-9]*" ControlToValidate="txtUsername" 
                    validationgroup="valGroup1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" style="color: #FFFFFF; font-weight: bolder;">
                Password</td>
            <td style="width: 247px">
                <asp:TextBox ID="txtPassword" runat="server" Width="186px" TextMode="Password" validationgroup="valGroup1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="color: #FFFFFF; font-weight: bolder;">
                &nbsp;</td>
            <td style="width: 247px">
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Enter Password" 
                    validationgroup="valGroup1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;<asp:Button ID="btnFreeLogin" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="background-color: #99CCFF" Text="Login" Width="121px" 
                    onclick="btnFreeLogin_Click" causesvalidation="true" 
                    validationgroup="valGroup1" AccessKey="l" /> 
            &nbsp;&nbsp;
                <asp:Button ID="btnPaidLogin" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="background-color: #99CCFF; margin-left: 0px;" 
                    Text="Paid Subscriber Login" Width="200px" 
                    onclick="btnPaidLogin_Click" causesvalidation="true" AccessKey="l" /> 
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td style="width: 247px">
           <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Red" onclick="lbtnNewUser_Click" 
                    ToolTip="Click Here for Registration">New User</asp:LinkButton> </td>
        </tr>
    </table>
    </div>
            
            
   
</asp:Content>

