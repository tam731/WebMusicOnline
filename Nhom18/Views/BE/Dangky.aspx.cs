using Nhom18.Controllers;
using Nhom18.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Nhom18.Views.BE
{
    public partial class Dangky : System.Web.UI.Page
    {
        TaiKhoanController data = new TaiKhoanController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            TaiKhoan tk = new TaiKhoan();
            SqlConnection con = null;
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select*from taikhoan where tendangnhap = @tendn";
            cmd.Parameters.AddWithValue("@tendn",tendangnhap.Text);
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                msg.Text = "tên đăng nhập đã tồn tại";
                msg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                tk.tendangnhap = tendangnhap.Text;
                tk.matkhau = matkhau.Text;
                data.ThemTK(tk);
                msg.Text = "Đăng kí thành công";
            }



        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}