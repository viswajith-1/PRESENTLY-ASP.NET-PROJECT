using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ParentStudent : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblParentMobile.Text = Session["UserID"].ToString();

        string qry1 = "SELECT ParentStudentTBL.TableID, ParentStudentTBL.StudentID, StudentTBL.Name, StudentTBL.Department, StudentTBL.Course, StudentTBL.Semester, StudentTBL.AdmissionYear FROM ParentStudentTBL INNER JOIN StudentTBL ON ParentStudentTBL.StudentID = StudentTBL.StudentID where ParentStudentTBL.MobileNum='" + lblParentMobile.Text + "'";
        dt = pl.dbSelect(qry1);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry2 = "insert into ParentStudentTBL values('"+txtStudID.Text+"','"+lblParentMobile.Text+"')";
        pl.dbExecute(qry2);

       

        Response.Write("<script>alert('Saved Successfully.......')</script>");
       

       
    }
}