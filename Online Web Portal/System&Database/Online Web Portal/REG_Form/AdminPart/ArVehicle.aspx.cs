using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("login.aspx");
        }
    }
    protected void btnApprove_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tb_Vehicle", con);
        int i;
        CheckBox chkUser;
        con.Open();

        for (i = 0; i <= gvAprRej.Rows.Count - 1; i++)
        {
            chkUser = (CheckBox)gvAprRej.Rows[i].FindControl("chkSelectVehicle");
            if (chkUser.Checked == true)
            {
                String newStatus = "Approved";
                cmd.CommandText = "Update tb_Vehicle set status = '" + newStatus + "' where vehicle_id =  " + Convert.ToInt32(gvAprRej.Rows[i].Cells[0].Text) + "";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();   
            }
        }
        con.Close();
        gvAprRej.DataBind();
    }
    protected void btnReject_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tb_Vehicle", con);
        int i;
        CheckBox chkUser;
        con.Open();

        for (i = 0; i <= gvAprRej.Rows.Count - 1; i++)
        {
            chkUser = (CheckBox)gvAprRej.Rows[i].FindControl("chkSelectVehicle");
            if (chkUser.Checked == true)
            {
                String newStatus = "Rejected";
                cmd.CommandText = "Update tb_Vehicle set status = '" + newStatus + "' where vehicle_id = " + Convert.ToInt32(gvAprRej.Rows[i].Cells[0].Text) + "";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }
        }
        con.Close();
        gvAprRej.DataBind();
    }
}