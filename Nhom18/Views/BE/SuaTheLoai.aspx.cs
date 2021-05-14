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
    public partial class SuaTheLoai : System.Web.UI.Page
    {
        TheLoaiController data = new TheLoaiController();
        string oldAvt = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TheLoai tl = (TheLoai)Session["tl"];
                txtma.Text = tl.matheloai.ToString();
                txtten.Text = tl.tentheloai;
                img.ImageUrl = "~/images/theloai/" + tl.hinhanh;
                oldAvt = tl.hinhanh;
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                TheLoai tl = new TheLoai();
                tl.matheloai = int.Parse(txtma.Text);
                tl.tentheloai = txtten.Text;
                if(anh.FileName != oldAvt)
                {
                    string path = Server.MapPath("~/images/theloai/");
                    anh.PostedFile.SaveAs(path + anh.FileName);
                    img.ImageUrl = "~/images/theloai/" + anh.FileName;               
                }
                tl.hinhanh = anh.FileName;
                data.capNhatTL(tl);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {

                msg.Text = "Cập nhật thất bại " + e2.Message;
            }
        }
    }
}