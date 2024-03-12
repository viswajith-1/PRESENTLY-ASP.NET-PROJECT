using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TeacherViewLate : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblStaffID.Text = Session["UserID"].ToString();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int LateID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "apr")
        {
            string qry2 = "select * from LateTBL where LateID='" + LateID + "'";
            dt = pl.dbSelect(qry2);

            string Status = dt.Rows[0]["LateStatus"].ToString();
            if (Status == "APPROVE")
            {
                Response.Write("<script>alert('Late Application Already Approved.......')</script>");
                Response.Write("<script>window.location.href='TeacherViewLate.aspx';</script>");
            }
            else
            {
                Panel2.Visible = true;
                lblLateID.Text = LateID.ToString();
            }
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string LateStatus="APPROVE";
        string qry1 = "update LateTBL set LateStatus='" + LateStatus + "',LateRemark='" + txtRemark.Text + "' where LateID='" + lblLateID.Text + "'";
        pl.dbExecute(qry1);

        Response.Write("<script>alert('Done.......')</script>");
        Response.Write("<script>window.location.href='TeacherViewLate.aspx';</script>");
    }
}