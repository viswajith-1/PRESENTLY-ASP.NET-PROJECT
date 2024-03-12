using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ParentLeaveInform : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMobile.Text = Session["UserID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string MarkedDate = System.DateTime.Now.ToShortDateString();
        string InformedBy = "PARENT";
        string qry1 = "insert into LeaveTBL values('" + ddlStudentID.SelectedItem.Text + "','" + ddlLeave.SelectedItem.Text + "','" + txtLeaveDate.Text + "','" + txtReason.Text + "','" + MarkedDate + "','" + InformedBy + "')";
        pl.dbExecute(qry1);

        Response.Write("<script>alert('Done......')</script>");
        Response.Write("<script>window.location.href='ParentLeaveInform.aspx';</script>");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ParentViewLeave.aspx");
    }
}