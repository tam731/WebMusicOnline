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
    public partial class ThemChuDe : System.Web.UI.Page
    {
        ChuDeController data = new ChuDeController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                ChuDe cd = new ChuDe();
                cd.tenchude = txtten.Text;
                cd.motathem = txtmota.Text;
                string path = Server.MapPath("~/images/chude/");
                anh.PostedFile.SaveAs(path + anh.FileName);
                img.ImageUrl = "~/images/chude/" + anh.FileName;
                cd.hinhanh = anh.FileName;
                data.ThemChuDe(cd);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm " + e1.Message;
            }
        }
    }
}