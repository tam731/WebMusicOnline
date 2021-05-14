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
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            
            try
            {


                string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
                SqlConnection con = new SqlConnection(sqlCon);
                con.Open();
                string query = "select count (*) from taikhoan where tendangnhap ='"+txttendangnhap.Text+"'and matkhau = '"+txtmatkhau.Text+"'";
                SqlCommand cmd = new SqlCommand(query, con);
                string output = cmd.ExecuteScalar().ToString();
                if(output == "1")
                {
                    Response.Write("Đăng nhập thành công");
                    Response.Redirect("../FE/TrangChu.aspx");
                }
                else if (txttendangnhap.Text.Trim().Equals(string.Empty))
                {
                    txttendangnhap.Focus();
                    throw new Exception("Tên đăng nhập không được để trống");
                }
                else if (txtmatkhau.Text.Trim().Equals(string.Empty))
                {
                    txtmatkhau.Focus();
                    throw new Exception("Mật khẩu không được để trống");
                }
                else if(txttendangnhap.Text == "admin" && txtmatkhau.Text == "123")
                {
                    Response.Write("Đăng nhập thành công");
                    Response.Redirect("DSCaSi.aspx");
                }
                else
                {
                    txttendangnhap.Focus();
                    throw new Exception("Kiểm tra lại tên đăng nhập hoặc mật khẩu");
                }
            }
            catch (Exception e1)
            {
                Response.Write("<script>alert('"+e1.Message+"')</script>");
            }
        }
    }
}