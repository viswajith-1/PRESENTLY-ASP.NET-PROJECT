using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TeacherClass : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        lblStaffID.Text = Session["UserID"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "insert into TeacherClassTBL values('"+lblStaffID.Text+"','"+ddlDepartment.SelectedItem.Text+"','"+ddlCourse.SelectedItem.Text+"','"+ddlsemester.SelectedItem.Text+"','"+ddlYearAdmission.SelectedItem.Text+"')";
        pl.dbExecute(qry1);

        Response.Write("<script>alert('Data saved successfully.......')</script>");
        Response.Write("<script>window.location.href='TeacherClass.aspx';</script>");
    }
    protected void ddlDepartment_TextChanged(object sender, EventArgs e)
    {
        string qry2 = "select * from CourseTBL where Department='" + ddlDepartment.SelectedItem.Value + "'";
        dt = pl.dbSelect(qry2);

        ddlCourse.DataSource = dt;
        ddlCourse.DataBind();
        ddlCourse.DataTextField = "Course";
        ddlCourse.DataBind();

        ddlCourse.Items.Insert(0, "---Select Course---");
    }
}