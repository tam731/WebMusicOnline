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
    public partial class ThemCaSi : System.Web.UI.Page
    {
        CaSiController data = new CaSiController();
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                CaSi cs = new CaSi();
                cs.tencasi = txthoten.Text;
                cs.namsinh = int.Parse(txtnamsinh.Text);
                string path = Server.MapPath("~/images/casi/");
                anh.PostedFile.SaveAs(path + anh.FileName);
                img.ImageUrl = "~/images/casi/" + anh.FileName;
                cs.hinhanh = anh.FileName;
                cs.quequan = txtquequan.Text;
                cs.motathem = txtmotathem.Text;
                data.ThemCaSi(cs);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm" + e1.Message;
            }
        }
    }
}