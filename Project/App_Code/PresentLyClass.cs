using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for PresentLyClass
/// </summary>
public class PresentLyClass
{
    SqlConnection con;
	public PresentLyClass()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\PC\Downloads\PresentLy-Group 1\Project\App_Data\PresentlyDatabase.mdf;Integrated Security=True;User Instance=True");
	}

    public void dbExecute(string query)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public DataTable dbSelect(string query)
    {
        SqlDataAdapter adp = new SqlDataAdapter();
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;
        con.Open();
        adp.SelectCommand = cmd;
        adp.Fill(dt);
        con.Close();
        return dt;
    }

    public object dbScalar(string query)
    {
        object obj = new object();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = query;
        con.Open();
        obj = cmd.ExecuteScalar();
        con.Close();
        return obj;
    }
}