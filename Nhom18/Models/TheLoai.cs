using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class TheLoai
    {
        public int matheloai { get; set; }
        public string tentheloai { get; set; }
        public string hinhanh { get; set; }

        public TheLoai()
        {

        }
        public TheLoai(string tentheloai,string hinhanh)
        {
            this.tentheloai = tentheloai;
            this.hinhanh = hinhanh;

        }
    }
}