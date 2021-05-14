using Nhom18.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom18.Views.FE
{
    public partial class CaSi : System.Web.UI.Page
    {
        CaSiController data = new CaSiController();
        protected void Page_Load(object sender, EventArgs e)
        {
            datalistcasi.DataSource = data.dsCaSi();
            datalistcasi.DataBind();
        }

        protected void rptPaging_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}