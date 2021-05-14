using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class PlaylistBH
    {
        public int id { get; set; }
        public int maplaylist { get; set; }
        public int mabaihat { get; set; }

        public PlaylistBH()
        {

        }

        public PlaylistBH(int maplaylist,int mabaihat)
        {
            this.mabaihat = mabaihat;
            this.maplaylist = maplaylist;
        }

    }
}