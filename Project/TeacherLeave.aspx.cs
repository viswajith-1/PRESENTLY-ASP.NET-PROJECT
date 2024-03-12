using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TeacherLeave : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTeacherID.Text = Session["UserID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        

        string qry1 = "SELECT LeaveTBL.StudentID FROM LeaveTBL INNER JOIN StudentTBL ON LeaveTBL.StudentID = StudentTBL.StudentID where StudentTBL.AdmissionYear='" + ddlYearAdmission.SelectedItem.Text + "' and StudentTBL.Department='" + ddlDepartment.SelectedItem.Text + "' and StudentTBL.Course='" + ddlCourse.SelectedItem.Text + "' and StudentTBL.Semester='" + ddlsemester.SelectedItem.Text + "' and LeaveTBL.LeaveDate='" + ddlLeaveDate.SelectedItem.Text + "'";
        dt = pl.dbSelect(qry1);

        ddlStudentID.DataSource = dt;
        ddlStudentID.DataBind();
        ddlStudentID.DataTextField = "StudentID";
        ddlStudentID.DataBind();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
        lblStudentID.Text = ddlStudentID.SelectedItem.Text;
        lblLeaveDate.Text = ddlLeaveDate.SelectedItem.Text;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("TeacherMarkLeave.aspx");
    }
}