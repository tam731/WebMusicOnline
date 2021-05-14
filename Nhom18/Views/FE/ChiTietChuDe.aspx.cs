using Nhom18.Controllers;
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
    public partial class ChiTietChuDe : System.Web.UI.Page
    {
        ChuDeController tl = new ChuDeController();
        BaiHatController bh = new BaiHatController();
        string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter da = null;
        SqlDataAdapter da1 = null;
        DataTable dt = null;
        DataTable dt1 = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ID = Convert.ToInt32(Request.QueryString["Id"]);
                conn = new SqlConnection(sqlCon);
                conn.Open();
                string sql = "select * from chude where machude='" + ID + "'";
                string sql1 = "select * from baihat where machude='" + ID + "'";
                da = new SqlDataAdapter(sql, conn);
                dt = new DataTable();
                da.Fill(dt);
                datalisttheochude.DataSource = dt;
                datalisttheochude.DataBind();

                da1 = new SqlDataAdapter(sql1, conn);
                dt1 = new DataTable();
                da1.Fill(dt1);
                datalistbaihattheochude.DataSource = dt1;             
                datalistbaihattheochude.DataBind();
            }
        }
    }
}