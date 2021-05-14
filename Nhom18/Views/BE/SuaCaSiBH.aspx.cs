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
    public partial class SuaCaSiBH : System.Web.UI.Page
    {
        CaSiBHController data = new CaSiBHController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CaSiBH csab = (CaSiBH)Session["csbh"];
                txtid.Text = csab.id.ToString();
                txtcasi.Text = csab.macasi.ToString();
                txtbaihat.Text = csab.mabaihat.ToString();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                CaSiBH s = new CaSiBH();
                s.id = int.Parse(txtid.Text);
                s.macasi = int.Parse(txtcasi.Text);
                s.mabaihat= int.Parse(txtbaihat.Text);
                data.capNhatCSBH(s);
                msg.Text = "Cập nhật thành công";
            }
            catch (Exception e2)
            {
                msg.Text = "Cập nhật thất bại" + e2.Message;
            }
        }
    }
}