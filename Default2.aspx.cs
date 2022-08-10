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
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection d = new SqlConnection("server=SUBHRA-PC\\SQLEXPRESS;uid=sa;pwd=subhra;database=pol;integrated security=true");
    //SqlDataAdapter da;
    //SqlDataAdapter da1;
    //DataSet ds = new DataSet();
    //DataSet ds1 = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
     
    }
    public void bind()
    {
        SqlDataAdapter da;
        da = new SqlDataAdapter("Select * from stdb", d);
        //da = new SqlDataAdapter("Select important,mailid,subject,time from Mail", d);
        //da = new SqlDataAdapter("Select * from Mail", d);
        
        DataSet ds = new DataSet();
        da.Fill(ds, "tt");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        GridView1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bind();
        SqlDataAdapter da1;
        DataSet ds1 = new DataSet();
        da1 = new SqlDataAdapter("Select SNAME from stdb where SID='s01'", d);
        //da1 = new SqlDataAdapter("Select mailid,subject,message from Mail where username='subhro_jyoti' and flag='inbox'", d);
        da1.Fill(ds1, "tt");
        DetailsView1.DataSource = ds1;
        DetailsView1.DataBind();
        FormView1.DataSource = ds1;
        FormView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}