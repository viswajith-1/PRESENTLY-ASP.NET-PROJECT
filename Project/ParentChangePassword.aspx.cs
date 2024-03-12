using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ParentChangePassword : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblParentMobile.Text = Session["UserID"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtNewPWd.Text == txtCnfPwd.Text)
        {
            string qry1 = "select * from LoginTBL where UserID='" + lblParentMobile.Text + "'";
            dt = pl.dbSelect(qry1);
            string CrPwd = dt.Rows[0]["Password"].ToString();

            if (CrPwd == txtCrPwd.Text)
            {
                string qry2 = "update LoginTBL set Password='" + txtNewPWd.Text + "' where UserID='" + lblParentMobile.Text + "'";
                pl.dbExecute(qry2);

                Response.Write("<script>alert('Password Changed...Login Agin Now.....')</script>");
                Response.Write("<script>window.location.href='Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Current Password Mismatch')</script>");
                Response.Write("<script>window.location.href='ParentChangePassword.aspx';</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Password Mismatch')</script>");
            Response.Write("<script>window.location.href='ParentChangePassword.aspx';</script>");
        }
    }
}