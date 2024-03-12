using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TeacherViewStudents : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblStaffID.Text = Session["UserID"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        string qry1 = "select * from StudentTBL where Department='" + ddlDepartment.SelectedItem.Text + "' and Course='" + ddlCourse.SelectedItem.Text + "' and Semester='" + ddlsemester.SelectedItem.Text + "' and AdmissionYear='" + ddlYearAdmission.SelectedItem.Text + "'";
        dt = pl.dbSelect(qry1);

        ddlStudentID.DataSource = dt;
        ddlStudentID.DataBind();
        ddlStudentID.DataTextField = "StudentID";
        ddlStudentID.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        lblStudentID.Text = ddlStudentID.SelectedItem.Text;

        string qry2 = "SELECT ParentTBL.Name, ParentTBL.Relation, ParentTBL.Gender, ParentTBL.Age, ParentTBL.Address, ParentStudentTBL.MobileNum, ParentTBL.EmailID FROM ParentStudentTBL INNER JOIN ParentTBL ON ParentStudentTBL.MobileNum = ParentTBL.MobileNum where ParentStudentTBL.StudentID='" + lblStudentID.Text + "'";
        dt = pl.dbSelect(qry2);
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }
}