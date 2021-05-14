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
    public partial class SuaCaSiAB : System.Web.UI.Page
    {
        CaSiABController data = new CaSiABController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CaSiAB csab = (CaSiAB)Session["csab"];
                txtid.Text = csab.id.ToString();
                txtcasi.Text = csab.macasi.ToString();
                txtalbum.Text = csab.maalbum.ToString();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                CaSiAB s = new CaSiAB();
                s.id = int.Parse(txtid.Text);
                s.macasi = int.Parse(txtcasi.Text);
                s.maalbum = int.Parse(txtalbum.Text);
                data.capNhatCSAB(s);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {
                msg.Text = "Cập nhật thất bại" + e2.Message;
            }
        }
    }
}