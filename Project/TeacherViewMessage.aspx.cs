using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TeacherViewMessage : System.Web.UI.Page
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int MessageID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "snd")
        {
            
            lblMessageID.Text = MessageID.ToString();

            string qry2 = "select * from MessageTBL where MessageID='" + lblMessageID.Text + "'";
            dt = pl.dbSelect(qry2);

            string MessageStatusNew = dt.Rows[0]["MessageStatus"].ToString();

            if (MessageStatusNew == "REPLIED")
            {
                Response.Write("<script>alert ('Replay Alreay Send to the Parent.......')</script>");
                Response.Write("<script>window.location.href='TeacherViewMessage.aspx'</script>");
            }
            else
            {
                Panel2.Visible = true;
            }

        }
        else
        {
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string MessageStatus = "REPLIED";

        string qry1 = "update MessageTBL set MessageReply='" + TextBox1.Text + "',MessageStatus='" + MessageStatus + "' where   MessageID='" + lblMessageID.Text + "'";
        pl.dbExecute(qry1);

        Response.Write("<script>alert ('Replay Send to the Parent.......')</script>");
        Response.Write("<script>window.location.href='TeacherViewMessage.aspx'</script>");
    }
}