using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentLateInform : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblStudentID.Text = Session["UserID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "select count(*) from LateTBL where StudentID='" + lblStudentID.Text + "' and LateDate='" + txtLateDate.Text + "'";
        int a = Convert.ToInt32(pl.dbScalar(qry1));
        if (a == 0)
        {
            string LateStatus = "PENDING";
            string TeacherRemark = "NILL";
            string qry2 = "insert into LateTBL values('" + lblStudentID.Text + "','" + txtLateDate.Text + "','" + txtReason.Text + "','" + LateStatus + "','" + TeacherRemark + "','"+ddlTeacher.SelectedItem.Value+"')";
            pl.dbExecute(qry2);
            Response.Write("<script>alert('Done.........')</script>");
            Response.Write("<script>window.location.href='StudentLateInform.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Already Late Informed.........')</script>");
            Response.Write("<script>window.location.href='StudentLateInform.aspx';</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentViewLate.aspx");
    }
}