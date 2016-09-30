<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: xx-small;
            height: 12px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div style="height: 500px" align="center">
        <table>
            <tr>
                <td colspan="2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager> <h1>Registration Page</h1>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style1">
                    * All fields are mandatory.
                    </td>
            </tr>
            <tr>
                <td>
                    <strong> Name</strong></td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" MaxLength="10" Width="195px" 
                        Height="26px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtName" ErrorMessage="Name can not be Blank" 
                                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                        runat="server" ControlToValidate="txtName" 
                        ErrorMessage="Enter only alphabetical letters" Font-Bold="True" 
                        ValidationExpression="[a-zA-Z]{3,30}" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Mobile Numbe</strong>r</td>
                <td>
                    <asp:TextBox ID="txtMobileno" runat="server" MaxLength="10" Width="195px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtMobileno" ErrorMessage="Enter Valid Number" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="[\d]{10}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtMobileno" ErrorMessage="Mobile Number can not be Blank" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Email Id</strong></td>
                <td>
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
                <td>
                    <strong> State</strong></td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" 
                        Height="30px" onselectedindexchanged="ddlState_SelectedIndexChanged" 
                        Width="193px" ValidationGroup="valGrp1">
                        <asp:ListItem>Select State</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlState" ErrorMessage="Please Select State" 
                        InitialValue="Select State" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong> City</strong></td>
                <td>
                    <asp:DropDownList ID="ddlCity" runat="server" Height="22px" Width="190px" 
                        ValidationGroup="valGrp1">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td> <b>Addrees</b></td> 
                <td><asp:TextBox ID="txtAddress" runat="server" Height="35px" Width="196px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtAddress" ErrorMessage="Address can not be Blank" 
                                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
            </tr>
            <tr>
                <td style="font-weight: 700" >
                    UserName</td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div>
                                <asp:TextBox ID="txtUsername" runat="server" Width="195px" AutoPostBack="True" 
                                    ondatabinding="txtUsername_TextChanged" ontextchanged="txtUsername_TextChanged"></asp:TextBox>
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
                <td>
                    &nbsp;</td>
                <td>
                    Ex: Characters allowed a-z, 0-9 and _ (underscore)</td>
            </tr>
            <tr>
                <td>
                    <strong>Password</strong></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="password should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtPassword" Display="Dynamic" 
                        ErrorMessage="Must contain letters a-z and digits 0-9" 
                        ValidationExpression="[\w\W]{6,}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>ReType Password</strong></td>
                <td>
                    <asp:TextBox ID="txtConPass" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConPass" 
                        ErrorMessage="Enter correct password" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr><td></td>
                <td>
                <rsv:CaptchaControl ID="captcha1" runat ="server" CaptchaLength="5" 
                CaptchaHeight ="60" CaptchaWidth="200" CaptchaLineNoise="None" 
                CaptchaMinTimeout="5" CaptchaMaxTimeout="240" ForeColor="#00FFCC" 
                BackColor="White" CaptchaChars="ABCDEFGHIJKLNPQRTUVXYZ12346789" 
                FontColor="Red" />

                    </td>
            </tr>
            <tr>
                <td>
                    <strong>Enter Captcha Image</strong></td>
                <td>
                    <asp:TextBox ID="txtCaptchaImage" runat="server" Width="195px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="*"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtCaptchaImage" ErrorMessage="Enter valid captcha" 
                        Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Font-Size="Large" 
                        style="background-color: #99CCFF" Text="Submit" Width="121px" 
                        onclick="btnSubmit_Click" />
                &nbsp;
                    <asp:Button ID="btnCancel" runat="server" Font-Bold="True" Font-Size="Large" 
                        style="background-color: #99CCFF" Text="Cancel" Width="121px" 
                        onclick="btnCancel_Click" ValidationGroup="valgrp1" />
                </td>
            </tr>
        </table>
    
    </div>
   </asp:Content>