using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("login.aspx");
        }
        if (Page.IsPostBack != true)
        {
            ddlState.Items.Clear();
            ddlState.Items.Add("-- Select State --");
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tb_Register where Username='" + txtUsername.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Label1.Text = "User Name Already Exists";
            this.Label1.ForeColor = Color.Red;
        }
        else
        {
            Label1.Text = "UserName is Available";
            this.Label1.ForeColor = Color.Red;
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String subscriptionStatus = "Free";
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
        con.Open();
        String str = "insert into tb_Register values('" + txtUsername.Text + "','" + txtPassword.Text + "','"+ txtName.Text +"','" + txtMobileno.Text + "','" + txtEmail.Text + "','" + ddlState.SelectedValue + "','" + ddlCity.SelectedValue + "', '" + txtAddress.Text + "','" + subscriptionStatus + "')";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();

        Session["name"] = txtUsername.Text;
        Response.Redirect("default.aspx");
        con.Close();
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
            ddlCity.Items.Add("Karnal");
            ddlCity.Items.Add("Ambala");
        }
        if (ddlState.SelectedValue == "Punjab")
        {
            ddlCity.Items.Add("Chandigarh");
            ddlCity.Items.Add("Ludhiana");
            ddlCity.Items.Add("Patiala");
        }
        if (ddlState.SelectedValue == "Himachal Pradesh")
        {
            ddlCity.Items.Add("Shimla");
            ddlCity.Items.Add("Kangra");
            ddlCity.Items.Add("Manali");
        }
        if (ddlState.SelectedValue == "Andhra Pradesh")
        {
            ddlCity.Items.Add("Hyderabad");
            ddlCity.Items.Add("Vijayawada");
            ddlCity.Items.Add("Tirupati");
        }
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}