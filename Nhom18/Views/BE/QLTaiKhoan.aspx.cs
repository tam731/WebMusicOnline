using Nhom18.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom18.Views.BE
{
    public partial class QLTaiKhoan : System.Web.UI.Page
    {
        TaiKhoanController data = new TaiKhoanController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView2.DataSource = data.dsTaiKhoan();
                DataBind();
            }
        }
    }
}