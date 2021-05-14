using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class Album
    {
        public int maalbum { get; set; }
        public string tenalbum { get; set; }

        public string  hinhanh { get; set; }
        public Album()
        {

        }
        public Album(string tenalbum,string hinhanh)
        {
            this.tenalbum = tenalbum;
            this.hinhanh = hinhanh;
        }
    }
}