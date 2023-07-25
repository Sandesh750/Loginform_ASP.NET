using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into user_info"  + "(username,password) values (@username,@password)" , con);
            cmd.Parameters.AddWithValue("@username",txtUname.Text);
            cmd.Parameters.AddWithValue("@password", txtPass.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Text = "Successful Register";
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
