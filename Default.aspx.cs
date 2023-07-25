using System;
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

public partial class _Default : System.Web.UI.Page 
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
            SqlCommand cmd = new SqlCommand("select count(*) from user_info where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteReader();
            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["username"] = TextBox1.Text;
                Response.Write("<script> alert('Successful in login') </script>");
                Response.Redirect("~/Default2.aspx");
            }
            else
            {
                Response.Write("<script> alert('Error in login') </script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
   
}
