using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminSearchVehicle : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("login.aspx");
        }

        else {

            if (Page.IsPostBack != true)
            {
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

                ddlYear.Items.Clear();
                ddlYear.Items.Add("-- Select Year --");
                for (int i = 1980; i <= 2014; i++)
                {
                    ddlYear.Items.Add(i.ToString());
                }

                ddlPrice.Items.Clear();
                ddlPrice.Items.Add("-- Select Price Range --");
                ddlPrice.Items.Add("Above 90,000");
                ddlPrice.Items.Add("50,000 To 90,000");
                ddlPrice.Items.Add("Below 50,000");

            }

        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        String SrchQuery = "SELECT tb_Vehicle.vehicle_id, tb_Vehicle.category, tb_Vehicle.v_image, tb_Vehicle.brand, tb_Vehicle.year, tb_Vehicle.distance, tb_Vehicle.condition, tb_Vehicle.price, tb_Register.Name, tb_Register.MobileNo, tb_Register.Email, tb_Register.State, tb_Register.City, tb_Register.Address FROM tb_Register INNER JOIN tb_Vehicle ON tb_Register.Username = tb_Vehicle.username ";
      if (ddlCategory.SelectedValue != "-- Select Category --") 
        {
            SrchQuery = SrchQuery + " where tb_Vehicle.category = '" + ddlCategory.SelectedValue + "'";

            if (ddlBrandName.SelectedValue != "-- Select Brand --")
            {
                SrchQuery = SrchQuery + " and brand = '" + ddlBrandName.SelectedValue + "'";
            }

            if (ddlYear.SelectedValue != "-- Select Year --" )
            {
                SrchQuery = SrchQuery + " and year = '" + ddlYear.SelectedValue + "'";
            }

            if (ddlPrice.SelectedValue != "-- Select Price Range --")
            {
                if (ddlPrice.SelectedValue == "Above 90,000")
                {
                    SrchQuery = SrchQuery + " and price >= '" + ddlPrice.SelectedValue + "'";
                }
                else if (ddlPrice.SelectedValue == "50,000 To 90,000")
                {
                    SrchQuery = SrchQuery + " and price BETWEEN '50000' AND '90000'";
                }
                else if (ddlPrice.SelectedValue == "Below 50,000")
                {
                    SrchQuery = SrchQuery + " and price <= '50000'";
                }
            }

            if (txtCity.Text != "")
            {
                SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
            } 
        }

      else if (ddlBrandName.SelectedValue != "-- Select Brand --")
        {
            SrchQuery = SrchQuery + " where brand = '" + ddlBrandName.SelectedValue + "'";

            if (ddlYear.SelectedValue != "-- Select Year --")
            {
                SrchQuery = SrchQuery + " and year = '" + ddlYear.SelectedValue + "'";
            }

            if (ddlPrice.SelectedValue != "-- Select Price Range --")
            {
                if (ddlPrice.SelectedValue == "Above 90,000")
                {
                    SrchQuery = SrchQuery + " and price >= '" + ddlPrice.SelectedValue + "'";
                }
                else if (ddlPrice.SelectedValue == "50,000 To 90,000")
                {
                    SrchQuery = SrchQuery + " and price BETWEEN '50000' AND '90000'";
                }
                else if (ddlPrice.SelectedValue == "Below 50,000")
                {
                    SrchQuery = SrchQuery + " and price <= '50000'";
                }
            }

            if (txtCity.Text != "")
            {
                SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
            } 

        }

       else if (ddlYear.SelectedValue != "-- Select Year --")
            {
                SrchQuery = SrchQuery + " where year = '" + ddlYear.SelectedValue + "'";
               if (ddlPrice.SelectedValue != "-- Select Price Range --")
           
                if (ddlPrice.SelectedValue == "Above 90,000")
                {
                    SrchQuery = SrchQuery + " and price >= '" + ddlPrice.SelectedValue + "'";
                }
                else if (ddlPrice.SelectedValue == "50,000 To 90,000")
                {
                    SrchQuery = SrchQuery + " and price BETWEEN '50000' AND '90000'";
                }
                else if (ddlPrice.SelectedValue == "Below 50,000")
                {
                    SrchQuery = SrchQuery + " and price <= '50000'";
                }

               if (txtCity.Text != "")
               {
                   SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
               } 
            } 

       else if (ddlPrice.SelectedValue == "Above 90,000")
                {
                    SrchQuery = SrchQuery + " where price >= '" + ddlPrice.SelectedValue + "'";
                }
                else if (ddlPrice.SelectedValue == "50,000 To 90,000")
                {
                    SrchQuery = SrchQuery + " where price BETWEEN '50000' AND '90000'";
                }
                else if (ddlPrice.SelectedValue == "Below 50,000")
                {
                    SrchQuery = SrchQuery + " where price <= '50000'";
                }
       else if (txtCity.Text != "")
       {
          SrchQuery = SrchQuery + " and tb_Register.City = '" + txtCity.Text + "'";
       } 

     //   Response.Write(SrchQuery);

        SqlDataAdapter objAdapter = new SqlDataAdapter();
        objAdapter.SelectCommand = new SqlCommand();
        objAdapter.SelectCommand.CommandText = SrchQuery;
        objAdapter.SelectCommand.Connection = objConnect;

        DataSet ds = new DataSet();
        objAdapter.Fill(ds);
        objConnect.Close();

        gvAdminSearchVehicle.DataSource = ds.Tables[0];
        gvAdminSearchVehicle.DataBind();

        if (gvAdminSearchVehicle.Rows.Count == 0)
        {
            lblSearchResult.Text = "Sorry, No vehicle found with such criteria";
        //    Response.Write("No vehicle found");
        }
        
    
    }

    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlBrandName_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}