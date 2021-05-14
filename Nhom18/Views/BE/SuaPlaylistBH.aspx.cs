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
    public partial class SuaPlaylistBH : System.Web.UI.Page
    {
        PlayListBHController data = new PlayListBHController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PlaylistBH csab = (PlaylistBH)Session["plbh"];
                txtid.Text = csab.id.ToString();
                txtplaylist.Text = csab.maplaylist.ToString();
                txtbaihat.Text = csab.mabaihat.ToString();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                PlaylistBH s = new PlaylistBH();
                s.id = int.Parse(txtid.Text);
                s.maplaylist = int.Parse(txtplaylist.Text);
                s.mabaihat = int.Parse(txtbaihat.Text);
                data.capNhatPLBH(s);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {
                msg.Text = "Cập nhật thất bại" + e2.Message;
            }
        }
    }
}