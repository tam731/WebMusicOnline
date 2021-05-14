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
    public partial class ThemCaSiBH : System.Web.UI.Page
    {
        CaSiBHController data = new CaSiBHController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                CaSiBH csbh = new CaSiBH();
                csbh.macasi =int.Parse(txtcasi.Text);
                csbh.mabaihat = int.Parse(txtbaihat.Text);
                data.ThemCaSiBH(csbh);
                msg.Text = "Thêm thành công";
            }
            catch (Exception e1)
            {
                msg.Text = "Có lỗi khi thêm" + e1.Message;
            }
        }
    }
}