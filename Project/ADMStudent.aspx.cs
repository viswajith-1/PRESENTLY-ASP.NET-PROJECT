using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class StudentReg : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblUserID.Text = Session["UserID"].ToString();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int DeptID = Convert.ToInt32(ddlDepartment.SelectedItem.Value);
            if(DeptID==1)
            {
                string qry1="select * from CourseTBL where Department='"+DeptID+"'";
                dt=pl.dbSelect(qry1);

                ddlCourse.DataSource=dt;
                ddlCourse.DataBind();
                ddlCourse.DataTextField="Course";
                ddlCourse.DataBind();
            }

            else if (DeptID == 2)
            {
                string qry1 = "select * from CourseTBL where Department='" + DeptID + "'";
                dt = pl.dbSelect(qry1);

                ddlCourse.DataSource = dt;
                ddlCourse.DataBind();
                ddlCourse.DataTextField = "Course";
                ddlCourse.DataBind();
            }

            else if (DeptID == 3)
            {
                string qry1 = "select * from CourseTBL where Department='" + DeptID + "'";
                dt = pl.dbSelect(qry1);

                ddlCourse.DataSource = dt;
                ddlCourse.DataBind();
                ddlCourse.DataTextField = "Course";
                ddlCourse.DataBind();
            }

            else
            {
                string qry1 = "select * from CourseTBL where Department='" + DeptID + "'";
                dt = pl.dbSelect(qry1);

                ddlCourse.DataSource = dt;
                ddlCourse.DataBind();
                ddlCourse.DataTextField = "Course";
                ddlCourse.DataBind();
            }
    }
    protected void btSave_Click(object sender, EventArgs e)
    {
        
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
protected void  Button1_Click(object sender, EventArgs e)
{
    string qry2 = "select count(*) from StudentTBL where StudentID='" + txtStudentID.Text + "'";
    int a = Convert.ToInt32(pl.dbScalar(qry2));
    if (a == 0)
    {
        string qry3 = "insert into StudentTBL values('" + txtStudentID.Text + "','" + txtName.Text + "','" + rblGender.SelectedItem.Value + "','" + txtDoB.Text + "','" + txtAdmissionYear.Text + "','" + ddlDepartment.SelectedItem.Text + "','" + ddlCourse.SelectedItem.Text + "','" + ddlsemester.SelectedItem.Text + "','" + txtAddress.Text + "','" + txtMobileNum.Text + "','" + txtEmailID.Text + "')";
        pl.dbExecute(qry3);

        int UserType = 2;
        string qry4 = "insert into LoginTBL values('" + txtStudentID.Text + "','" + txtMobileNum.Text + "','" + UserType + "')";
        pl.dbExecute(qry4);

        Response.Write("<script>alert('Data saved successfully.......')</script>");

        Response.Write("<script>window.location.href='ADMStudent.aspx';</script>");

    }
    else
    {
        Response.Write("<script>alert('Student ID Already Used.......')</script>");
        Response.Write("<script>window.location.href='ADMStudent.aspx';</script>");
    }
}
protected void LinkButton1_Click(object sender, EventArgs e)
{
    Response.Redirect("ADMViewStudent.aspx");
}
protected void txtAddress_TextChanged(object sender, EventArgs e)
{

}
}