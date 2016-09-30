using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


public partial class AddVehicle : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"] != "admin")
        {
            Session["error"] = "auth";
            Response.Redirect("login.aspx");
        }
        // Label1.Text = Session["name"].ToString();
        else
        {
            if (Page.IsPostBack != true)
            {
                ddlCategory.Items.Clear();
                ddlCategory.Items.Add("Bicycle");
                ddlCategory.Items.Add("Buses-Tempos-Trucks-Van");
                ddlCategory.Items.Add("Cars");
                ddlCategory.Items.Add("Motorcycles");
                ddlCategory.Items.Add("Scooters");
                ddlCategory.Items.Add("SUVs & Vans");
                ddlCategory.Items.Add("Other Vehicles");

                ddlBrandName.Items.Clear();
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
            ddlYear.Items.Add("-- Select Year --");
            for (int i = 1980; i <= 2014; i++)
            {
                ddlYear.Items.Add(i.ToString());
            }
        }
    }

        protected void Button2_Click(object sender, EventArgs e)
    {
        String category = ddlCategory.SelectedValue;
        String brand = ddlBrandName.SelectedValue;
        String year = ddlYear.SelectedValue;
        String price = txtPrice.Text;
        String distance = txtDistance.Text;
        String condition = ddlCondition.SelectedValue;
        String status = "Pending";

        string path = Server.MapPath("uploads/");
        if (fuVehiclePhoto.HasFile)
        {
            string ext = Path.GetExtension(fuVehiclePhoto.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                fuVehiclePhoto.SaveAs(path + fuVehiclePhoto.FileName);
                string name = "~/uploads/" + fuVehiclePhoto.FileName;
                objConnect.Open();
                SqlCommand cmd = new SqlCommand("insert into tb_Vehicle values('" + Label1.Text + "','" + category + "', '" + path + "','" + brand + "','" + year + "','" + distance + "', '" + condition + "','" + price + "','" + status + "') ", objConnect);
                cmd.ExecuteNonQuery();
                objConnect.Close();

                lblStatusMsg.Text = "Your vehicle information has been uploaded";
            }
            else
            {
                lblPhotoMSg.Text = "You can upload only jpg ang png file only";
            }
        }
        else
        {
            lblPhotoMSg.Text = "Please select an image";
        }
    }
    
    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedValue == "Bicycle")
        {
            ddlBrandName.Items.Clear();
            ddlBrandName.Items.Add("Hercules");
            ddlBrandName.Items.Add("Hero");
            ddlBrandName.Items.Add("Avon");
        }
        else
        {
            ddlBrandName.Items.Clear();
            ddlBrandName.Items.Add("Bajaj");
            ddlBrandName.Items.Add("Hero Honda");
            ddlBrandName.Items.Add("Honda");
            ddlBrandName.Items.Add("Suzuki");
            ddlBrandName.Items.Add("TVS Motor");
            ddlBrandName.Items.Add("Yamaha");
        }
    }
      
    }

