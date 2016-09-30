using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            ddlState.Items.Clear();
            ddlState.Items.Add("Select State");
            ddlState.Items.Add("Andra Pradesh");
            ddlState.Items.Add("Arunachal Pradesh");
            ddlState.Items.Add("Assam");
            ddlState.Items.Add("Bihar");
            ddlState.Items.Add("Chhattisgarh");
            ddlState.Items.Add("Goa");
            ddlState.Items.Add("Gujarat");
            ddlState.Items.Add("Haryana");
            ddlState.Items.Add("Himachal Pradesh");
            ddlState.Items.Add("Jammu and Kashmir");
            ddlState.Items.Add("Jharkhand");
            ddlState.Items.Add("Karnataka");
            ddlState.Items.Add("Kerala");
            ddlState.Items.Add("Madhya Pradesh");
            ddlState.Items.Add("Maharashtra");
            ddlState.Items.Add("Manipur");
            ddlState.Items.Add("Meghalaya");
            ddlState.Items.Add("Mizoram");
            ddlState.Items.Add("Nagaland");
            ddlState.Items.Add("Orissa");
            ddlState.Items.Add("Punjab");
            ddlState.Items.Add("Rajasthan");
            ddlState.Items.Add("Sikkim");
            ddlState.Items.Add("Tamil Nadu");
            ddlState.Items.Add("Thiruvananthapuram");
            ddlState.Items.Add("Tripura");
            ddlState.Items.Add("Uttaranchal");
            ddlState.Items.Add("Uttar Pradesh");
            ddlState.Items.Add("West Bengal");
        }
    }
    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tb_Register where Username='" + txtUsername.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Label1.Text = "User Name Already Exists";
            this.Label1.ForeColor = Color.Red;
         //   Response.Redirect("Registration.aspx");
        }
        else
        {
            Label1.Text = "UserName is Available";
            this.Label1.ForeColor = Color.Red;
        }
        con.Close();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
{
    SqlConnection con1 = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
    con1.Open();
    SqlCommand cmd1 = new SqlCommand("select * from tb_Register where Username='" + txtUsername.Text + "'", con1);
    SqlDataReader dr = cmd1.ExecuteReader();

    if (dr.Read())
    {
        Response.Write("<script language='javascript'>alert('Username not Available!! Please select another one.')</script>");

    }


    captcha1.ValidateCaptcha(txtCaptchaImage.Text.Trim());
    if (captcha1.UserValidated)
    {
        
        String subscriptionStatus = "Free";
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
        con.Open();
        String str = "insert into tb_Register values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtName.Text + "','" + txtMobileno.Text + "','" + txtEmail.Text + "','" + ddlState.SelectedValue + "','" + ddlCity.SelectedValue + "', '" + txtAddress.Text + "','" + subscriptionStatus + "', 'SubscriberSite.master')";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();

        Session["name"] = txtUsername.Text;
        Response.Redirect("SubscriberHomePage.aspx");
        con.Close();
    }
    else
    {
        //Response.Redirect("Registration.aspx");
        Label2.ForeColor = System.Drawing.Color.Red;
        Label2.Text = "You have Entered InValid Captcha Characters please Enter again";
    }
        
}

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlState.SelectedValue == "Maharashtra")
        {
            ddlCity.Items.Add("Mumbai");
            ddlCity.Items.Add("Pune");
            ddlCity.Items.Add("Nagpur");
        }

        if (ddlState.SelectedValue == "Haryana")
        {
            ddlCity.Items.Add("Panipat");
            ddlCity.Items.Add("Ambala");
            ddlCity.Items.Add("Kurukshetra");
        }
        if (ddlState.SelectedValue == "Andra Pradesh")
        {
            ddlCity.Items.Add("Hyderabad");
            ddlCity.Items.Add("Vishakhapatnam");
            ddlCity.Items.Add("Tirupati");
        }
        if (ddlState.SelectedValue == "Punjab")
        {
            ddlCity.Items.Add("Jalandhar");
            ddlCity.Items.Add("Amritsar");
            ddlCity.Items.Add("Ludhiana");
        }

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("FreeLogin.aspx");
    }
}