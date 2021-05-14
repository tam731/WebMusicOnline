using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;

namespace Nhom18.Controllers
{
    public class PlayListBHController
    {
        SqlConnection con;
        public PlayListBHController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra CaSiBH trong bang va dua vao List
        public List<PlaylistBH> dsPlaylistBH()
        {
            List<PlaylistBH> ds = new List<PlaylistBH>();
            string sql = "select * from playlist_baihat";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                PlaylistBH plbh = new PlaylistBH();
                plbh.id = (int)rd["id"];
                plbh.maplaylist = (int)rd["maplaylist"];
                plbh.mabaihat = (int)rd["mabaihat"];
                ds.Add(plbh);
            }
            con.Close();
            return ds;
        }

        // thêm ca sĩ bh
        public void ThemPlaylistBH(PlaylistBH plbh)
        {
            con.Open();
            string sql = "insert into playlist_baihat values(@mapl,@mabh)";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("mapl", plbh.maplaylist);
            cmd.Parameters.AddWithValue("mabh", plbh.mabaihat);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        // xoá ca sĩ bh
        public void xoaPLBH(int id)
        {
            con.Open();
            string sql = "delete from playlist_baihat where id=@id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 ca sĩ bh
        public PlaylistBH layra1PLBH(int id)
        {
            string sql = "select *from playlist_baihat where id=@id";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader rd = cmd.ExecuteReader();
            PlaylistBH plbh = null;
            if (rd.Read())
            {
                plbh = new PlaylistBH();
                plbh.id = (int)rd["id"];
                plbh.maplaylist = (int)rd["maplaylist"];
                plbh.mabaihat = (int)rd["mabaihat"];
            }
            con.Close();
            return plbh;
        }
        // cập nhật
        public void capNhatPLBH(PlaylistBH plbh)
        {
            con.Open();
            string sql = "update playlist_baihat set maplaylist=@mapl,mabaihat=@mabh where id=@id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("mapl", plbh.maplaylist);
            cmd.Parameters.AddWithValue("mabh", plbh.mabaihat);
            cmd.Parameters.AddWithValue("id", plbh.id);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}