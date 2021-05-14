using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class ChuDe
    {
        public int machude { get; set; }
        public string tenchude { get; set; }
        public string motathem { get; set; }
        public string hinhanh { get; set; }

        public ChuDe()
        {

        }
        public ChuDe(string tenchude, string motathem, string hinhanh)
        {
            this.tenchude = tenchude;
            this.motathem = motathem;
            this.hinhanh = hinhanh;
        }
    }
}