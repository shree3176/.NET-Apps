using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class InsertThruAdap : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    SqlDataAdapter objAdapter = new SqlDataAdapter();
    DataRow dr;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        objAdapter.SelectCommand = new SqlCommand();
        objAdapter.SelectCommand.CommandText = "Select * from person_info";
        objAdapter.SelectCommand.Connection = objConnect;
        ds= new DataSet();
        objAdapter.Fill(ds);
        dr = ds.Tables[0].NewRow();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         
        objAdapter.InsertCommand = new SqlCommand();
        objAdapter.InsertCommand.CommandText = "insert into person_info values(id, name, phone, email)";
        objAdapter.InsertCommand.Connection = objConnect;
        
        dr.ItemArray[0] = TextBox1.Text;
        dr.ItemArray[1] = TextBox2.Text;
        dr.ItemArray[2] = TextBox3.Text;
        dr.ItemArray[3] = TextBox4.Text;

        ds.Tables[0].Rows.Add(dr);

        objConnect.Open();
        objAdapter.Update(ds);
        objConnect.Close();

    }
}