using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class GuestContactUs : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string SendDate = System.DateTime.Now.ToShortDateString();

        string qry1 = "insert into ContactTBL values('" + txtName.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "','" + txtMessage.Text + "','" + SendDate + "')";
        pl.dbExecute(qry1);

        Response.Write("<script>alert('Message Send........')</script>");
        Response.Write("<script>window.location.href='GuestContactUs.aspx';</script>");
    }
}