using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 using System.Data.SqlClient;
using System.Drawing;
using System.Data;

public partial class SubscriberPart_PaidSubscriberHomePage : System.Web.UI.Page
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

        }

        if (Session["name"] == null || Session["userType"].ToString() == "admin" || Session["userType"].ToString() == "free")
        {
            Response.Redirect("PaidLogin.aspx");
        }
        else
        {
            // username stored in name session variable
            Label1.Text = Session["name"].ToString();
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
        String SrchQuery = "SELECT tb_Vehicle.vehicle_id, tb_Vehicle.category, tb_Vehicle.v_image, tb_Vehicle.brand, tb_Vehicle.year, tb_Vehicle.distance, tb_Vehicle.condition, tb_Vehicle.price, tb_Register.Name, tb_Register.MobileNo, tb_Register.Email, tb_Register.State, tb_Register.City, tb_Register.Address FROM tb_Register INNER JOIN tb_Vehicle ON tb_Register.Username = tb_Vehicle.username where status = 'Approved'";
        if (ddlCategory.SelectedValue != "")
        {
            SrchQuery = SrchQuery + " and category = '" + ddlCategory.SelectedValue + "'";

            if (ddlBrandName.SelectedValue != "")
            {
                SrchQuery = SrchQuery + " and brand = '" + ddlBrandName.SelectedValue + "'";
            }

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

            if (txtCity.Text != "") 
            {
                SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
            } 
        }

        else if (ddlBrandName.SelectedValue != "")
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

            if (txtCity.Text != "")
            {
                SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
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

            if (txtCity.Text != "")
            {
                SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
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

        else if (txtCity.Text != "")
        {
            SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
        } 
       // Response.Write(SrchQuery);

        SqlDataAdapter objAdapter = new SqlDataAdapter();
        objAdapter.SelectCommand = new SqlCommand();
        objAdapter.SelectCommand.CommandText = SrchQuery;
        objAdapter.SelectCommand.Connection = objConnect;

        DataSet ds = new DataSet();
        objAdapter.Fill(ds);
        objConnect.Close();

        gvSearchVehicles.DataSource = ds.Tables[0];
        gvSearchVehicles.DataBind();

        if (gvSearchVehicles.Rows.Count == 0)
        {
            lblSearchResult.Text = "  Sorry, no vehicle found with such criteria.";
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