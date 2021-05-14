using Nhom18.Controllers;
using Nhom18.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom18.Views.BE
{
    public partial class DSChuDe : System.Web.UI.Page
    {
        ChuDeController data = new ChuDeController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThiDuLieu();
        }
        private void HienThiDuLieu()
        {
            GridView2.DataSource = data.dsChuDe();
            DataBind();
        }
        protected void xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.xoaCD(m);
                HienThiDuLieu();
            }
        }
        protected void sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                ChuDe cd = data.layra1CD(m);
                Session["cd"] = cd;
                Response.Redirect("SuaChuDe.aspx");
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}