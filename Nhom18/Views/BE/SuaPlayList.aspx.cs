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
    public partial class SuaPlayList : System.Web.UI.Page
    {
        PlayListController data = new PlayListController();
        string oldAvt = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 Playlist pl = (Playlist)Session["pl"];
                txtmaplaylist.Text = pl.maplaylist.ToString();
                txtten.Text = pl.tenplaylist;
                txtnguoitao.Text = pl.nguoitao;
                img.ImageUrl = "~/images/playlist/" + pl.hinhanh;
                oldAvt = pl.hinhanh;
                txtmatheloai.Text = pl.matheloai.ToString();
                //ddltheloai.DataSource = data.dsTheLoai();
                //ddltheloai.DataTextField = "tentheloai";
                //ddltheloai.DataValueField = "matheloai";
                //DataBind();
                //ddltheloai.SelectedValue = pl.matheloai.ToString();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                Playlist pl = new Playlist();
                pl.maplaylist= int.Parse(txtmaplaylist.Text);
                pl.tenplaylist = txtten.Text;
                pl.nguoitao= txtnguoitao.Text;
                if (anh.FileName != oldAvt)
                {
                    string path = Server.MapPath("~/images/playlist/");
                    anh.PostedFile.SaveAs(path + anh.FileName);
                    img.ImageUrl = "~/images/playlist/" + anh.FileName;
                }
                pl.hinhanh = anh.FileName;
                //pl.matheloai = int.Parse(ddltheloai.SelectedValue);
                pl.matheloai = int.Parse(txtmatheloai.Text);
                data.capNhatPL(pl);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {
                msg.Text = "Cập nhật thất bại" + e2.Message;
            }
        }
    }
}