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
    public partial class DSAlbum : System.Web.UI.Page
    {
        AlbumController data = new AlbumController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                HienThiDuLieu();
        }
        private void HienThiDuLieu()
        {
            GridView2.DataSource = data.dsAlbum();
            DataBind();
        }
        protected void xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.xoaAlbum(m);
                HienThiDuLieu();
            }
        }
        protected void sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                Album ab = data.layra1AB(m);
                Session["ab"] = ab;
                Response.Redirect("SuaAlbum.aspx");
            }
        }
    }
}