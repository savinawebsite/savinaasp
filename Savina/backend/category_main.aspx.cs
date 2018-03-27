using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

public partial class backend_category_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string addCategory(string cateName, string desc)
    {
        /*
        string msg = "";
        SqlConnection con = new SqlConnection("Data Source=Nilu;Initial Catalog=mydb;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into tbl_data values(@name, @email,@designation,@city)", con);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@designation", designation);
        cmd.Parameters.AddWithValue("@city", city);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        if (i == 1)
        {
            msg = "true";
        }
        else
        {
            msg = "false";
        }
        */

        return "";

    }
}