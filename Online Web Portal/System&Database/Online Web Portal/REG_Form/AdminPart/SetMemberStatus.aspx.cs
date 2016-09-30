using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class SetMemberStatus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("~/login.aspx");
        }
    }
    protected void btnSetFree_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tb_SubscriptionDetails", con);
        SqlCommand cmd1 = new SqlCommand("select * from tb_Register", con);

        int i;
        CheckBox chkUser;
        con.Open();

        for (i = 0; i <= gvPaymentDetails.Rows.Count - 1; i++) 
        {
            chkUser = (CheckBox)gvPaymentDetails.Rows[i].FindControl("chkSelectUser");
            if (chkUser.Checked == true) {
                String newStatus = "Free";
                cmd.CommandText = "Update tb_SubscriptionDetails set status = '" + newStatus + "' where username = '" + gvPaymentDetails.Rows[i].Cells[0].Text + "'";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                cmd1.CommandText = "Update tb_Register set Subscription = t2.status FROM tb_Register t1 INNER JOIN tb_SubscriptionDetails t2 ON t1.Username = t2.username where t1.username = '" + gvPaymentDetails.Rows[i].Cells[0].Text + "'";
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
            }
        }
        con.Close();
        gvPaymentDetails.DataBind();
    }
    protected void btnSetPaid_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tb_SubscriptionDetails", con);
        SqlCommand cmd1 = new SqlCommand("select * from tb_Register", con);
        int i;
        CheckBox chkUser;
        con.Open();

        for (i = 0; i <= gvPaymentDetails.Rows.Count - 1; i++)
        {
            chkUser = (CheckBox)gvPaymentDetails.Rows[i].FindControl("chkSelectUser");
            if (chkUser.Checked == true)
            {
                String newStatus = "Paid";
               // cmd.CommandText = "Update tb_Register set Subscription = '" + newStatus + "' where Username = '" + gvPaymentDetails.Rows[i].Cells[0].Text + "'";
               
                cmd.CommandText = "Update tb_SubscriptionDetails set status = '" + newStatus + "' where username = '" + gvPaymentDetails.Rows[i].Cells[0].Text + "'";
               
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                cmd1.CommandText = "Update tb_Register set Subscription = t2.status FROM tb_Register t1 INNER JOIN tb_SubscriptionDetails t2 ON t1.Username = t2.username where t1.username = '" + gvPaymentDetails.Rows[i].Cells[0].Text + "'";

                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();


//                UPDATE tb_Register
//SET Subscription = t2.status
//FROM tb_Register t1
//INNER JOIN tb_SubscriptionDetails t2 ON t1.Username = t2.username
//WHERE t1.Subscription ='Free';
            }
        }
        con.Close();
        gvPaymentDetails.DataBind();
    }
}