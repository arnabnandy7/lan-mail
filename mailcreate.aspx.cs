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

public partial class mailcreate : System.Web.UI.Page
{
    SqlConnection a3 = new SqlConnection("server=.\\SQLEXPRESS;uid=arnab;pwd=arnab;database=mailserver;integrated security=true");
    static Random random = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["username"].ToString();
        Label7.Visible = false;
        
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Label7.Text = "Mail sent succcessfull.";
        a3.Open();
        SqlDataAdapter da1 = new SqlDataAdapter();
        SqlDataAdapter da2 = new SqlDataAdapter();
        SqlCommandBuilder cb1 = new SqlCommandBuilder();
        SqlCommandBuilder cb2 = new SqlCommandBuilder();
        da1.SelectCommand = new SqlCommand("select * from INBOX", a3);
        da2.SelectCommand = new SqlCommand("select * from SEND", a3);
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        DataRow dr1;
        DataRow dr2;
        da1.Fill(ds1);
        da2.Fill(ds2);
        dr1 = ds1.Tables[0].NewRow();
        for (int i = 10000; i <= 99999; i++)
        {

            dr1[0] = (Convert.ToString(random.Next(100000000, 999999999)));
        }
        dr1[1] = Session["username"].ToString();
        dr1[2] = TextBox1.Text;
        dr1[3] = TextBox2.Text;
        dr1[4] = DateTime.Now.ToString();
        dr1[6] = TextBox3.Text;
        ds1.Tables[0].Rows.Add(dr1);
        cb1 = new SqlCommandBuilder(da1);
        da1.Update(ds1);
        da1.Dispose();

        dr2 = ds2.Tables[0].NewRow();
        for (int i = 10000; i <= 99999; i++)
        {

            dr2[0] = (Convert.ToString(random.Next(100000000, 999999999)));
        }
        dr2[1] = Session["username"].ToString();
        dr2[2] = TextBox1.Text;
        dr2[3] = TextBox2.Text;
        dr2[4] = DateTime.Now.ToString();
        dr2[6] = TextBox3.Text;
        ds2.Tables[0].Rows.Add(dr2);
        cb2 = new SqlCommandBuilder(da2);
        da2.Update(ds2);
        da2.Dispose();

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        a3.Close();
        Panel1.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        FileUpload1.Visible = false;
        Label7.Visible = true;


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("inbox.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
}
