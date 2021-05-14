using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;

namespace Nhom18.Controllers
{
    public class ChuDeController
    {
        SqlConnection con;
        public ChuDeController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra ChuDe trong bang va dua vao List
        public List<ChuDe> dsChuDe()
        {
            List<ChuDe> ds = new List<ChuDe>();
            string sql = "select * from ChuDe";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                ChuDe cd = new ChuDe();
                cd.machude = (int)rd["machude"];
                cd.tenchude = (string)rd["tenchude"];
                cd.motathem = (string)rd["motathem"];
                cd.hinhanh = (string)rd["hinhanh"];
                ds.Add(cd);
            }
            con.Close();
            return ds;
        }
        public List<ChuDe> dsChuDe1()
        {
            List<ChuDe> ds = new List<ChuDe>();
            string sql = "select top (5) * from ChuDe";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                ChuDe cd = new ChuDe();
                cd.machude = (int)rd["machude"];
                cd.tenchude = (string)rd["tenchude"];
                cd.motathem = (string)rd["motathem"];
                cd.hinhanh = (string)rd["hinhanh"];
                ds.Add(cd);
            }
            con.Close();
            return ds;
        }
        // thêm chủ đề
        public void ThemChuDe(ChuDe cd)
        {
            con.Open();
            string sql = "insert into chude values(@tencd,@mota,@anh)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tencd", cd.tenchude);
            cmd.Parameters.AddWithValue("mota", cd.motathem);
            cmd.Parameters.AddWithValue("anh", cd.hinhanh);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // xóa chủ đề
        public void xoaCD(int macd)
        {
            con.Open();
            string sql = "delete from chude where machude=@macd";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("macd", macd);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 chủ đề
        public ChuDe layra1CD(int macd)
        {
            string sql = "select *from chude where machude=@machude";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("machude", macd);
            SqlDataReader rd = cmd.ExecuteReader();
            ChuDe cd = null;
            if (rd.Read())
            {
                cd = new ChuDe();
                cd.machude = (int)rd["machude"];
                cd.tenchude = (string)rd["tenchude"];
                cd.motathem = (string)rd["motathem"];
                cd.hinhanh = (string)rd["hinhanh"];
            }
            con.Close();
            return cd;
        }
        // cập nhật chủ đề 
        public void capNhatCD(ChuDe cd)
        {
            con.Open();
            string sql = "update chude set tenchude=@ten, motathem=@mota,hinhanh=@anh where machude =@machude";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", cd.tenchude);
            cmd.Parameters.AddWithValue("mota", cd.motathem);
            cmd.Parameters.AddWithValue("anh", cd.hinhanh);
            cmd.Parameters.AddWithValue("machude", cd.machude);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}