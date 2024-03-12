using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TeacherMarkLeave : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTeacherID.Text = Session["UserID"].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry2 = "select count(*) from LeaveTBL where  StudentID='" + txtStudentID.Text + "' and LeaveDate='" + txtLeaveDate.Text + "'";
        int a = Convert.ToInt32(pl.dbScalar(qry2));
        if (a == 0)
        {
            string MarkedDate = System.DateTime.Now.ToShortDateString();
            string InformedBy = "TEACHER";
            string qry1 = "insert into LeaveTBL values('" + txtStudentID.Text + "','" + ddlLeave.SelectedItem.Text + "','" + txtLeaveDate.Text + "','" + txtReason.Text + "','" + MarkedDate + "','" + InformedBy + "')";
            pl.dbExecute(qry1);

            Response.Write("<script>alert('Done......')</script>");
            Response.Write("<script>window.location.href='TeacherMarkLeave.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Already Marked......')</script>");
            Response.Write("<script>window.location.href='TeacherMarkLeave.aspx';</script>");
        }
    }
}