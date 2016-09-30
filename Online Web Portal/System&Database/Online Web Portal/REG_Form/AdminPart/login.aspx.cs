using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["error"].ToString() == "auth")
        //{
        //Response.Write("<script language='javascript'>alert('You are not authenticated user.')</script>");
        //}
    }
    protected void btnAdminLogin_Click(object sender, EventArgs e)
    { 
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM tb_Admin WHERE a_username='" + txtUsername.Text + "' and a_password='" + txtPassword.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
           // Session["userType"] = "admin";
            Session["userType"] = "admin";
       //     Session["name"] = txtUsername.Text; 
            Response.Redirect("Admin.aspx");
        }
        else
        {
            Label1.Text = "Invalid username or password";
            this.Label1.ForeColor = Color.Red;
        }

       
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
    }
}