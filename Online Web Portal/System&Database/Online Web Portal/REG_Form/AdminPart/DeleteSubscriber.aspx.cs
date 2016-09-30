using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("login.aspx");
        }
    }

    protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        objConnect.Open();
        if (e.CommandName == "DeleteCommand")
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from tb_Register where Username = '" + gvDeleteSubscriber.Rows[Convert.ToInt16(e.CommandArgument)].Cells[0].Text + "'";
            cmd.Connection = objConnect;
            cmd.ExecuteNonQuery();
        }

        objConnect.Close();
        gvDeleteSubscriber.DataBind();
    }

}