<%@ Page Title="" Language="C#" MasterPageFile="SubscriberPart/Site.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div> <h3>Visitor's Feedback</h3>
        <table style="width: 100%;">
            <tr>
                <td><b>Your Email Address: 
                    &nbsp;
                </b>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="style1"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Email Field can not be Blank" 
                        Font-Bold="True" CssClass="style1"></asp:RequiredFieldValidator>
                    <b>&nbsp;
                    </b>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter valid Email Id" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        CssClass="style1"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td><b>Enter Your Feedback:
                    &nbsp;
                </b>
                </td>
                <td>
                    <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" 
                        Height="66px" Width="279px" CssClass="style1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtFeedback" ErrorMessage="Feedback can not be Blank" 
                                    Font-Bold="True" ForeColor="Red" CssClass="style1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Height="30px" 
                        onclick="btnSubmit_Click" Text="Submit" Width="84px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>


</asp:Content>

