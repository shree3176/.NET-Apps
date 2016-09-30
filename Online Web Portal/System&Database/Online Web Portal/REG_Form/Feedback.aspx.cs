using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
        objConnect.Open();
        SqlCommand cmd = new SqlCommand("insert into tb_Feedback values('" + txtEmail.Text + "','" + txtFeedback.Text + "', '" + System.DateTime.Now + "') ", objConnect);
        cmd.ExecuteNonQuery();
        objConnect.Close();
    }           
}