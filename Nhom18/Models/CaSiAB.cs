using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class CaSiAB
    {
        public int id { get; set; }
        public int macasi { get; set; }
        public int maalbum { get; set; }

        public CaSiAB()
        {

        }

        public CaSiAB(int macasi, int maalbum)
        {
            this.macasi = macasi;
            this.maalbum = maalbum;
        }
    }
}