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
    public partial class ThemAlbum : System.Web.UI.Page
    {
        AlbumController data = new AlbumController();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                Album ab = new Album();
                ab.tenalbum = txtten.Text;

                string path = Server.MapPath("~/images/album/");
                anh.PostedFile.SaveAs(path + anh.FileName);
                img.ImageUrl = "~/images/album/" + anh.FileName;
                ab.hinhanh = anh.FileName;

                data.ThemAlbum(ab);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm mới" + e1.Message;
            }
        }
    }
}