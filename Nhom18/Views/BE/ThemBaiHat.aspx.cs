using Nhom18.Controllers;
using Nhom18.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace Nhom18.Views.BE
{
    public partial class ThemBaiHat : System.Web.UI.Page
    {
        BaiHatController data = new BaiHatController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                BaiHat bh = new BaiHat();
                bh.tenbaihat= txtten.Text;
                string path = Server.MapPath("~/images/baihat/");
                anh.PostedFile.SaveAs(path + anh.FileName);
                img.ImageUrl = "~/images/baihat/" + anh.FileName;
                bh.hinhanh = anh.FileName;
                bh.loibaihat = txtloibh.Text;
                bh.tacgia = txttacgia.Text;
                bh.matheloai = int.Parse(txtmatl.Text);
                bh.maalbum = int.Parse(txtmaalbum.Text);
                bh.machude = int.Parse(txtmacd.Text);
                string path1 = Server.MapPath("~/audio/");
                linkbh.PostedFile.SaveAs(path1 + linkbh.FileName);
                bh.linkbaihat = linkbh.FileName;
                data.ThemBaiHat(bh);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm " + e1.Message;
            }
        }
    }
}