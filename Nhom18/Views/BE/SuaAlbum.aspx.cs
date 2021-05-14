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
    public partial class SuaAlbum : System.Web.UI.Page
    {
        AlbumController data = new AlbumController();
        string oldAvt = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Album ab = (Album)Session["ab"];
                txtma.Text = ab.maalbum.ToString();
                txtten.Text = ab.tenalbum;
                img.ImageUrl = "~/images/album/" + ab.hinhanh;
                oldAvt = ab.hinhanh;
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                Album ab = new Album();
                ab.maalbum = int.Parse(txtma.Text);
                ab.tenalbum = txtten.Text;
                if (anh.FileName != oldAvt)
                {
                    string path = Server.MapPath("~/images/album/");
                    anh.PostedFile.SaveAs(path + anh.FileName);
                    img.ImageUrl = "~/images/album/" + anh.FileName;
                }
                ab.hinhanh = anh.FileName;
                data.capNhatAB(ab);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {

                msg.Text = "Cập nhật thất bại " + e2.Message;
            }
        }
    }
}