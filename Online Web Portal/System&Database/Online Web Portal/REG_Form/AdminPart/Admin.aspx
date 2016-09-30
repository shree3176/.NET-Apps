<%@ Page Title="" Language="C#" MasterPageFile="AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
   <div><h2>Admin Home Page</h2>

       &nbsp;<asp:ImageButton ID="ibtnAddSubscriber" runat="server" 
           ImageUrl="~/Images/user-add-icon.png" onclick="ibtnAddSubscriber_Click" 
           Height="118px" ToolTip="Click to Add Subscriber" Width="118px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ImageButton ID="ibtnDeleteSubscriber" runat="server" 
           ImageUrl="~/Images/Actions-user-group-delete-icon.png" Height="118px" 
           ToolTip="Click Here to Delete Subscriber " Width="118px" 
           onclick="ibtnDeleteSubscriber_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       <asp:ImageButton ID="ibtnChangeStatus" runat="server" 
           ImageUrl="~/Images/Male-user-edit-icon.png" Height="118px" 
           ToolTip="Click Here to Change Status of Subscriber" Width="118px" 
           onclick="ibtnChangeStatus_Click" />

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ImageButton ID="ibtnViewSubscribers" runat="server" Height="118px" 
           ImageUrl="~/Images/view_subscribers.png" ToolTip="Click toView all Subscribers" 
           Width="118px" onclick="ibtnViewSubscribers_Click" />
       <br />
       <asp:ImageButton ID="ibtnAddVehicle" runat="server" Height="144px" 
           ImageUrl="~/Images/add_vehicle.jpg" Width="181px" 
           onclick="ibtnAddVehicle_Click" ToolTip="Click Here to Add Vehicle" />
       <asp:ImageButton ID="ibtnDeleteVehicle" runat="server" Height="144px" 
           ImageUrl="~/Images/delete_vehicle.PNG" Width="183px" 
           ToolTip="Click here to Delete Vehicle" onclick="ibtnDeleteVehicle_Click" />
       <asp:ImageButton ID="ibtnArVehicle" runat="server" Height="129px" 
           ImageUrl="~/Images/ar_vehicle.PNG" Width="162px" 
           ToolTip="Click Here to Approve or Reject Vehicle" 
           onclick="ibtnArVehicle_Click" />
       <asp:ImageButton ID="ibtnSearchVehicle" runat="server" Height="132px" 
           ImageUrl="~/Images/search_vehicle.PNG" Width="161px" 
           ToolTip="Click Here to Search Vehicle" onclick="ibtnSearchVehicle_Click" />
       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:ImageButton ID="ibtnSendMessage" runat="server" Height="118px" 
           ImageUrl="~/Images/new-message-icon.png" Width="118px" 
           ToolTip="Click Here to Send Message to Subscriber" 
           onclick="ibtnSendMessage_Click" />

   </div>
</asp:Content>

