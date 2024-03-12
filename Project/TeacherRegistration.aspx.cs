using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class FacultyReg : System.Web.UI.Page
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
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      

        string qry2 = "select count(*) from TeacherTBL where StaffID='" + txtStaffID.Text + "'";
        int a = Convert.ToInt32(pl.dbScalar(qry2));
        if (a == 0)
        {
            string qry3 = "insert into TeacherTBL values('" + txtStaffID.Text + "','" + txtName.Text + "','" + rblGender.SelectedItem.Text + "','" + txtDoB.Text + "','" + ddlDepartment.SelectedItem.Text + "','" + txtAddress.Text + "','" + txtMobileNum.Text + "','" + txtEmailID.Text + "')";
            pl.dbExecute(qry3);
            int UserType = 4;
            string qry4 = "insert into LoginTBL values('" + txtStaffID.Text + "','" + txtMobileNum.Text + "','" + UserType + "')";
            pl.dbExecute(qry4);

            Response.Write("<script>alert('Data saved successfully.......')</script>");
            Response.Write("<script>window.location.href='TeacherRegistration.aspx';</script>");

        }
       else
        {
            Response.Write("<script>alert('Student ID Already Used.......')</script>");
            Response.Write("<script>window.location.href='TeacherRegistration.aspx';</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADMViewTeacher.aspx");
    }
}