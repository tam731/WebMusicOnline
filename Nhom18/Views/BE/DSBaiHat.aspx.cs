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
    public partial class DSBaiHat : System.Web.UI.Page
    {
        BaiHatController data = new BaiHatController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienthidulieu();
            }
        }

        private void hienthidulieu()
        {
            GridView2.DataSource = data.dsBaiHat();
            DataBind();
        }
        protected void xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.xoaBH(m);
                hienthidulieu();
            }
        }
        protected void sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                BaiHat bh = data.layra1BH(m);
                Session["bh"] = bh;
                Response.Redirect("SuaBaiHat.aspx");
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}