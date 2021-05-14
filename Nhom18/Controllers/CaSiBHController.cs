using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using Nhom18.Models;

namespace Nhom18.Controllers
{
    public class CaSiBHController
    {
        SqlConnection con;
        public CaSiBHController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra CaSiBH trong bang va dua vao List
        public List<CaSiBH> dsCaSiBH()
        {
            List<CaSiBH> ds = new List<CaSiBH>();
            string sql = "select * from casi_baihat";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                CaSiBH csbh = new CaSiBH();
                csbh.id = (int)rd["id"];
                csbh.macasi = (int)rd["macasi"];
                csbh.mabaihat = (int)rd["mabaihat"];
                ds.Add(csbh);
            }
            con.Close();
            return ds;
        }

        // thêm ca sĩ bh
        public void ThemCaSiBH(CaSiBH csbh)
        {
            con.Open();
            string sql = "insert into casi_baihat values(@macs,@mabh)";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("macs", csbh.macasi);
            cmd.Parameters.AddWithValue("mabh", csbh.mabaihat);
            
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // xoá ca sĩ bh
        public void xoaCSBH(int id)
        {
            con.Open();
            string sql = "delete from casi_baihat where id=@id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", id);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 ca sĩ bh
        public CaSiBH layra1CSBH(int id)
        {
            string sql = "select *from casi_baihat where id=@id";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("id", id);
            SqlDataReader rd = cmd.ExecuteReader();
            CaSiBH csbh = null;
            if (rd.Read())
            {
                csbh = new CaSiBH();
                csbh.id = (int)rd["id"];
                csbh.macasi = (int)rd["macasi"];
                csbh.mabaihat = (int)rd["mabaihat"];                             
            }
            con.Close();
            return csbh;
        }
        // cập nhật
        public void capNhatCSBH(CaSiBH csbh)
        {
            con.Open();
            string sql = "update casi_baihat set macasi=@macs,mabaihat=@mabh where id=@id";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("macs", csbh.macasi);
            cmd.Parameters.AddWithValue("mabh", csbh.mabaihat);
            cmd.Parameters.AddWithValue("id", csbh.id);
           
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}