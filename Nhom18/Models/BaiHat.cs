using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class BaiHat
    {
        public int mabaihat { get; set; }
        public string tenbaihat { get; set; }
        public string tacgia { get; set; }
        public string hinhanh { get; set; }
        public string loibaihat { get; set; }
        public int matheloai { get; set; }
        public int machude { get; set; }
        public int maalbum { get; set; }
        public string linkbaihat { get; set; }
        public BaiHat()
        {

        }

        public BaiHat(string tenbaihat,string hinhanh,string loibaihat,string tacgia,int matheloai,int maalbum,int machude,string linkbaihat)
        {
            this.tenbaihat = tenbaihat;
            this.hinhanh = hinhanh;
            this.loibaihat = loibaihat;
            this.tacgia = tacgia;
            this.maalbum = maalbum;
            this.matheloai = matheloai;
            this.machude = machude;
            this.linkbaihat = linkbaihat;
        }

    }
}