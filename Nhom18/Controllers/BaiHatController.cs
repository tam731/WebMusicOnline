using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;

namespace Nhom18.Controllers
{
    public class BaiHatController
    {
        SqlConnection con;
        public BaiHatController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra BaiHat trong bang va dua vao List
        public List<BaiHat> dsBaiHat()
        {
            List<BaiHat> ds = new List<BaiHat>();
            string sql = "select * from BaiHat";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                BaiHat bh = new BaiHat();
                bh.mabaihat = (int)rd["mabaihat"];
                bh.tenbaihat = (string)rd["tenbaihat"];
                bh.hinhanh = (string)rd["hinhanh"];
                bh.loibaihat = (string)rd["loibaihat"];
                bh.tacgia = (string)rd["tacgia"];
                bh.matheloai = (int)rd["matheloai"];
                bh.maalbum = (int)rd["maalbum"];
                bh.machude = (int)rd["machude"];
                bh.linkbaihat = (string)rd["linkbaihat"];
                ds.Add(bh);
            }
            con.Close();
            return ds;
        }
      
        // thêm bài hát
        public void ThemBaiHat(BaiHat bh)
        {
            con.Open();
            string sql = "insert into baihat values(@tenbh,@anh,@loibh,@tacgia,@matl,@maalbum,@machude,@linkbh)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tenbh", bh.tenbaihat);
            cmd.Parameters.AddWithValue("anh", bh.hinhanh);
            cmd.Parameters.AddWithValue("loibh", bh.loibaihat);
            cmd.Parameters.AddWithValue("tacgia", bh.tacgia);
            cmd.Parameters.AddWithValue("matl", bh.matheloai);
            cmd.Parameters.AddWithValue("maalbum", bh.maalbum);
            cmd.Parameters.AddWithValue("machude", bh.machude);
            cmd.Parameters.AddWithValue("linkbh", bh.linkbaihat);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        // xóa bài hát
        public void xoaBH(int mabh)
        {
            con.Open();
            string sql = "delete from baihat where mabaihat=@mabh";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("mabh", mabh);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // lấy ra 1 bài hát
        public BaiHat layra1BH(int mabh)
        {
            string sql = "select *from baihat where mabaihat=@mabaihat";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("mabaihat", mabh);
            SqlDataReader rd = cmd.ExecuteReader();
            BaiHat bh = null;
            if (rd.Read())
            {
                bh = new BaiHat();
                bh.mabaihat = (int)rd["mabaihat"];
                bh.tenbaihat = (string)rd["tenbaihat"];
                bh.hinhanh = (string)rd["hinhanh"];
                bh.loibaihat = (string)rd["loibaihat"];
                bh.tacgia = (string)rd["tacgia"];
                bh.matheloai = (int)rd["matheloai"];
                bh.maalbum = (int)rd["maalbum"];
                bh.machude = (int)rd["machude"];
                bh.linkbaihat = (string)rd["linkbaihat"];

            }
            con.Close();
            return bh;
        }
        public void capNhatBH(BaiHat bh)
        {
            con.Open();
            string sql = "update baihat set tenbaihat=@ten,hinhanh=@anh,loibaihat=@loibh,tacgia=@tg,matheloai=@matl,maalbum=@maalbum,machude=@macd, linkbaihat=@linkbh where mabaihat =@mabaihat";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", bh.tenbaihat);
            cmd.Parameters.AddWithValue("anh", bh.hinhanh);
            cmd.Parameters.AddWithValue("loibh", bh.loibaihat);
            cmd.Parameters.AddWithValue("tg", bh.tacgia);
            cmd.Parameters.AddWithValue("matl", bh.matheloai);
            cmd.Parameters.AddWithValue("maalbum", bh.maalbum);
            cmd.Parameters.AddWithValue("macd", bh.machude);
            cmd.Parameters.AddWithValue("linkbh", bh.linkbaihat);
            cmd.Parameters.AddWithValue("mabaihat", bh.mabaihat);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}