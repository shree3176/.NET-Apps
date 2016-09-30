using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{


    protected void UserMenu_MenuItemClick(object sender, MenuEventArgs e)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == "Free")
        {
            FreeMenu.Visible = true;
        }
        else if (Session["userType"] == "Paid")
        {
            PaidMenu.Visible = true;
        }
    }
}
