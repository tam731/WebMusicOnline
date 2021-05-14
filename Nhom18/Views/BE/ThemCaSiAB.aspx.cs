using Nhom18.Controllers;
using Nhom18.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom18.Views.BE
{
    public partial class ThemCaSiAB : System.Web.UI.Page
    {
        CaSiABController data = new CaSiABController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                CaSiAB csab = new CaSiAB();
                csab.macasi = int.Parse(txtcasi.Text);
                csab.maalbum = int.Parse(txtalbum.Text);
                data.ThemCaSiAB(csab);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm" + e1.Message;
            }
        }
    }
}