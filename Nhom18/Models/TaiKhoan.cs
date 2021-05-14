using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class TaiKhoan
    {
        public int id { get; set; }
        public string tendangnhap { get; set; }
        public string matkhau { get; set; }

        public TaiKhoan()
        {

        }

        public TaiKhoan(string tendangnhap,string matkhau)
        {
            this.tendangnhap = tendangnhap;
            this.matkhau = matkhau;
        }
    }
}