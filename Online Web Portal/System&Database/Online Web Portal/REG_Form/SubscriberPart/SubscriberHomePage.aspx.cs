
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");

    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.MasterPageFile = Session["Theme"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Page.IsPostBack != true)
            {
                ddlTheme.SelectedValue = Session["Theme"].ToString();

                ddlCategory.Items.Clear();
                ddlCategory.Items.Add("-- Select Category --");
                ddlCategory.Items.Add("Bicycle");
                ddlCategory.Items.Add("Buses-Tempos-Trucks-Van");
                ddlCategory.Items.Add("Cars");
                ddlCategory.Items.Add("Motorcycles");
                ddlCategory.Items.Add("Scooters");
                ddlCategory.Items.Add("SUVs & Vans");
                ddlCategory.Items.Add("Other Vehicles");

                ddlBrandName.Items.Clear();
                ddlBrandName.Items.Add("-- Select Brand --");
                ddlBrandName.Items.Add("Adly");
                ddlBrandName.Items.Add("Adly");
                ddlBrandName.Items.Add("Aeon");
                ddlBrandName.Items.Add("Bajaj");
                ddlBrandName.Items.Add("BMW");
                ddlBrandName.Items.Add("Ducati");
                ddlBrandName.Items.Add("Hercules");
                ddlBrandName.Items.Add("Hero Honda");
                ddlBrandName.Items.Add("Honda");
                ddlBrandName.Items.Add("Kawasaki");
                ddlBrandName.Items.Add("Kinetic");
                ddlBrandName.Items.Add("LML");
                ddlBrandName.Items.Add("Royal Enfield");
                ddlBrandName.Items.Add("Scooters India");
                ddlBrandName.Items.Add("Suzuki");
                ddlBrandName.Items.Add("TVS Motor");
                ddlBrandName.Items.Add("Yamaha");
                ddlBrandName.Items.Add("");
                ddlBrandName.Items.Add("");

            }

            if (Session["name"] == null || Session["userType"].ToString() == "admin" || Session["userType"].ToString() == "paid")
            {
                Response.Redirect("FreeLogin.aspx");
            }
            else
            {
                // username stored in name session variable
                Label1.Text = Session["name"].ToString();
                // show/hide payment request status as per subscrbr type
                objConnect.Open();
                SqlCommand cmd = new SqlCommand("select * from tb_SubscriptionDetails where username= '" + Label1.Text + "'", objConnect);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
               
                if (dr.HasRows)
                {
                    dr.Read();
                  //  Session["Theme"] = dr.GetValue(6).ToString();
                   // Response.Write(dr.GetValue(5).ToString());
                    if (dr.GetValue(5).ToString() == "Pending")
                    {
                        lbtnSendRequest.Text = "Request has  been already sent";
                        lbtnSendRequest.Enabled = false;
                    }
                    else if (dr.GetValue(5).ToString() == "Paid")
                    {
                        lbtnSendRequest.Text = "Welcome Paid Subscriber";
                        lbtnSendRequest.Enabled = false;
                    }
                }
                objConnect.Close();
            }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddVehicle.aspx");
    }
    protected void lbtnSendRequest_Click(object sender, EventArgs e)
    {
        Response.Redirect("SendRequest.aspx");
    }
    protected void lbtnInbox_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubscriberInbox.aspx");
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("FreeLogin.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String SrchQuery = "Select * from tb_Vehicle where status = 'Approved'";
        if (ddlCategory.SelectedValue != "-- Select Category --") 
        {
            SrchQuery = SrchQuery + " and category = '" + ddlCategory.SelectedValue + "'";

            if (ddlBrandName.SelectedValue != "-- Select Brand --")
            {
                SrchQuery = SrchQuery + " and brand = '" + ddlBrandName.SelectedValue + "'";
            }

            if (txtFromYear.Text != "" && txtToYear.Text=="")
            {
                SrchQuery = SrchQuery + " and year >= '" + txtFromYear.Text + "'";
            }
            if (txtToYear.Text != "" && txtFromYear.Text == "")
            {
                SrchQuery = SrchQuery + " and year <= '" + txtToYear.Text + "'";
            }

            if (txtFromYear.Text != "" && txtToYear.Text != "")
            {
                SrchQuery = SrchQuery + " and year BETWEEN '" + txtFromYear.Text + "' AND '" + txtToYear.Text + "'";
            }

            if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text == "")
            {
                SrchQuery = SrchQuery + " and price >= '" + txtMinimumPrice.Text + "'";
            }
           
            if (txtMinimumPrice.Text == "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price <= '" + txtMaximumPrice.Text + "'";
            }
            
            if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price BETWEEN '" + txtMinimumPrice.Text + "' AND '" + txtMaximumPrice.Text + "'";
            }
        }

        else if (ddlBrandName.SelectedValue != "-- Select Brand --")
        {
            SrchQuery = SrchQuery + " and brand = '" + ddlBrandName.SelectedValue + "'";
         
          if (txtFromYear.Text != "" && txtToYear.Text == "")
          {
              SrchQuery = SrchQuery + " and year >= '" + txtFromYear.Text + "'";
          }
          if (txtToYear.Text != "" && txtFromYear.Text == "")
          {
              SrchQuery = SrchQuery + " and year <= '" + txtToYear.Text + "'";
          }

          if (txtFromYear.Text != "" && txtToYear.Text != "")
          {
              SrchQuery = SrchQuery + " and year BETWEEN '" + txtFromYear.Text + "' AND '" + txtToYear.Text + "'";
          }

          if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text == "")
          {
              SrchQuery = SrchQuery + " and price >= '" + txtMinimumPrice.Text + "'";
          }

          if (txtMinimumPrice.Text == "" && txtMaximumPrice.Text != "")
          {
              SrchQuery = SrchQuery + " and price <= '" + txtMaximumPrice.Text + "'";
          }

          if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text != "")
          {
              SrchQuery = SrchQuery + " and price BETWEEN '" + txtMinimumPrice.Text + "' AND '" + txtMaximumPrice.Text + "'";
          }

        }

       else if (txtFromYear.Text != "" && txtToYear.Text == "")
        {
            SrchQuery = SrchQuery + " and year >= '" + txtFromYear.Text + "'";

            if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text == "")
            {
                SrchQuery = SrchQuery + " and price >= '" + txtMinimumPrice.Text + "'";
            }

            if (txtMinimumPrice.Text == "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price <= '" + txtMaximumPrice.Text + "'";
            }

            if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price BETWEEN '" + txtMinimumPrice.Text + "' AND '" + txtMaximumPrice.Text + "'";
            }
        }

        else if (txtToYear.Text != "" && txtFromYear.Text == "")
        {
            SrchQuery = SrchQuery + " and year <= '" + txtToYear.Text + "'";

            if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text == "")
            {
                SrchQuery = SrchQuery + " and price >= '" + txtMinimumPrice.Text + "'";
            }

            else if (txtMinimumPrice.Text == "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price <= '" + txtMaximumPrice.Text + "'";
            }

            else if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price BETWEEN '" + txtMinimumPrice.Text + "' AND '" + txtMaximumPrice.Text + "'";
            }
        }

        else if (txtFromYear.Text != "" && txtToYear.Text != "")
        {
            SrchQuery = SrchQuery + " and year BETWEEN '" + txtFromYear.Text + "' AND '" + txtToYear.Text + "'";

            if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text == "")
            {
                SrchQuery = SrchQuery + " and price >= '" + txtMinimumPrice.Text + "'";
            }

            else if (txtMinimumPrice.Text == "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price <= '" + txtMaximumPrice.Text + "'";
            }

            else if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text != "")
            {
                SrchQuery = SrchQuery + " and price BETWEEN '" + txtMinimumPrice.Text + "' AND '" + txtMaximumPrice.Text + "'";
            }
        }
        
        else if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text == "")
        {
            SrchQuery = SrchQuery + " and price >= '" + txtMinimumPrice.Text + "'";
        }

        else if (txtMinimumPrice.Text == "" && txtMaximumPrice.Text != "")
        {
            SrchQuery = SrchQuery + " and price <= '" + txtMaximumPrice.Text + "'";
        }

        else if (txtMinimumPrice.Text != "" && txtMaximumPrice.Text != "")
        {
            SrchQuery = SrchQuery + " and price BETWEEN '" + txtMinimumPrice.Text + "' AND '" + txtMaximumPrice.Text + "'";
        }

    //    Response.Write(SrchQuery);

        SqlDataAdapter objAdapter = new SqlDataAdapter();
        objAdapter.SelectCommand = new SqlCommand();
        objAdapter.SelectCommand.CommandText = SrchQuery;
        objAdapter.SelectCommand.Connection = objConnect;

        DataSet ds = new DataSet();
        objAdapter.Fill(ds);
        objConnect.Close();

        gvSearchVehicles.DataSource = ds.Tables[0];
        gvSearchVehicles.DataBind();

        if (gvSearchVehicles.Rows.Count == 0){
            lblSearchResult.Text = "Sorry, no vehicle found with such criteria.";
        }
    }
    protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Theme"] = ddlTheme.SelectedValue;
        Response.Redirect("SubscriberHomePage.aspx");
    }
    protected void btnTheme_Click(object sender, EventArgs e)
    {
        objConnect.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update tb_Register set ThemeSelected = '" + ddlTheme.SelectedValue + "' where Username = '" + Session["name"].ToString() + "'";
        cmd.Connection = objConnect;
        cmd.ExecuteNonQuery();
        objConnect.Close();
    }

    
    
}