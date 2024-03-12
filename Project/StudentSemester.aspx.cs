using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentSemester : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblStudentID.Text = Session["UserID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string qry1 = "update StudentTBL set Semester='" + ddlsemester.SelectedItem.Text + "' where StudentID='" + lblStudentID.Text + "'";
        pl.dbExecute(qry1);


        Response.Write("<script>alert('Update Successfully.......')</script>");
        Response.Write("<script>window.location.href='StudentSemester.aspx';</script>");
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}