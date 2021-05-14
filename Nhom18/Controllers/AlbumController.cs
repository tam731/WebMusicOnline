using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;

namespace Nhom18.Controllers
{
    public class AlbumController
    {
        SqlConnection con;
        public AlbumController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra Album trong bang va dua vao List
        public List<Album> dsAlbum()
        {
            List<Album> ds = new List<Album>();
            string sql = "select * from album";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Album ab = new Album();
                ab.maalbum = (int)rd["maalbum"];
                ab.tenalbum = (string)rd["tenalbum"];
                ab.hinhanh = (string)rd["hinhanh"];
                ds.Add(ab);
            }
            con.Close();
            return ds;
        }

        public List<Album> dsAlbum1()
        {
            List<Album> ds = new List<Album>();
            string sql = "select top (6) * from album";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Album ab = new Album();
                ab.maalbum = (int)rd["maalbum"];
                ab.tenalbum = (string)rd["tenalbum"];
                ab.hinhanh = (string)rd["hinhanh"];
                ds.Add(ab);
            }
            con.Close();
            return ds;
        }
        // thêm album
        public void ThemAlbum(Album ab)
        {
            con.Open();
            string sql = "insert into album values(@tenab,@anh)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tenab", ab.tenalbum);
            cmd.Parameters.AddWithValue("anh", ab.hinhanh);

            cmd.ExecuteNonQuery();
            con.Close();
        }
        // xóa album
        public void xoaAlbum(int maab)
        {
            con.Open();
            string sql = "delete from album where maalbum=@maalbum";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maalbum", maab);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 album
        public Album layra1AB(int maalbum)
        {
            string sql = "select *from album where maalbum=@maab";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maab", maalbum);
            SqlDataReader rd = cmd.ExecuteReader();
            Album ab = null;
            if (rd.Read())
            {
                ab = new Album();
                ab.maalbum = (int)rd["maalbum"];
                ab.tenalbum = (string)rd["tenalbum"];
                ab.hinhanh = (string)rd["hinhanh"];

            }
            con.Close();
            return ab;
        }
        // cập nhật
        public void capNhatAB(Album ab)
        {
            con.Open();
            string sql = "update album set tenalbum=@ten,hinhanh=@anh where maalbum =@maab";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", ab.tenalbum);
            cmd.Parameters.AddWithValue("anh", ab.hinhanh);
            cmd.Parameters.AddWithValue("maab", ab.maalbum);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}