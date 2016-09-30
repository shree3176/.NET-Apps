using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
public partial class ViewSubscribers : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbWPTLConnectionString3"].ConnectionString;
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("~/login.aspx");
        }
        else
        {
            SqlCommand command = new SqlCommand("SELECT [Username], [Name], [MobileNo], [Email], [State], [City], [Address], [Subscription] FROM [tb_Register]", objConnect);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gvViewSubscriber.DataSource = dt;
            gvViewSubscriber.DataBind();
        }
    }
    protected void btnView_Click(object sender, EventArgs e)
    {

    }
    protected void ddlSelectsub_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSelectsub.SelectedValue == "Free Subscriber")
        {
            SqlCommand command = new SqlCommand("SELECT [Username], [Name], [MobileNo], [Email], [State], [City], [Address], [Subscription] FROM [tb_Register] WHERE Subscription = 'Free'", objConnect);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gvViewSubscriber.DataSource = dt;
            gvViewSubscriber.DataBind();
        }
        else if (ddlSelectsub.SelectedValue == "Paid Subscribers")
        {
            SqlCommand command = new SqlCommand("SELECT [Username], [Name], [MobileNo], [Email], [State], [City], [Address], [Subscription] FROM [tb_Register] WHERE Subscription = 'Paid'", objConnect);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gvViewSubscriber.DataSource = dt;
            gvViewSubscriber.DataBind();
        }
        else {
            SqlCommand command = new SqlCommand("SELECT [Username], [Name], [MobileNo], [Email], [State], [City], [Address], [Subscription] FROM [tb_Register]", objConnect);
            SqlDataAdapter daimages = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            daimages.Fill(dt);
            gvViewSubscriber.DataSource = dt;
            gvViewSubscriber.DataBind();
        }
    }
}