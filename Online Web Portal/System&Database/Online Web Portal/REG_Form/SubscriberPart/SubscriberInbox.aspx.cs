using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubscriberInbox : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.MasterPageFile = Session["Theme"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["name"].ToString();

        if (gvSubInbox.Rows.Count == 0){
            lblMessage.Text = "There are no messages for you yet.";
        }
    }
} 