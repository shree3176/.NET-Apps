<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="SendMessage.aspx.cs" Inherits="SendMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
<div>
    <h2>Send Message To Subscriber</h2>

    
      <p>
    To:<asp:CheckBoxList 
              ID="chkbxUsername" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="Username" 
        DataValueField="Username" 
        onselectedindexchanged="CheckBoxList1_SelectedIndexChanged" 
                RepeatDirection="Horizontal">
    </asp:CheckBoxList>
          <asp:Label ID="lblSelectUser" runat="server" style="color: #FF0000"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbWPTLConnectionString %>" 
        SelectCommand="SELECT [Username] FROM [tb_Register]"></asp:SqlDataSource>
</p>
        <p>
            Subject&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtSubject" ErrorMessage="Please Enter Subject"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtSubject" ErrorMessage="Only letters and numbers allowed." 
                ValidationExpression="[\w ]*" Display="Dynamic"></asp:RegularExpressionValidator>
</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtMessage" runat="server" Height="118px" TextMode="MultiLine" 
            Width="329px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtMessage" ErrorMessage="Please Enter Message"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtMessage" Display="Dynamic" 
                ErrorMessage="Only letters and numbers allowed." 
                ValidationExpression="[\w ]*"></asp:RegularExpressionValidator>
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSend" runat="server" Text="Send" onclick="btn_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblFeed" runat="server" ForeColor="#33CC33" 
                style="color: #FF0000"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;
</p>    
    </div>
</asp:Content>
