using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;

public partial class AddVehicle : System.Web.UI.Page
{
    SqlConnection objConnect = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
    protected void Page_PreInit(object sender, EventArgs e)
    {
        Page.MasterPageFile = Session["Theme"].ToString();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUsername.Text = Session["name"].ToString();
        
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

        for (int i = 1980; i <= 2014; i++)
        {
            ddlYear.Items.Add(i.ToString());
        }
    }

        protected void Button2_Click(object sender, EventArgs e)
    {
        //SqlCommand objCmd = new SqlCommand("Insert into tb_UploadVehicle values (@uvImage,'" + lblRegisterUser.Text + "','" + dd_category.SelectedItem + "','" + dd_brand.SelectedItem + "','" + dd_model.SelectedItem + "','" + dd_year.SelectedItem + "','" + txtkmdrive.Text.Trim() + "','" + dd_condition.SelectedItem + "','" + txtprice.Text.Trim() + "','" + lblVehicleStatus.Text + "')");

        String category = ddlCategory.SelectedValue;
        String brand = ddlBrandName.SelectedValue;
        String year = ddlYear.SelectedValue;
        String price = txtPrice.Text;
        String distance = txtDistance.Text;
        String condition = ddlCondition.SelectedValue;
    //    String status = "Pending";

            Stream imgStream;
            int imgLength;
            byte[] imgBinaryData;
            string path = Server.MapPath("Images/");
   
            if (fuVehiclePhoto.HasFile)
            {
            string ext = Path.GetExtension(fuVehiclePhoto.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
          //  lblStatusMsg.Text = "pending";
            SqlCommand objCmd = new SqlCommand ("insert into tb_Vehicle values('" + lblUsername.Text + "','" + category + "', @uvImage ,'" + brand + "','" + year + "','" + distance + "', '" + condition + "','" + price + "','Pending')");
            objCmd.Connection = objConnect;
         
            objConnect.Open();
            imgLength = fuVehiclePhoto.PostedFile.ContentLength;
            imgStream = fuVehiclePhoto.PostedFile.InputStream;
            imgBinaryData = new Byte[imgLength];
            imgStream.Read(imgBinaryData,0,imgLength);

            SqlParameter paramimage = new SqlParameter("@uvImage",SqlDbType.Image);
            paramimage.Value = imgBinaryData;
            objCmd.Parameters.Add(paramimage);
            objCmd.ExecuteNonQuery();

            objConnect.Close();

            if (Session["userType"] == "free")
            {
                Response.Redirect("SubscriberHomePage.aspx");
            }
            else {
                Response.Redirect("PaidSubscriberHomePage.aspx");
            }

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