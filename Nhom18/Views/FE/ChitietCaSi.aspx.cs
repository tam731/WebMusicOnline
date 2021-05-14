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
    public partial class ChitietCaSi : System.Web.UI.Page
    {
        string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
        SqlConnection conn = null;

        SqlDataAdapter da = null;
        SqlDataAdapter da1 = null;
        SqlDataAdapter da2 = null;

        DataTable dt = null;
        DataTable dt1 = null;
        DataTable dt2 = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ID = Convert.ToInt32(Request.QueryString["Id"]);
                conn = new SqlConnection(sqlCon);
                conn.Open();
                string sql = "select * from casi where macasi='" + ID + "'";
                string sql1 = "select * from baihat inner join casi_baihat on baihat.mabaihat=casi_baihat.mabaihat where macasi='" + ID + "'";
                string sql2 = "select * from album inner join casi_album on album.maalbum=casi_album.maalbum where macasi='" + ID + "'";

                da = new SqlDataAdapter(sql, conn);
                dt = new DataTable();
                da.Fill(dt);
                datalistchitietcasi.DataSource = dt;
                datalistchitietcasi.DataBind();

                da1 = new SqlDataAdapter(sql1, conn);
                dt1 = new DataTable();
                da1.Fill(dt1);
                datalistcsbh.DataSource = dt1;
                datalistcsbh.DataBind();

                da2 = new SqlDataAdapter(sql2, conn);
                dt2 = new DataTable();
                da2.Fill(dt2);
                datalistcsab.DataSource = dt2;
                datalistcsab.DataBind();
            }
        }
    }
}