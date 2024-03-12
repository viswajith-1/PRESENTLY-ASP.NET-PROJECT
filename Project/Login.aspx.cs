using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a;
        string qry1 = "select count(*) from LoginTBL where UserID='" + txtUserID.Text + "' and Password='" + txtPassword.Text + "'";
        a = Convert.ToInt32(pl.dbScalar(qry1));

        if (a == 1)
        {
            string qry2 = "select * from LoginTBL where UserID='" + txtUserID.Text + "' and Password='" + txtPassword.Text + "'";
            dt = pl.dbSelect(qry2);

            int UserType = Convert.ToInt32(dt.Rows[0]["UserType"].ToString());
            Session["UserID"] = txtUserID.Text;

            if (UserType == 1)
            {
                Response.Redirect("AdminHome.aspx");
            }
            else if (UserType == 2)
            {
                Response.Redirect("StudentProfile.aspx");
            }
            else if (UserType == 3)
            {
                Response.Redirect("ParentProfile.aspx");
            }
            else
            {
                Response.Redirect("TeacherProfile.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Not registerd User')</script>");
            Response.Write("<script>window.location.href='Login.aspx';</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ParentRegistration.aspx");
    }
}