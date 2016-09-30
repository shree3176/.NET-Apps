<%@ Page Title="" Language="C#" MasterPageFile="SubscriberSite.master" AutoEventWireup="true" CodeFile="SendRequest.aspx.cs" Inherits="SendRequest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div align="center" style="margin-left:50px; margin-top:100px">
    <h2>Request For Paid Subscription</h2><br/>
        <table>
            <tr>
                <td></br>
                    <b>&nbsp;Welcome,&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label" style="color: #CC0000"></asp:Label>
                </td>
                <td>
                    </b></td>
            </tr>
            <tr>
                <td>
                    <b>Payment Mode</b></td>
                <td>
                    <asp:DropDownList ID="ddlPaymentMode" runat="server" CssClass="style4">
                        <asp:ListItem>Select Payment Mode</asp:ListItem>
                        <asp:ListItem Value="Cheque"></asp:ListItem>
                        <asp:ListItem>DD</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="ddlPaymentMode" ErrorMessage="Please Select Amount" 
                        InitialValue="Select Amount" CssClass="style4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Cheque No./ DD No.</b></td>
                <td>
                    <asp:TextBox ID="txtCorDNo" runat="server" CssClass="style4"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtCorDNo" ErrorMessage="Please enter cheque or DD no" 
                        InitialValue="Select State" CssClass="style4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Subcription Amount</b></td>
                <td>
                    <asp:DropDownList ID="ddlSAmount" runat="server" CssClass="style4">
                        <asp:ListItem>Select Amount</asp:ListItem>
                        <asp:ListItem>500</asp:ListItem>
                        <asp:ListItem>1000</asp:ListItem>
                    </asp:DropDownList>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="ddlSAmount" ErrorMessage="Please Select Amount" 
                        InitialValue="Select Amount" CssClass="style4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b></td>
                <td>
                    </b></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSendRequest" runat="server" onclick="Button1_Click" 
                        Text="Send Request" CssClass="style4" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </asp:Content>