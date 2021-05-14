using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Nhom18.Models;
using System.Data.Sql;
using System.Data.SqlClient;
namespace Nhom18.Controllers
{
    public class CaSiController
    {
        SqlConnection con;
        public CaSiController()
        {
            string sqlCon = @"Data Source=DESKTOP-G0I3496\SQLEXPRESS01;Initial Catalog=Nhaccuatui;Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }
        // code lay ra CaSi trong bang va dua vao List
        public List<CaSi> dsCaSi()
        {
            List<CaSi> ds = new List<CaSi>();
            string sql = "select * from casi";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                CaSi cs = new CaSi();
                cs.macasi = (int)rd["macasi"];
                cs.tencasi = (string)rd["tencasi"];
                cs.namsinh = (int)rd["namsinh"];
                cs.hinhanh = (string)rd["hinhanh"];
                cs.quequan = (string)rd["quequan"];
                cs.motathem = (string)rd["motathem"];
                ds.Add(cs);
            }
            con.Close();
            return ds;
        }
        // thêm ca sĩ
        public void ThemCaSi(CaSi cs)
        {
            con.Open();
            string sql = "insert into casi values(@ht,@namsinh,@anh,@que,@mota)";
            SqlCommand cmd = new SqlCommand(sql, con);

            cmd.Parameters.AddWithValue("ht", cs.tencasi);
            cmd.Parameters.AddWithValue("namsinh", cs.namsinh);
            cmd.Parameters.AddWithValue("anh", cs.hinhanh);
            cmd.Parameters.AddWithValue("que", cs.quequan);
            cmd.Parameters.AddWithValue("mota", cs.motathem);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        // xoá ca sĩ
        public void xoaCS(int macs)
        {
            con.Open();
            string sql = "delete from casi where macasi=@macs";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("macs", macs);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // lấy ra 1 ca sĩ
        public CaSi layra1CS(int macs)
        {
            string sql = "select *from casi where macasi=@macasi";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("macasi", macs);
            SqlDataReader rd = cmd.ExecuteReader();
            CaSi cs = null;
            if (rd.Read())
            {
                cs = new CaSi();
                cs.macasi = (int)rd["macasi"];
                cs.tencasi = (string)rd["tencasi"];
                cs.namsinh = (int)rd["namsinh"];
                cs.hinhanh = (string)rd["hinhanh"];
                cs.quequan = (string)rd["quequan"];
                cs.motathem = (string)rd["motathem"];
            }
            con.Close();
            return cs;
        }
        // cập nhật
        public void capNhatCS(CaSi cs)
        {
            con.Open();
            string sql = "update casi set tencasi=@ten,namsinh=@namsinh,hinhanh=@anh,quequan=@que,motathem=@mota where macasi=@macs";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ten", cs.tencasi);
            cmd.Parameters.AddWithValue("namsinh", cs.namsinh);
            cmd.Parameters.AddWithValue("anh", cs.hinhanh);
            cmd.Parameters.AddWithValue("que", cs.quequan);
            cmd.Parameters.AddWithValue("mota", cs.motathem);
            cmd.Parameters.AddWithValue("macs", cs.macasi);
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}