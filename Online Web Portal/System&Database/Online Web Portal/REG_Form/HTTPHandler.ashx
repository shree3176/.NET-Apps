<%@ WebHandler Language="C#" Class="HTTPHandler" %>

using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class HTTPHandler : IHttpHandler {
    
    public void ProcessRequest(HttpContext context)
    {
        string VID = context.Request.QueryString["VID"];
        String ImageID = context.Request.QueryString["ImageID"];
           
        SqlConnection connection = new SqlConnection("Data Source=.;Initial Catalog=dbWPTL;Integrated Security=True");
        connection.Open();

        SqlCommand command = new SqlCommand("select v_image from tb_Vehicle where vehicle_id=" + VID, connection);
        SqlDataReader dr = command.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);

        connection.Close();
        context.Response.End();
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}