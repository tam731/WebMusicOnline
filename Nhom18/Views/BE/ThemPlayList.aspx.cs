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
    public partial class ThemPlayList : System.Web.UI.Page
    {
        PlayListController data = new PlayListController();
        protected void Page_Load(object sender, EventArgs e)
        {
            // dua du lieu vao dropdownlist
            //loadcombobox();
        }
        //public void loadcombobox()
        //{
        //    if (!IsPostBack)
        //    {
        //        ddltheloai.DataSource = data.dsTheLoai();
        //        ddltheloai.DataTextField = "tentheloai";
        //        ddltheloai.DataValueField = "matheloai";
        //        DataBind();
        //    }
        //}

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                Playlist pl = new Playlist();
                pl.tenplaylist = txtten.Text;
                pl.nguoitao = txtnguoitao.Text;
                string path = Server.MapPath("~/images/playlist/");
                anh.PostedFile.SaveAs(path + anh.FileName);
                img.ImageUrl = "~/images/playlist/" + anh.FileName;
                pl.hinhanh = anh.FileName;
                // pl.matheloai = int.Parse(ddltheloai.SelectedValue);
                pl.matheloai = int.Parse(txtmatheloai.Text);
                data.ThemPlayList(pl);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm " + e1.Message;
            }
        }
    }
}