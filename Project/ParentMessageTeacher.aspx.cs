using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ParentMessageTeacher : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblParentMobile.Text = Session["UserID"].ToString();

            string qry1 = "select StudentID from ParentStudentTBL where MobileNum='" + lblParentMobile.Text + "'";
            dt = pl.dbSelect(qry1);

            ddlStudentMobile.DataSource = dt;
            ddlStudentMobile.DataBind();
            ddlStudentMobile.DataTextField = "StudentID";
            ddlStudentMobile.DataBind();

            ddlStudentMobile.Items.Insert(0, "---Slect Student ID---");

            string qry2 = "select * from TeacherTBL";
            dt = pl.dbSelect(qry2);

            ddlTeacherName.DataSource = dt;
            ddlTeacherName.DataBind();
            ddlTeacherName.DataTextField = "Name";
            ddlTeacherName.DataValueField = "StaffID";
            ddlTeacherName.DataBind();

            ddlTeacherName.Items.Insert(0, "---Select Teacher Name---");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string SendDate = System.DateTime.Now.ToShortDateString();
        string MessageReply = "Message Send Now";
        string MessageStatus = "SEND";

        string qry2 = "insert into MessageTBL values('"+ddlStudentMobile.SelectedItem.Text+"','"+ddlTeacherName.SelectedItem.Value+"','"+lblParentMobile.Text+"','"+TextBox1.Text+"','"+MessageReply+"','"+SendDate+"','"+MessageStatus+"')";
        pl.dbExecute(qry2);

        Response.Write("<script>alert('Send Successfully.......')</script>");
        Response.Write("<script>window.location.href='ParentMessageTeacher.aspx';</script>");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ParentViewMessageTeacher.aspx");
    }
}