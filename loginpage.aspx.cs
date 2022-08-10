using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection a1 = new SqlConnection("server=.\\SQLEXPRESS;uid=arnab;pwd=arnab;database=mailserver;integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label4.Visible = false;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        a1.Open();
        SqlCommand b1 = new SqlCommand("select *  from LOGIN where USERNAME='" + TextBox1.Text + "' and PASSWORD='" + TextBox2.Text + "'", a1);

        SqlDataReader c1 = b1.ExecuteReader();
        if (c1.HasRows)
        {
            Session["username"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            Server.Transfer("inbox.aspx");
            c1.Close();
            a1.Close();
        }
        else
        {
            Label1.Visible = true;
            Label4.Visible = true;
            c1.Close();
            a1.Close();
        }
        Session.Abandon();
        Session.Remove("tr");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {        Response.Redirect("registermail.aspx");
    }
}
