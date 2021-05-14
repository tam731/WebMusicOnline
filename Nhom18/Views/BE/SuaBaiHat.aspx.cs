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
    public partial class SuaBaiHat : System.Web.UI.Page
    {
        BaiHatController data = new BaiHatController();
        string oldAvt = "";
        string oldAudio = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BaiHat bh = (BaiHat)Session["bh"];
                txtmabaihat.Text = bh.mabaihat.ToString();
                txtten.Text = bh.tenbaihat;
                img.ImageUrl = "~/images/baihat/" + bh.hinhanh;
                txtloibh.Text = bh.loibaihat;
                txttacgia.Text = bh.tacgia;
                txtmatl.Text = bh.matheloai.ToString();
                txtmaalbum.Text = bh.maalbum.ToString();
                txtmacd.Text = bh.machude.ToString();
                
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                BaiHat bh = new BaiHat();
                bh.mabaihat = int.Parse(txtmabaihat.Text);
                bh.tenbaihat = txtten.Text;
                if (anh.FileName != oldAvt)
                {
                    string path = Server.MapPath("~/images/baihat/");
                    anh.PostedFile.SaveAs(path + anh.FileName);
                    img.ImageUrl = "~/images/baihat/" + anh.FileName;
                }
                bh.hinhanh = anh.FileName;
                bh.loibaihat = txtloibh.Text;
                bh.tacgia = txttacgia.Text;
                bh.matheloai = int.Parse(txtmatl.Text);
                bh.maalbum = int.Parse(txtmaalbum.Text);
                bh.machude = int.Parse(txtmacd.Text);
                if (linkbh.FileName != oldAudio)
                {
                    string path1 = Server.MapPath("~/audio/");
                    linkbh.PostedFile.SaveAs(path1 + linkbh.FileName);
                }
                bh.linkbaihat = linkbh.FileName;
                data.capNhatBH(bh);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi sửa " + e1.Message;
            }
        }
    }
}