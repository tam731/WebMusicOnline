using Nhom18.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom18.Views.FE
{
    public partial class BaiHat : System.Web.UI.Page
    {
        BaiHatController bh = new BaiHatController();
        protected void Page_Load(object sender, EventArgs e)
        {
            dalistbaihat.DataSource = bh.dsBaiHat();
            DataBind();
            
        }
    }
}