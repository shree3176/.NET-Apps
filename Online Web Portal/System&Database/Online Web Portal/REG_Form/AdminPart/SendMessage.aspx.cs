using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SendMessage : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("login.aspx");
        }
        else
        {
            chkbxUsername.RepeatColumns = 3;
        }
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        String Subject = txtSubject.Text;
        String Message = txtMessage.Text;
        int cnt = 0;
        int i;
        // for selecting multiple values
        for (i = 0; i <= chkbxUsername.Items.Count - 1; i++)
        {
            if (chkbxUsername.Items[i].Selected == true)
            {
                objConnect.Open();
                SqlCommand cmd = new SqlCommand("insert into tb_MessageHistory values('" + chkbxUsername.Items[i].Value + "','" + Subject + "','" + Message + "', '" + System.DateTime.Now + "') ", objConnect);
                cmd.ExecuteNonQuery();
                objConnect.Close();
                cnt++;
                //Response.Write(CheckBoxList1.Items[i].Value);
            }
            else {
                lblFeed.Text = "Please select username to send message.";
               
            }
         
         //   Response.Write(cnt);
            }

    }
}