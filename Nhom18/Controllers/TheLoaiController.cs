using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using Nhom18.Models;

namespace Nhom18.Controllers
{
    public class TheLoaiController
    {
        SqlConnection con;
        public TheLoaiController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }

        // code lay ra TheLoai trong bang va dua vao List
        public List<TheLoai> dsTheLoai()
        {
            List<TheLoai> ds = new List<TheLoai>();
            string sql = "select * from TheLoai";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                TheLoai tl = new TheLoai();
                tl.matheloai = (int)rd["matheloai"];
                tl.tentheloai = (string)rd["tentheloai"];
                tl.hinhanh = (string)rd["hinhanh"];
                ds.Add(tl);
            }
            con.Close();
            return ds;
        }
        // thêm thể loại
        public void ThemTheLoai(TheLoai tl)
        {
            con.Open();
            string sql = "insert into theloai values(@tentl,@anh)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tentl", tl.tentheloai);
            cmd.Parameters.AddWithValue("anh", tl.hinhanh);

            cmd.ExecuteNonQuery();
            con.Close();
        }
        // xóa thể loại
        public void xoaTL(int matl)
        {
            con.Open();
            string sql = "delete from theloai where matheloai=@matheloai";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("matheloai", matl);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 thể loại
        public TheLoai layra1TL(int matl)
        {
            string sql = "select *from theloai where matheloai=@matl";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("matl", matl);
            SqlDataReader rd = cmd.ExecuteReader();
            TheLoai tl = null;
            if (rd.Read())
            {
                tl = new TheLoai();
                tl.matheloai = (int)rd["matheloai"];
                tl.tentheloai = (string)rd["tentheloai"];
                tl.hinhanh = (string)rd["hinhanh"];

            }
            con.Close();
            return tl;
        }
        // cập nhật
        public void capNhatTL(TheLoai tl)
        {
            con.Open();
            string sql = "update theloai set tentheloai=@ten,hinhanh=@anh where matheloai =@matl";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", tl.tentheloai);
            cmd.Parameters.AddWithValue("anh", tl.hinhanh);
            cmd.Parameters.AddWithValue("matl", tl.matheloai);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}