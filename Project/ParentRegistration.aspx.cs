using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ParentRegistration : System.Web.UI.Page
{
    PresentLyClass pl = new PresentLyClass();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry2 = "select count(*) from ParentTBL where MobileNum='" + txtMobileNum.Text + "'";
        int a = Convert.ToInt32(pl.dbScalar(qry2));
        if (a == 0)
        {
            string qry3 = "insert into ParentTBL values('" + txtName.Text + "','"+rblRelation.SelectedItem.Text+"','" + rblGender.SelectedItem.Value + "','" + txtAge.Text + "','" + txtAddress.Text + "','" + txtMobileNum.Text + "','" + txtEmailID.Text + "')";
            pl.dbExecute(qry3);

            int UserType = 3;
            string qry4 = "insert into LoginTBL values('" + txtMobileNum.Text + "','" + txtPassword.Text + "','" + UserType + "')";
            pl.dbExecute(qry4);

            Response.Write("<script>alert('Data saved successfully.......')</script>");

            Response.Write("<script>window.location.href='Login.aspx';</script>");

        }
        else
        {
            Response.Write("<script>alert('Student ID Already Used.......')</script>");
            Response.Write("<script>window.location.href='ParentRegistration.aspx';</script>");
        }
    }
}