using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;


public partial class PaidLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPaidLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tb_Register WHERE Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "' and Subscription= 'Paid'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["Theme"] = dr.GetValue(9).ToString();
            if (dr.GetValue(0).ToString() == txtUsername.Text && dr.GetValue(1).ToString() == txtPassword.Text)
            {
                Session["userType"] = "Paid";
                Session["name"] = txtUsername.Text;
                Response.Redirect("PaidSubscriberHomePage.aspx");
            }
            else
            {
                lblErrMessage.Text = "Invalid username or password";
                this.lblErrMessage.ForeColor = Color.Red;
            }
        }
        else
        {
            lblErrMessage.Text = "Either you are paid subscriber or not subscribed yet !!!";
            this.lblErrMessage.ForeColor = Color.Red;
        }
    }
    protected void btnFreeLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("FreeLogin.aspx");
    }
}