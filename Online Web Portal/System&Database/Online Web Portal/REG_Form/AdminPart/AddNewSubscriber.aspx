<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewSubscriber.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 799px;
        }
        .style2
        {
            width: 523px;
            }
        .style3
        {
            width: 118px;
            height: 6px;
        }
        .style4
        {
            width: 584px;
        }
        .style6
        {
            width: 96px;
            height: 28px;
        }
        .style7
        {
            width: 96px;
            height: 29px;
        }
        .style8
        {
            width: 584px;
            height: 20px;
        }
        .style11
        {
            height: 30px;
            width: 96px;
        }
        .style13
        {
            height: 33px;
        }
        .style14
        {
            height: 34px;
        }
        .style16
        {
            width: 552px;
            height: 39px;
        }
        .style17
        {
            height: 32px;
            width: 96px;
        }
        .style19
        {
            width: 584px;
            height: 33px;
        }
        .style20
        {
            width: 96px;
            height: 31px;
        }
        .style21
        {
            height: 33px;
            width: 96px;
        }
        .style23
        {
            width: 96px;
        }
        .style24
        {
            width: 96px;
            height: 20px;
        }
        .style25
        {
            color: #FF3300;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">

    <div style="height: 396px; width: 712px; float:left">
    
        <table class="style1">
            <tr>
                <td class="style16" colspan="2">
                    <strong><span class="style3"><span class="style13">Registration</span></span></strong><asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <span class="style25">* All fields are mandatory</span></td>
            </tr>
            <tr>
                <td align="right" class="style23">
                    <strong> Name</strong></td>
                <td class="style4">
                    <asp:TextBox ID="txtName" runat="server" MaxLength="40" Width="195px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                        runat="server" ErrorMessage="RegularExpressionValidator" Font-Bold="True" 
                        ValidationExpression="[a-zA-Z ]{5,40}" ControlToValidate="txtName"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtUsername" ErrorMessage="UserName can not be Blank" 
                                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style11">
                    <strong>Mobile Numbe</strong>r</td>
                <td class="style4">
                    <asp:TextBox ID="txtMobileno" runat="server" MaxLength="10" Width="195px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtMobileno" ErrorMessage="Enter Valid Number" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtMobileno" ErrorMessage="Mobile Number can not be Blank" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email Id</strong></td>
                <td class="style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="195px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter valid Email Id" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Email Field can not be Blank" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State</strong></td>
                <td class="style19">
                    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" 
                        Height="30px" Width="193px" 
                        onselectedindexchanged="ddlState_SelectedIndexChanged">
                        <asp:ListItem>-- Select State --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlState" ErrorMessage="Please select state" 
                        InitialValue="-- Select State --" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style24">
                    <strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City</strong></td> &nbsp;
                <td class="style8">
                    <asp:DropDownList ID="ddlCity" runat="server" Height="30px" Width="190px" 
                        onselectedindexchanged="ddlCity_SelectedIndexChanged">
                        <asp:ListItem>-- Select City --</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="ddlCity" Display="Dynamic" ErrorMessage="Please select city" 
                        InitialValue="-- Select City --" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style17">
                  <strong>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Addrees</strong></td> 
                <td class="style4">
                    <asp:TextBox ID="txtAddress" runat="server" Height="48px" Width="196px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtAddress" ErrorMessage="Address can not be Blank" 
                                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                        runat="server" ControlToValidate="txtAddress" Display="Dynamic" 
                        ErrorMessage="May contain characters a-z, A-Z or 0-9. Must be Atleast 10 charachters long." 
                        style="font-weight: 700" ValidationExpression="[\w ]*"></asp:RegularExpressionValidator>
                            </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <strong>UserName</strong></td>
                <td class="style4">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="style14">
                                <asp:TextBox ID="txtUsername" runat="server" Width="195px" AutoPostBack="True" 
                                    ondatabinding="TextBox1_TextChanged" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtUsername" ErrorMessage="UserName can not be Blank" 
                                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                    ControlToValidate="txtUsername" Display="Dynamic" 
                                    ErrorMessage="Username should be atleast 5 characters long " 
                                    ValidationExpression="[\w]{5,}"></asp:RegularExpressionValidator>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <strong>Password</strong></td>
                <td class="style4">
                    <asp:TextBox ID="txtPassword" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="password should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtPassword" Display="Dynamic" 
                        ErrorMessage="May contain a-z, A-Z, 0-9 and special characters. Should be atleast 6 characters long" 
                        ValidationExpression="[\w\W]{6,}" style="font-weight: 700"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style7">
                    <strong>ReType Password</strong></td>
                <td class="style4">
                    <asp:TextBox ID="txtConPass" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConPass" 
                        ErrorMessage="Enter correct password" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Font-Size="Large" 
                        style="background-color: #99CCFF" Text="Submit" Width="121px" 
                        onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
   
</asp:Content>

