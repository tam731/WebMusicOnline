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
    public partial class ThemTheLoai : System.Web.UI.Page
    {
        TheLoaiController data = new TheLoaiController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                TheLoai tl = new TheLoai();
                tl.tentheloai = txtten.Text;
                
                string path = Server.MapPath("~/images/theloai/");
                anh.PostedFile.SaveAs(path + anh.FileName);
                img.ImageUrl= "~/images/theloai/" + anh.FileName;
                tl.hinhanh = anh.FileName;

                data.ThemTheLoai(tl);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm mới" + e1.Message;
            }
        }
    }
}