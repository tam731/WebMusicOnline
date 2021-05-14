using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class CaSi
    {
        public int macasi { get; set; }
        public string tencasi { get; set; }
        public int namsinh { get; set; }
        public string motathem { get; set; }
        public string quequan { get; set; }
        public string hinhanh { get; set; }

        public CaSi()
        {

        }

        public CaSi(string tencasi, int namsinh, string motathem, string quequan, string hinhanh)
        {
            this.tencasi = tencasi;
            this.namsinh = namsinh;
            this.motathem = motathem;
            this.quequan = quequan;
            this.hinhanh = hinhanh;
        }
    }
}