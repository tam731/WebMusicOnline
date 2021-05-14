using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nhom18.Models
{
    public class Playlist
    {
        public int maplaylist { get; set; }
        public string tenplaylist { get; set; }
        public string hinhanh { get; set; }
        public string nguoitao { get; set; }
        public int matheloai { get; set; }

        public Playlist()
        {

        }

        public Playlist(string tenplaylist, string hinhanh,string nguoitao,int matheloai)
        {
            this.tenplaylist = tenplaylist;
            this.hinhanh = hinhanh;
            this.nguoitao = nguoitao;
            this.matheloai = matheloai;
        }
    }
}