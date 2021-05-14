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
    public partial class ThemPlaylistBH : System.Web.UI.Page
    {
        PlayListBHController data = new PlayListBHController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                PlaylistBH plbh = new PlaylistBH();
                plbh.maplaylist = int.Parse(txtplaylist.Text);
                plbh.mabaihat = int.Parse(txtbaihat.Text);
                data.ThemPlaylistBH(plbh);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm" + e1.Message;
            }
        }
    }
}