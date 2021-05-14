using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;
using System.Data;

namespace Nhom18.Controllers
{
    public class PlayListController
    {
        SqlConnection con;
        public PlayListController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra playlist trong bang va dua vao List
        public List<Playlist> dsPlaylist()
        {
            List<Playlist> ds = new List<Playlist>();
            string sql = "select * from Playlist";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                Playlist pl = new Playlist();
                pl.maplaylist = (int)rd["maplaylist"];
                pl.tenplaylist = (string)rd["tenplaylist"];
                pl.nguoitao = (string)rd["nguoitao"];
                pl.hinhanh = (string)rd["hinhanh"];
                pl.matheloai = (int)rd["matheloai"];
                ds.Add(pl);
            }
            con.Close();
            return ds;
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
        // thêm playlist
        public void ThemPlayList(Playlist pl)
        {
            con.Open();
            string sql = "insert into playlist values(@tenplaylist,@anh,@matheloai,@nguoitao)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("tenplaylist", pl.tenplaylist);
            cmd.Parameters.AddWithValue("nguoitao", pl.nguoitao);
            cmd.Parameters.AddWithValue("anh", pl.hinhanh);
            cmd.Parameters.AddWithValue("matheloai", pl.matheloai);

            cmd.ExecuteNonQuery();
            con.Close();
        }
        // xóa playlist
        public void xoaPL(int mapl)
        {
            con.Open();
            string sql = "delete from playlist where maplaylist=@mapl";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maplaylist", mapl);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 playlist
        public Playlist layra1PL(int mapl)
        {
            string sql = "select *from playlist where maplaylist=@maplaylist";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maplaylist", mapl);
            SqlDataReader rd = cmd.ExecuteReader();
            Playlist pl = null;
            if (rd.Read())
            {
                pl = new Playlist();
                pl.maplaylist = (int)rd["maplaylist"];
                pl.tenplaylist = (string)rd["tenplaylist"];
                pl.nguoitao = (string)rd["nguoitao"];
                pl.hinhanh = (string)rd["hinhanh"];
                pl.matheloai = (int)rd["matheloai"];
            }
            con.Close();
            return pl;
        }
        // cập nhật playlist
        public void capNhatPL(Playlist pl)
        {
            con.Open();
            string sql = "update playlist set tenplaylist=@ten,hinhanh=@anh,matheloai=@matl,nguoitao=@nguoi where maplaylist =@maplaylist";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", pl.tenplaylist);
            cmd.Parameters.AddWithValue("nguoi", pl.nguoitao);
            cmd.Parameters.AddWithValue("anh", pl.hinhanh);
            cmd.Parameters.AddWithValue("matl", pl.matheloai);
            cmd.Parameters.AddWithValue("maplaylist", pl.maplaylist);

            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}