using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lbtnGiveFeedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Feedback.aspx");

    }
    protected void ibtnMemberLogin_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SubscriberPart/FreeLogin.aspx");
    }
    protected void ibtnRegister_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SubscriberPart/Registration.aspx");
    }
    protected void ibtnFeedback_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Feedback.aspx");
    }
}