using Nhom18.Controllers;
using Nhom18.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace Nhom18.Views.FE
{
    public partial class TheLoai : System.Web.UI.Page
    {
        TheLoaiController tl = new TheLoaiController();
        string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter da = null;
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                datalisttheloai.DataSource = tl.dsTheLoai();
                datalisttheloai.DataBind();

                int matheloai = Convert.ToInt32(Request.QueryString["Id"]);
                conn = new SqlConnection(sqlCon);
                conn.Open();
                string sql = "select * from playlist where matheloai='" + matheloai + "'";
                da = new SqlDataAdapter(sql, conn);
                dt = new DataTable();
                da.Fill(dt);
                datalistplaylist.DataSource = dt;
                datalistplaylist.DataBind();
            } 
        }
    }
}