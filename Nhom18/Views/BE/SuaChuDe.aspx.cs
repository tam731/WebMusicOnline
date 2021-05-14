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
    public partial class SuaChuDe : System.Web.UI.Page
    {
        ChuDeController data = new ChuDeController();
        string oldAvt = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ChuDe cd = (ChuDe)Session["cd"];
                txtmacd.Text = cd.machude.ToString();
                txtten.Text = cd.tenchude;
                txtmota.Text = cd.motathem;
                img.ImageUrl = "~/images/chude/" + cd.hinhanh;
                oldAvt = cd.hinhanh;
            }
        }
        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                ChuDe s = new ChuDe();
                s.machude = int.Parse(txtmacd.Text);
                s.tenchude = txtten.Text;
                s.motathem = txtmota.Text;
                if (anh.FileName != oldAvt)
                {
                    string path = Server.MapPath("~/images/chude/");
                    anh.PostedFile.SaveAs(path + anh.FileName);
                    img.ImageUrl = "~/images/chude/" + anh.FileName;
                }
                s.hinhanh = anh.FileName;
                data.capNhatCD(s);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {
                msg.Text = "Cập nhật thất bại" + e2.Message;
            }
        }
    }
}