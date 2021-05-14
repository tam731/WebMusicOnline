using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;

namespace Nhom18.Controllers
{
    public class CaSiABController
    {
        SqlConnection con;
        public CaSiABController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra CaSiAB trong bang va dua vao List
        public List<CaSiAB> dsCaSiAB()
        {
            List<CaSiAB> ds = new List<CaSiAB>();
            string sql = "select * from casi_album";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                CaSiAB csab = new CaSiAB();
                csab.id = (int)rd["id"];
                csab.macasi = (int)rd["macasi"];
                csab.maalbum = (int)rd["maalbum"];
                ds.Add(csab);
            }
            con.Close();
            return ds;
        }
        // thêm ca sĩ ab
        public void ThemCaSiAB(CaSiAB csab)
        {
            con.Open();
            string sql = "insert into casi_album values(@macs,@maab)";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("macs", csab.macasi);
            cmd.Parameters.AddWithValue("maab", csab.maalbum);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        // xoá ca sĩ ab
        public void xoaCSAB(int id)
        {
            con.Open();
            string sql = "delete from casi_album where id=@id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 ca sĩ ab
        public CaSiAB layra1CSAB(int id)
        {
            string sql = "select *from casi_album where id=@id";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader rd = cmd.ExecuteReader();
            CaSiAB csab = null;
            if (rd.Read())
            {
                csab = new CaSiAB();
                csab.id = (int)rd["id"];
                csab.macasi = (int)rd["macasi"];
                csab.maalbum = (int)rd["maalbum"];
            }
            con.Close();
            return csab;
        }
        // cập nhật
        public void capNhatCSAB(CaSiAB csab)
        {
            con.Open();
            string sql = "update casi_album set macasi=@macs,maalbum=@maab where id=@id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("macs", csab.macasi);
            cmd.Parameters.AddWithValue("maab", csab.maalbum);
            cmd.Parameters.AddWithValue("id", csab.id);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}