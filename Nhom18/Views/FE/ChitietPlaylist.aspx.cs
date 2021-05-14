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
    public partial class ChitietPlaylist : System.Web.UI.Page
    {
        string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter da = null;
        DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Id"]);
            conn = new SqlConnection(sqlCon);
            conn.Open();
            string sql = "select * from baihat inner join playlist_baihat on baihat.mabaihat = playlist_baihat.mabaihat where maplaylist='" + id + "'";
            da = new SqlDataAdapter(sql, conn);
            dt = new DataTable();
            da.Fill(dt);
            datalistbhpl.DataSource = dt;
            DataBind();
        }
    }
}