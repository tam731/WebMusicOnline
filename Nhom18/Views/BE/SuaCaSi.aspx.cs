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
    public partial class SuaCaSi : System.Web.UI.Page
    {
        CaSiController data = new CaSiController();
        string oldAvt = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CaSi cs = (CaSi)Session["cs"];
                txtmacs.Text = cs.macasi.ToString();
                txtten.Text = cs.tencasi;
                txtnamsinh.Text = cs.namsinh.ToString();
                img.ImageUrl = "~/images/casi/" + cs.hinhanh;
                txtque.Text = cs.quequan;
                txtmota.Text = cs.motathem;
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                CaSi s = new CaSi();
                s.macasi = int.Parse(txtmacs.Text);
                s.tencasi = txtten.Text;
                s.namsinh = int.Parse(txtnamsinh.Text);
                if (anh.FileName != oldAvt)
                {
                    string path = Server.MapPath("~/images/casi/");
                    anh.PostedFile.SaveAs(path + anh.FileName);
                    img.ImageUrl = "~/images/casi/" + anh.FileName;
                }
                s.hinhanh = anh.FileName;
                s.quequan = txtque.Text;
                s.motathem = txtmota.Text;

                data.capNhatCS(s);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {

                msg.Text = "Cập nhật thất bại " + e2.Message;
            }
        }
    }
}