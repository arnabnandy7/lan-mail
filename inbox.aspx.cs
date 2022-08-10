using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class inbox : System.Web.UI.Page
{
    SqlConnection a1 = new SqlConnection("server=.\\SQLEXPRESS;uid=arnab;pwd=arnab;database=mailserver;integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["username"].ToString();
        bind();
    }

    public void bind()
    {
        SqlDataAdapter da;
        da = new SqlDataAdapter("Select SUSERNAME,SUBJECT,DATE_TIME from INBOX WHERE RUSERNAME='" + Label2.Text + "'", a1);
        DataSet ds = new DataSet();
        da.Fill(ds, "tt");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        GridView1.Visible = true;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("inbox.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("sentmail.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da1;
        var uid = GridView1.SelectedDataKey.Value;
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.AddWithValue();
        DataSet ds1 = new DataSet();
        da1 = new SqlDataAdapter("Select SUERNAME,SUBJECT,ATTACHMENT,MESSAGE from INBOX WHERE MAILUID='" + uid +"' and RUSERNAME='" + Label2.Text + "'", a1);
        da1.Fill(ds1, "tt");
        DetailsView1.DataSource = ds1;
        DetailsView1.DataBind();
        DetailsView1.Visible = true;
        Response.Redirect("Selected Mail "+ GridView1.SelectedDataKey.Value.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("mailcreate.aspx");
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
    }
    /*protected void DeleteRecord(object sender, GridViewDeletedEventArgs e)
    {
        GridViewRow row = GridView1.Rows[index];
        string autoid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        SqlCommand dc = new SqlCommand();
        try
        {
            a1.Open();
            dc.CommandText = "spDeleteData";
            dc.CommandType = CommandType.StoredProcedure;
            dc.Parameters.Add("@autoid", SqlDbType.Int).Value = Int32.Parse(autoid);
            dc.Connection = a1;
            dc.ExecuteNonQuery();
            bind();

        }
        catch (SqlException ee)
        {

        }
        finally
        {
            dc.Dispose();
            a1.Close();
            a1.Dispose();
        }
    }*/
    protected void GetSelectedRecords(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox chk = (CheckBox)row.FindControl("chkSelect");
            if (chk.Checked)
            {
                Response.Write("Message is -> " + row.Cells[6].Text + "<br/>");
            }
        }
    }
               
}

