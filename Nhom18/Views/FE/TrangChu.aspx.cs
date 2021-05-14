using Nhom18.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

namespace Nhom18.Views.FE
{
    public partial class TrangChu : System.Web.UI.Page
    {
       
        TheLoaiController tl = new TheLoaiController();
        ChuDeController cd = new ChuDeController();
        BaiHatController bh = new BaiHatController();
        AlbumController ab = new AlbumController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                datalisttheloai.DataSource = tl.dsTheLoai();
                datalistchude.DataSource = cd.dsChuDe1();
                datalistalbum.DataSource = ab.dsAlbum1();
                datalistbaihat.DataSource = bh.dsBaiHat();
             
                DataBind();
            }

        }
    }
}