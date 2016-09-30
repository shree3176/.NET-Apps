using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SendRequest : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.MasterPageFile = Session["Theme"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["name"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String paymemtMode=ddlPaymentMode.SelectedValue;
        String chqNo = txtCorDNo.Text;
        String date = System.DateTime.Now.ToString();
        String sAmount = ddlSAmount.SelectedValue;
        String status = "Pending";

        // inserting payment details
        objConnect.Open();
        SqlCommand cmd = new SqlCommand("insert into tb_SubscriptionDetails values('" + Label1.Text + "','" + paymemtMode + "', '" + chqNo + "','" + date + "','" + sAmount + "','" + status + "') ", objConnect);
        cmd.ExecuteNonQuery();
        objConnect.Close();
        Session["RequestSent"] = "true";
       // redirectin to home page after submittin pymnt dtls
        Response.Redirect("SubscriberHomePage.aspx");
       

        

    }
}