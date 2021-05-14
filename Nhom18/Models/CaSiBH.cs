using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class CaSiBH
    {
        public int id { get; set; }
        public int mabaihat { get; set; }
        public int macasi { get; set; }

        public CaSiBH()
        {

        }

        public CaSiBH(int mabaihat,int macasi)
        {
            this.mabaihat = mabaihat;
            this.macasi = macasi;
        }
    }
}