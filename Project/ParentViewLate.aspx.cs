using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ParentViewLate : System.Web.UI.Page
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

            ddlStudentID.DataSource = dt;
            ddlStudentID.DataBind();
            ddlStudentID.DataTextField = "StudentID";
            ddlStudentID.DataBind();

            ddlStudentID.Items.Insert(0, "---Select Student ID---");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lblStudentID.Text = ddlStudentID.SelectedItem.Text;
    }
}