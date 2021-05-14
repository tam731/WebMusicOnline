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
    public partial class DSTheLoai : System.Web.UI.Page
    {
        TheLoaiController data = new TheLoaiController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThiDuLieu();
        }
        private void HienThiDuLieu()
        {
            GridView2.DataSource = data.dsTheLoai();
            DataBind();
        }
        protected void xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.xoaTL(m);
                HienThiDuLieu();
            }
        }
        protected void sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                TheLoai tl = data.layra1TL(m);
                Session["tl"] = tl;
                Response.Redirect("SuaTheLoai.aspx");
            }
        }
    }
}