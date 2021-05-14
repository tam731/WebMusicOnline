using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;

namespace Nhom18.Views.Shared
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter da1 = null;
        SqlDataAdapter da2 = null;
        SqlDataAdapter da3 = null;
        SqlDataAdapter da4 = null;
        SqlDataAdapter da5 = null;
        SqlDataAdapter da6 = null;

        DataTable dt1 = null;
        DataTable dt2 = null;
        DataTable dt3 = null;
        DataTable dt4 = null;
        DataTable dt5 = null;
        DataTable dt6 = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
            conn = new SqlConnection(sqlCon);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmd1 = new SqlCommand();
            SqlCommand cmd2 = new SqlCommand();
            SqlCommand cmd3 = new SqlCommand();
            SqlCommand cmd4 = new SqlCommand();
            SqlCommand cmd5 = new SqlCommand();
            string sql1 = "select*from chude where tenchude like '%'+@tenchude+'%'";
            string sql2 = "select*from casi where tencasi like '%'+@tencasi+'%'";
            string sql3 = "select*from album where tenalbum like '%'+@tenalbum+'%'";
            string sql4 = "select*from theloai where tentheloai like '%'+@tentheloai+'%'";
            string sql5 = "select*from playlist where tenplaylist like '%'+@tenplaylist+'%'";
            string sql6 = "select*from baihat where tenbaihat like '%'+@tenbaihat+'%'";

            cmd.CommandText = sql1;
            cmd1.CommandText = sql2;
            cmd2.CommandText = sql3;
            cmd3.CommandText = sql4;
            cmd4.CommandText = sql5;
            cmd5.CommandText = sql6;

            cmd.Connection = conn;
            cmd1.Connection = conn;
            cmd2.Connection = conn;
            cmd3.Connection = conn;
            cmd4.Connection = conn;
            cmd5.Connection = conn;

            cmd.Parameters.AddWithValue("tenchude", txtSearch.Text);
            cmd1.Parameters.AddWithValue("tencasi", txtSearch.Text);
            cmd2.Parameters.AddWithValue("tenalbum", txtSearch.Text);
            cmd3.Parameters.AddWithValue("tentheloai", txtSearch.Text);
            cmd4.Parameters.AddWithValue("tenplaylist", txtSearch.Text);
            cmd5.Parameters.AddWithValue("tenbaihat", txtSearch.Text);

            dt1 = new DataTable();
            da1 = new SqlDataAdapter(cmd);
            da1.Fill(dt1);
            Session["cd"] = dt1;

            dt2 = new DataTable();
            da2 = new SqlDataAdapter(cmd1);
            da2.Fill(dt2);
            Session["cs"] = dt2;

            dt3 = new DataTable();
            da3 = new SqlDataAdapter(cmd2);
            da3.Fill(dt3);
            Session["ab"] = dt3;

            dt4 = new DataTable();
            da4 = new SqlDataAdapter(cmd3);
            da4.Fill(dt4);
            Session["tl"] = dt4;

            dt5 = new DataTable();
            da5 = new SqlDataAdapter(cmd4);
            da5.Fill(dt5);
            Session["pl"] = dt5;

            dt6 = new DataTable();
            da6 = new SqlDataAdapter(cmd5);
            da6.Fill(dt6);
            Session["bh"] = dt6;

            Response.Redirect("Timkiem.aspx");
           
        }
    }
}