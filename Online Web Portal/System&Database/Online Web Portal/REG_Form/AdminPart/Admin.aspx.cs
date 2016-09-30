using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] !="admin")
        {
            Session["error"] = "auth";
            Response.Redirect("login.aspx");
        }
       
    }
    protected void ibtnAddSubscriber_Click(object sender, ImageClickEventArgs e)
    {
        
        Response.Redirect("AddNewSubscriber.aspx");
    }
    protected void ibtnDeleteSubscriber_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("DeleteSubscriber.aspx");
    }
    protected void ibtnChangeStatus_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SetMemberStatus.aspx");
    }
    protected void ibtnViewSubscribers_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ViewSubscribers.aspx");
    }

    protected void ibtnAddVehicle_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Admin_AddVehicle.aspx");
    }


    protected void ibtnDeleteVehicle_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("DeleteVehicle.aspx");
    }
    protected void ibtnArVehicle_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ArVehicle.aspx");
    }
    protected void ibtnSearchVehicle_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AdminSearchVehicle.aspx");
    }
    protected void ibtnSendMessage_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SendMessage.aspx");
    }
}