using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TeacherProfile : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblStaffID.Text = Session["UserID"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry1 = "update TeacherTBL set Address='" + txtAddress.Text + "',MobileNum='" + txtMobile.Text + "',EmailID='" + txtEmail.Text + "' where StaffID='" + lblStaffID.Text + "'";
        pl.dbExecute(qry1);


        Response.Write("<script>alert('Update Successfully.......')</script>");
        Response.Write("<script>window.location.href='TeacherProfile.aspx';</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
}